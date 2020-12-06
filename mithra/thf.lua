function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_th = false
    is_sa_ta = false
    is_dt = false

    sets.th = {
        sub = "ガンドリング",
        hands="ＰＤアムレット+3",
    }

    sets.precast.snap = {
        head={ name="テーオンシャポー", augments={'"Snapshot"+5','"Snapshot"+5',}},
        body={ name="テーオンタバード", augments={'"Snapshot"+5','"Snapshot"+5',}},
        hands={ name="テーオングローブ", augments={'"Snapshot"+5','"Snapshot"+5',}},
        legs={ name="テーオンタイツ", augments={'"Snapshot"+5','"Snapshot"+5',}},
        feet="メガナダジャンボ+2",
        back={ name="トゥタティスケープ", augments={'"Snapshot"+10',}},
    }

    sets.precast.ws.wsd = {
        ammo="パルーグストーン",
        head="ＰＬボンネット+3",
        body="ＰＬベスト+3",
        hands="メガナダグローブ+2",
        legs={ name="ＰＤキュロット+3", augments={'Enhances "Feint" effect',}},
        -- feet={ name="ＰＤプーレーヌ+3", augments={'Enhances "Assassin\'s Charge" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="エパミノダスリング",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.sneak = {
        ammo="イェットシーラ+1",
        head="ＰＬボンネット+3",
        body="ＰＬベスト+3",
        hands="メガナダグローブ+2",
        legs={ name="ＰＤキュロット+3", augments={'Enhances "Feint" effect',}},
        -- feet={ name="ＰＤプーレーヌ+3", augments={'Enhances "Assassin\'s Charge" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="エパミノダスリング",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
        ammo="パルーグストーン",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ＰＬベスト+3",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="ＰＬキュロット+3",
        feet={ name="ＰＤプーレーヌ+3", augments={'Enhances "Assassin\'s Charge" effect',}},
        neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ゲリリング",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.precast.ws.critical = {
        ammo="イェットシーラ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body={ name="ＰＤベスト+3", augments={'Enhances "Ambush" effect',}},
        hands="ムンムリスト+2",
        legs="ＰＬキュロット+3",
        feet="ムンムゲマッシュ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear="オドルピアス",
        left_ring="ムンムリング",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.ws['エヴィサレーション'] = sets.precast.ws.critical
    sets.precast.ws['エクゼンテレター'] = sets.precast.ws.multi
    sets.precast.ws['ルドラストーム'] = sets.precast.ws.wsd
    sets.precast.ws['マンダリクスタッブ'] = sets.precast.ws.wsd
    sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.wsd
    
    sets.midcast.ra = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="ディグニタリピアス",
        right_ear="レンポイヤリング",
        left_ring="ムンムリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back="サクロマント",
    }

    sets.aftercast.melee_atk = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ＰＬベスト+3",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="ＰＬキュロット+3",
        feet={ name="ＰＤプーレーヌ+3", augments={'Enhances "Assassin\'s Charge" effect',}},
        neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="ヘタイロイリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_dt = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.melee = sets.aftercast.melee_atk
    local p = windower.ffxi.get_player()
    if p.sub_job == 'DNC' then
        send_command('lua load autodnc;wait 1;dnc on;')
    end

    sets.aftercast.idle_speed = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = sets.aftercast.idle_speed

    -- マクロのブック, セット変更
    send_command('input /macro book 4; wait 0.5; input /macro set 1; wait 0.5; input /lockstyleset 3 echo;')

end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if is_sa_ta or buffactive["不意打ち"] or buffactive["だまし討ち"] then
            set_equip = sets.precast.ws.sneak
        elseif sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.wsd
        end
    elseif spell.name == '飛び道具' then
        set_equip = sets.precast.snap
    elseif spell.type == 'WhiteMagic' then
        -- set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        -- set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
    if spell.name == '飛び道具' then
        set_equip = sets.midcast.ra
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if (spell.name == '不意打ち' or spell.name == 'だまし討ち') and not spell.interrupted then
        is_sa_ta = true
    end

    if player.status == 'Engaged' then
        set_equip = sets.aftercast.melee
    else
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function status_change(new, old)
    local set_equip = nil
    
    if new == 'Idle' then
        set_equip = sets.aftercast.idle
    elseif new == 'Engaged' then
        set_equip = sets.aftercast.melee
    end
    
    if set_equip then
        equip(set_equip)
    end
end


function buff_change(name, gain, buff_details)
    if gain then
        if name == '不意打ち' or name == 'だまし討ち' then
            is_sa_ta = true
        end
    else
        if name == '不意打ち' or name == 'だまし討ち' then
            is_sa_ta = false
        end
    end
end

function self_command(command)
    if command == 'th' then
        if is_th then
            is_th = false
            sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.wsd
            local p = windower.ffxi.get_player()
            if is_dt then
                sets.aftercast.melee = sets.aftercast.melee_dt
            else
                sets.aftercast.melee = sets.aftercast.melee_atk
            end
            sets.aftercast.idle = sets.aftercast.idle_speed
        else
            is_th = true
            sets.precast.ws['イオリアンエッジ'] = set_combine(sets.precast.ws.wsd, sets.th)
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.th)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.th)
        end

        if player.status == 'Engaged' then
            equip(sets.aftercast.melee)
        else
            equip(sets.aftercast.idle)
        end

        windower.add_to_chat(122,'----> トレハン装備: '..tostring(is_th))
    elseif command == 'dt' then
        is_dt = not is_dt
        if is_dt then
            sets.aftercast.melee = sets.aftercast.melee_dt
        else
            sets.aftercast.melee = sets.aftercast.melee_atk
        end
        sets.aftercast.idle = sets.aftercast.idle_speed
        
        if player.status == 'Engaged' then
            equip(sets.aftercast.melee)
        else
            equip(sets.aftercast.idle)
        end

        windower.add_to_chat(122,'----> MELEE DT: '..tostring(is_dt))
    end
end

function sub_job_change(new, old)
    if new == '踊' then
        send_command('lua load autodnc;wait 1;dnc on;')
    else
        if old == '踊' then
            send_command('lua unload autodnc')
        end
    end

    
end

function file_unload(file_name)
    local p = windower.ffxi.get_player()
    if p.sub_job == 'DNC' then
        send_command('lua unload autodnc;')
    end
end