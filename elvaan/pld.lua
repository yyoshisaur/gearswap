function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_melee = false
    is_sird = false

    sets.enmity = {
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body={ name="ＳＶキュイラス+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=171,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ＳＶディヒリン+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=162,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227,},
        neck="月明の首飾り",
        waist={ name="クリードボードリエ", hp=40,},
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="アイワツリング", hp=70,},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80,},
    }

    sets.precast.fc = {
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}, hp=38,},
        body={ name="ＲＶサーコート+3", hp=254,},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, hp=95,},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Damage taken-5%',}, hp=80,},
    }

    sets.precast.ws.multi = {
    }

    sets.precast.ws.wsd = {
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body={ name="ＳＶキュイラス+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=171,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ＳＶディヒリン+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=162,},
        feet={ name="スレビアレギンス+2", hp=20,},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110,},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80,},
    }

    sets.precast.ws['ロイエ'] = sets.precast.ws.wsd

    sets.precast.ability['ランパート'] = set_combine(sets.enmity, {head={ name="ＣＢコロネット+3", augments={'Enhances "Iron Will" effect',}, hp=96,},})
    sets.precast.ability['ホーリーサークル'] = set_combine(sets.enmity, {feet={ name="ＲＶレギンス+1", hp=48,}})
    sets.precast.ability['フィールティ'] = set_combine(sets.enmity, {body={ name="ＣＢサーコート+3", augments={'Enhances "Fealty" effect',}, hp=118,},})
    sets.precast.ability['シバルリー'] = set_combine(sets.enmity, {hands={ name="ＣＢガントレ+3", augments={'Enhances "Chivalry" effect',}, hp=124,},})
    sets.precast.ability['インビンシブル'] = set_combine(sets.enmity, {legs={ name="ＣＢブリーチズ+3", augments={'Enhances "Invincible" effect',}, hp=72,},})
    sets.precast.ability['センチネル'] = set_combine(sets.enmity, {feet={ name="ＣＢレギンス+3", augments={'Enhances "Guardian" effect',}, hp=63,},})
    sets.precast.ability['シールドバッシュ'] = set_combine(sets.enmity, {hands={ name="ＣＢガントレ+3", augments={'Enhances "Chivalry" effect',}, hp=124,},})
    sets.precast.ability['パリセード'] = sets.enmity
    sets.precast.ability['神聖の印'] = sets.enmity
    sets.precast.ability['マジェスティ'] = sets.enmity

    sets.midcast.sird = {
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body={ name="ＳＶキュイラス+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=171,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ファウンダホーズ", augments={'MND+5','Mag. Acc.+2','Breath dmg. taken -2%',}, hp=54,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227},
        neck="月光の首飾り",
        waist="オドンブラサッシュ",
        left_ear="ナイトリーピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110,},
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast.phalanx = {
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        back={ name="ウェルドマント", augments={'VIT+4','DEX+2','Phalanx +5',}, hp=40,},
    }

    sets.midcast.cure = {
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body={ name="ＳＶキュイラス+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=171,},
        hands={ name="マカブルガントレ+1", hp=49,},
        legs={ name="ＳＶディヒリン+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=162,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227},
        neck={ name="サクロゴルゲット", hp=50,},
        waist={ name="クリードボードリエ", hp=40,},
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110,},
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast.protect_shell = {
        left_ear="ブラキュラピアス",
        back={ name="月光の羽衣", hp=275,},
    }

    sets.aftercast.idle = {
        main="ブルトガング",
        ammo="ストンチタスラム+1",
        head={ name="フロプトヘルム", hp=114,},
        body={ name="フロプトブレスト", hp=228,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ＳＶディヒリン+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=162,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227,},
        neck="クリードカラー",
        waist={ name="クリードボードリエ", hp=40,},
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110,},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80,},
    }

    sets.aftercast.melee = {
        ammo="ストンチタスラム+1",
        head={ name="ＣＢコロネット+3", augments={'Enhances "Iron Will" effect',}, hp=116,},
        body={ name="ＣＢサーコート+3", augments={'Enhances "Fealty" effect',}, hp=138,},
        hands={ name="ＣＢガントレ+3", augments={'Enhances "Chivalry" effect',}, hp=124,},
        legs={ name="ＣＢブリーチズ+3", augments={'Enhances "Invincible" effect',}, hp=72,},
        feet={ name="ＣＢレギンス+3", augments={'Enhances "Guardian" effect',}, hp=63,},
        neck="クリードカラー",
        waist="霊亀腰帯",
        left_ear={ name="エアバニピアス", hp=45,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110,},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80,},
    }

    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 10; wait 0.5; input /macro set 1; wait 0.5; input /si pld;')
end

function precast(spell)
    local set_equip = nil

    if string.find(spell.type, 'Magic') then
        set_equip = sets.precast.fc
    elseif spell.type == 'JobAbility' or spell.type == 'Ward' or spell.type == 'Effusion' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.wsd
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif spell.type == 'SummonerPact' then
        set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

local delay_rate = 0.85
local delay_rate_blu = 0.9
local aftercast_delay = 1.5
local function get_cast_time(spell)
    if not spell.cast_time then
        return 0
    end 
    local equip_fc = 0.42
    local cast_time = spell.cast_time*(1-equip_fc)

    -- local sird_wait = cast_time * delay_rate
    -- local aftercast_wait = cast_time * (1-delay_rate) + aftercast_delay
    -- windower.add_to_chat(122, spell.name..'('..spell.cast_time..') ct='..cast_time..' sw='..sird_wait..' aw='..aftercast_wait..' d='..(cast_time-sird_wait))

    return cast_time
end

function midcast(spell)
    local set_equip = nil

    if spell.skill == '強化魔法' then
        set_equip = sets.midcast.sird
        if spell.name == 'ファランクス' then
            local cast_time = get_cast_time(spell)
            local sird_wait = cast_time * delay_rate
            local aftercast_wait = cast_time * (1-delay_rate) + aftercast_delay
            set_equip = sets.midcast.sird
            is_sird = true
            windower.send_command('wait '..sird_wait..'; input //gs c phalanx;'..'wait '..aftercast_wait..'; input //gs c aftercast;')
        elseif string.find(spell.name, 'プロテ') or string.find(spell.name, 'シェル') then
            local cast_time = get_cast_time(spell)
            local sird_wait = cast_time * delay_rate
            local aftercast_wait = cast_time * (1-delay_rate) + aftercast_delay
            set_equip = sets.midcast.sird
            is_sird = true
            windower.send_command('wait '..sird_wait..'; input //gs c protect;'..'wait '..aftercast_wait..'; input //gs c aftercast;')
        end
    elseif spell.skill == '神聖魔法' then
        set_equip = sets.midcast.sird
        if spell.name == 'フラッシュ' then
            set_equip = sets.enmity
        end
    elseif spell.skill == '回復魔法' then
        set_equip = sets.midcast.sird
        if string.find(spell.name, 'ケアル') then
            local cast_time = get_cast_time(spell)
            local sird_wait = cast_time * delay_rate
            local aftercast_wait = cast_time * (1-delay_rate) + aftercast_delay
            set_equip = sets.midcast.sird
            is_sird = true
            windower.send_command('wait '..sird_wait..'; input //gs c cure;'..'wait '..aftercast_wait..'; input //gs c aftercast;')
        end
    elseif spell.skill == '青魔法' then
        local cast_time = get_cast_time(spell)
        local sird_wait = cast_time * delay_rate_blu
        local aftercast_wait = cast_time * (1-delay_rate_blu) + aftercast_delay
        set_equip = sets.midcast.sird
        is_sird = true
        send_command('wait '..sird_wait..'; input //gs c blue;'..'wait '..aftercast_wait..'; input //gs c aftercast;')
    elseif spell.skill == '暗黒魔法' then
        if spell.name == 'スタン' then
            set_equip = sets.enmity
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.sird
    else
        -- set_equip = sets.midcast.sird
    end

    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if is_sird then
        is_sird = false
        return
    end

    if player.status == 'Engaged' then
        if is_melee then
            set_equip = sets.aftercast.melee
        else
            set_equip = sets.aftercast.idle
        end
    else
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

function status_change(new, old)
    local set_equip = nil
    
    if new == 'Idle' then
        set_equip = sets.aftercast.idle
    elseif new == 'Engaged' then
        if is_melee then
            set_equip = sets.aftercast.melee
        else
            set_equip = sets.aftercast.idle
        end
    end
    
    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

function self_command(command)
    if command == 'phalanx' then
        local set_equip = nil
        set_equip = sets.midcast.phalanx
        equip(set_equip)
        set_priorities_by_hp()
    elseif command == 'cure' then
        local set_equip = nil
        set_equip = sets.midcast.cure
        equip(set_equip)
        set_priorities_by_hp()
    elseif command == 'blue' then
        local set_equip = nil
        set_equip = sets.enmity
        equip(set_equip)
        set_priorities_by_hp()
    elseif command == 'protect' then
        local set_equip = nil
        set_equip = sets.midcast.protect_shell
        equip(set_equip)
        set_priorities_by_hp()
    elseif command == 'melee' then
        is_melee = not is_melee
        windower.add_to_chat(122,'---> アタッカー装備: '..tostring(is_melee))
    elseif command == 'dt'  then
        equip(sets.aftercast.idle)
        set_priorities_by_hp()
        windower.add_to_chat(122,'---> DT装備')
    elseif command == 'aftercast' then
        local set_equip = nil
    
        if player.status == 'Engaged' then
            if is_melee then
                set_equip = sets.aftercast.melee
            else
                set_equip = sets.aftercast.idle
            end
        else
            set_equip = sets.aftercast.idle
        end
        
        if set_equip then
            equip(set_equip)
            set_priorities_by_hp()
        end
        -- windower.add_to_chat(122,'---> aftercast')
    end
end

function set_priorities_by_hp()
    local future,current = gearswap.equip_list,gearswap.equip_list_history
    function get_hp(piece)
        if piece and type(piece)=='table' and piece.hp and type(piece.hp)=='number' then
            return piece.hp
        end
        return 0
    end
    local diff = {}
    for i,v in pairs(future) do
        local priority = get_hp(future[i]) - get_hp(current[i])
        if type(v) == 'table' then
            future[i].priority = priority
        else
            future[i] = {name=v,priority=priority}
        end
        -- windower.add_to_chat(123,future[i].name.." priority="..future[i].priority)
    end
end