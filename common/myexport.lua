-- Organizer library v2 modified by yyoshisaur
-- gearswapから使用されていないワードローブ内のアイテムを探す(対象はsetsに記述しているアイテム)
-- ユーザースクリプトに include(myexport) を追加
-- gearswapを使用しているジョブにジョブチェンジして、//gs myexportを実行する
-- playername_jobname.luaがexport/myexportフォルダに生成される
-- すべてのジョブでplayername_jobname.luaを生成したのち、//gs myexport checkを実行する
-- playername_results.csvとplayername_lonely.csvが生成される
-- playername_results.csvはワードローブ内のジョブでの使用状況
-- playername_lonely.csvはどのユーザースクリプトからも参照されているアイテム一覧

local myexp = {}
register_unhandled_command(function(...)
    local cmds = {...}
    if S{'myexport','myexp'}:contains(cmds[1]:lower()) then
        if cmds[2] and S{'check'}:contains(cmds[2]:lower()) then
            myexp.check()
            return true
        else
            myexp.export_set()
            return true
        end
    end
    return false
end)

function myexp.check()
    windower.add_to_chat(123,'myexport: check')
    local path = windower.addon_path..'data/export/myexport/'..player.name
    local ward_names = {[1]='wardrobe', [2]='wardrobe2', [3]='wardrobe3', [4]='wardrobe4', [5]='wardrobe5', [6]='wardrobe6', [7]='wardrobe7', [8]='wardrobe8'}
    local ward = {}
    local job_sets = {}

    if windower.file_exists(path..'_ward_all.lua') then
        ward = require('export/myexport/'..player.name..'_ward_all')
        -- print(ward.wardrobe[1].id)
    else
        print('not found')
        return
    end
    
    local jobs = {}
    local index = 1
    for i, v in ipairs(gearswap.res.jobs) do
        if windower.file_exists(path..'_'..v.ens..'.lua') then
            jobs[index] = v.ens
            job_sets[v.ens] = require('export/myexport/'..player.name..'_'..v.ens)
            index = index + 1
        end
    end

    for ward_name, w in pairs(ward) do -- ワードローブ1-8
        for ward_index, v in ipairs(w) do -- ワードローブ内のアイテム1-80
            for job_name, n in pairs(job_sets) do -- ジョブの使用アイテムリスト
                for _, i in ipairs(n[ward_name]) do
                    if v.id == i.id then
                        if v.augments and i.augments and gearswap.extdata.compare_augments(i.augments, v.augments) then
                            ward[ward_name][ward_index][job_name] = true
                        elseif not i.augments then
                            ward[ward_name][ward_index][job_name] = true
                        end
                    end
                end
            end    
        end
    end

    local f_results = io.open(path..'_results.csv','w+')
    local f_lonely = io.open(path..'_lonely.csv', 'w+')
    for _,ward_name in ipairs(ward_names) do
        f_results:write(ward_name..',\n')
        f_lonely:write(ward_name..',\n')
        for index, i in ipairs(ward[ward_name]) do
            if i.id ~= 0 then 
                f_results:write(index..','..i.name..',')
                if i.augments then
                    for n, aug in ipairs(i.augments) do
                        if aug ~= 'none' then
                            f_results:write('['..n..']'..'='..aug)
                        end
                    end
                end
                f_results:write(',')

                local used=0
                for _, j in ipairs(jobs) do
                    if i[j] then
                        used = used + 1
                        f_results:write(j..',')
                    else
                        f_results:write(',')
                    end
                end
                f_results:write(used..',')
                
                if used == 0 then
                    f_lonely:write(index..','..i.name..',')
                    if i.augments then
                        for n, aug in ipairs(i.augments) do
                            if aug ~= 'none' then
                                f_lonely:write('['..n..']'..'='..aug)
                            end
                        end
                        f_lonely:write(',')
                    end
                    f_lonely:write('\n')
                end
                f_results:write('\n')
            end
        end
    end
    f_results:close()
    f_lonely:close()
end

function myexp.export_set()
    windower.add_to_chat(123,'myexport: export '..windower.ffxi.get_player().main_job..' sets')
    -- Makes a big table keyed to item resource tables, with values that are 1-based
    -- numerically indexed tables of different entries for each of the items from the sets table.
    local item_list = myexp.unpack_names({},'L1',sets,{})
    
    local trans_item_list = myexp.identify_items(item_list)
    
    for i,v in pairs(trans_item_list) do
        trans_item_list[i] = myexp.simplify_entry(v)
    end

    if trans_item_list:length() == 0 then
        windower.add_to_chat(123,'myexport: Your sets table is empty.')
        return
    end
    
    local flattab = T{}
    for name,tab in pairs(trans_item_list) do
        for _,info in ipairs(tab) do
            flattab:append({id=tab.id,name=tab.name,log_name=tab.log_name,augments=info.augments,count=info.count})
        end
    end

    -- -- See if we have any non-equipment items to drag along
    -- if organizer_items then
    --     local organizer_item_list = org.unpack_names({}, 'L1', organizer_items, {})

    --     for _,tab in pairs(org.identify_items(organizer_item_list)) do
    --         count = gearswap.res.items[tab.id].stack
    --         flattab:append({id=tab.id,name=tab.name,log_name=tab.log_name,count=count})
    --     end
    -- end
    
    -- At this point I have a table of equipment pieces indexed by the inventory name.
    -- I need to make a function that will translate that into a list of pieces in
    -- inventory or wardrobe.
    -- #trans_item_list[i] = Number of a given item
    -- trans_item_list[i].id = item ID
    
    local ward_ids = {8,10,11,12,13,14,15,16}
    local wardrobes = {}
    local ward = {}
    local ward_all_item = {}
    
    for _,id in pairs(ward_ids) do
        wardrobes[id] = windower.ffxi.get_items(id)
        wardrobes[id].max = windower.ffxi.get_bag_info(id).max
        ward[id] = T{}
        ward_all_item[id] = T{}
    end
    
    for id,wardrobe in pairs(wardrobes) do
        for n,m in ipairs(wardrobe) do
            -- if m.id == v.id and (not v.augments or v.augments and gearswap.extdata.decode(m).augments and gearswap.extdata.compare_augments(v.augments,gearswap.extdata.decode(m).augments)) then
            if m.id ~= 0 then
                ward_all_item[id]:append({
                    name=gearswap.res.items[m.id][gearswap.language]:lower(),
                    log_name=gearswap.res.items[m.id][gearswap.language..'_log']:lower(),
                    id=m.id,
                    augments=gearswap.extdata.decode(m).augments,
                    count=m.count,
                })
            else
                ward_all_item[id]:append({id=m.id})
            end
        end
    end

    local inv = T{}
    for i,v in ipairs(flattab) do
        local found
        local ward_id
        -- Iterate over the wardrobes and look for gear from the list that is already in wardrobes, then eliminate it from the list
        for id,wardrobe in pairs(wardrobes) do
            for n,m in ipairs(wardrobe) do
                if m.id == v.id and (not v.augments or v.augments and gearswap.extdata.decode(m).augments and gearswap.extdata.compare_augments(v.augments,gearswap.extdata.decode(m).augments)) then
                    found = n
                    break
                end
            end
            if found then
                ward_id = id
                break
            end
        end
        if found then
            table.remove(wardrobes[ward_id],found)
            ward[ward_id]:append(v)
        else
            inv:append(v)
        end
    end

    local inventory_max = windower.ffxi.get_bag_info(0).max
    
    for id=1,4 do
        if #inv > inventory_max and #ward[id] + (#inv-inventory_max) < wardrobes[id].max then
            local available = wardrobes[id].max - #ward[id]
            local length = math.min(#inv-80,available)
            ward:extend(inv:slice(1-length))
        end
    end
    
    if #inv > inventory_max then
        windower.add_to_chat(123,'myexport: Your sets table contains too many items.')
        return
    end
    
    -- Scan wardrobe, eliminate items from your table that are in wardrobe
    -- Scan inventory
    
    if not windower.dir_exists(windower.addon_path..'data/export/myexport') then
        windower.create_dir(windower.addon_path..'data/export/myexport')
    end
    
    local path = windower.addon_path..'data/export/myexport/'..player.name
    job_sets_path = path..'_'..windower.ffxi.get_player().main_job
    ward_all_path = path..'_ward_all'


    -- local fi = file.new('../organizer/data/inventory/organizer-lib-file.lua')
    -- fi:write('-- Generated by the Organizer Library ('..os.date()..')\nreturn '..(inv:tovstring({'augments','log_name','name','id','count'})))
    local f_ward_all = io.open(ward_all_path..'.lua','w+')
    f_ward_all:write('-- Generated by myexoprt ('..os.date()..')\n')
    f_ward_all:write('return {\n')
    for _,id in ipairs(ward_ids) do
        f_ward_all:write(gearswap.res.bags[id].command..' = '..(ward_all_item[id]:tovstring({'augments','log_name','name','id','count'}))..',\n')
    end
    f_ward_all:write('}\n')
    f_ward_all:close()

    local f_job = io.open(job_sets_path..'.lua','w+')
    f_job:write('-- Generated by myexoprt ('..os.date()..')\n')
    f_job:write('return {\n')
    for _,id in ipairs(ward_ids) do
        -- local fw = file.new('../organizer/data/'..gearswap.res.bags[id].command..'/organizer-lib-file.lua')
        f_job:write(gearswap.res.bags[id].command..' = '..(ward[id]:tovstring({'augments','log_name','name','id','count'}))..',\n')
    end
    f_job:write('}\n')
    f_job:close()
    -- windower.send_command('wait 0.5;org o organizer-lib-file')
end

function myexp.simplify_entry(tab)
    -- Some degree of this needs to be done in unpack_names or I won't be able to detect when two identical augmented items are equipped.
    local output = T{id=tab.id,name=tab.name,log_name=tab.log_name}
    local rare = gearswap.res.items[tab.id].flags:contains('Rare')
    for i,v in ipairs(tab) do
        local handled = false
        if v.augment then
            v.augments = {v.augment}
            v.augment = nil
        end
        
        for n,m in ipairs(output) do
            if (not v.bag or v.bag and v.bag == m.bag) and v.slot == m.slot and
                (not v.augments or ( m.augments and gearswap.extdata.compare_augments(v.augments,m.augments))) then
                output[n].count = math.min(math.max(output[n].count,v.count),gearswap.res.items[tab.id].stack)
                handled = true
                break
            elseif (not v.bag or v.bag and v.bag == m.bag) and v.slot == m.slot and v.augments and not m.augments then
                -- v has augments, but there currently exists a matching version of the
                -- item without augments in the output table. Replace the entry with the augmented entry
                local countmax = math.min(math.max(output[n].count,v.count),gearswap.res.items[tab.id].stack)
                output[n] = v
                output[n].count = countmax
                handled = true
                break
            elseif rare then
                handled = true
                break
            end
        end
        if not handled then
            output:append(v)
        end
        
    end
    return output
end

function myexp.identify_items(tab)
    local name_to_id_map = {}
    local items = windower.ffxi.get_items()
    for id,inv in pairs(items) do
        if type(inv) == 'table' then
            for ind,item in ipairs(inv) do
                if type(item) == 'table' and item.id and item.id ~= 0 then
                    name_to_id_map[gearswap.res.items[item.id][gearswap.language]:lower()] = item.id
                    name_to_id_map[gearswap.res.items[item.id][gearswap.language..'_log']:lower()] = item.id
                end
            end
        end
    end
    local trans = T{}
    for i,v in pairs(tab) do
        local item = name_to_id_map[i:lower()] and table.reassign({},gearswap.res.items[name_to_id_map[i:lower()]]) --and org.identify_unpacked_name(i,name_to_id_map)
        if item then
            local n = gearswap.res.items[item.id][gearswap.language]:lower()
            local ln = gearswap.res.items[item.id][gearswap.language..'_log']:lower()
            if not trans[n] then
                trans[n] = T{id=item.id,
                    name=n,
                    log_name=ln,
                    }
            end
            trans[n]:extend(v)
        end
    end
    return trans
end

function myexp.unpack_names(ret_tab,up,tab_level,unpacked_table)
    for i,v in pairs(tab_level) do
        local flag = false
        if type(v)=='table' and i ~= 'augments' and not ret_tab[tostring(tab_level[i])] then
            ret_tab[tostring(tab_level[i])] = true
            unpacked_table, ret_tab = myexp.unpack_names(ret_tab,i,v,unpacked_table)
        elseif i=='name' then
            -- v is supposed to be a name, then.
            flag = true
        elseif type(v) == 'string' and v~='augment' and v~= 'augments' and v~= 'priority' then
            -- v is a string that's not any known option of gearswap, so treat it as an item name.
            -- I really need to make a set of the known advanced table options and use that instead.
            flag = true
        end
        if flag then
            local n = tostring(v):lower()
            if not unpacked_table[n] then unpacked_table[n] = {} end
            local ind = #unpacked_table[n] + 1
            if i == 'name' and gearswap.slot_map[tostring(up):lower()] then -- Advanced Table
                unpacked_table[n][ind] = tab_level
                unpacked_table[n][ind].count = unpacked_table[n][ind].count or 1
                unpacked_table[n][ind].slot = gearswap.slot_map[up:lower()]
            elseif gearswap.slot_map[tostring(i):lower()] then
                unpacked_table[n][ind] = {slot=gearswap.slot_map[i:lower()],count=1}
            end
        end
    end
    return unpacked_table, ret_tab
end

function myexp.string_augments(tab)
    local aug_str = ''
    if tab.augments then
        for aug_ind,augment in pairs(tab.augments) do
            if augment ~= 'none' then aug_str = aug_str..'['..aug_ind..'] = '..'"'..augment..'",\n' end
        end
    end
    if tab.augment then
        if tab.augment ~= 'none' then aug_str = aug_str.."'"..augment.."'," end
    end
    if aug_str ~= '' then return '{\n'..aug_str..'}' end
end
