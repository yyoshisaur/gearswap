function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_th = false

    sets.th = {
        sub = "ガンドリング",
        hands="ＰＤアムレット+3",
        -- waist="チャークベルト"
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
        waist="チナーズベルト+1",
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
        waist="チナーズベルト+1",
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
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
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
    
    sets.aftercast.melee_atk = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="ＰＬキュロット+3",
        feet={ name="ＰＤプーレーヌ+3", augments={'Enhances "Assassin\'s Charge" effect',}},
        neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="ヘタイロイリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }
    
    sets.aftercast.melee_atk_dnc = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ＰＬベスト+3",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="ＰＬキュロット+3",
        feet={ name="ＰＤプーレーヌ+3", augments={'Enhances "Assassin\'s Charge" effect',}},
        eck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="ヘタイロイリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    local p = windower.ffxi.get_player()
    if p.sub_job == 'DNC' then
        sets.aftercast.melee = sets.aftercast.melee_atk_dnc
        send_command('lua load autodnc')
    else
        sets.aftercast.melee = sets.aftercast.melee_atk
    end

    sets.aftercast.idle_speed = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="ウィンバフベルト+1",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = sets.aftercast.idle_speed

    -- マクロのブック, セット変更
    send_command('input /macro book 4; wait 0.5; input /macro set 1')

end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            if buffactive["不意打ち"] or buffactive["だまし討ち"] then
                set_equip = sets.precast.ws.sneak
            else
                set_equip = sets.precast.ws[spell.name]
            end
        else
            set_equip = sets.precast.ws.wsd
        end
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
end

function aftercast(spell)
    local set_equip = nil
    
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


function self_command(command)
    if command == 'th' then
        if is_th then
            is_th = false
            sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.wsd
            sets.aftercast.melee = sets.aftercast.melee_atk
            sets.aftercast.idle = sets.aftercast.idle_speed
        else
            is_th = true
            sets.precast.ws['イオリアンエッジ'] = set_combine(sets.precast.ws.wsd, sets.th)
            sets.aftercast.melee = set_combine(sets.aftercast.melee_atk, sets.th)
            sets.aftercast.idle = set_combine(sets.aftercast.idle_speed, sets.th)
        end

        if player.status == 'Engaged' then
            equip(sets.aftercast.melee)
        else
            equip(sets.aftercast.idle)
        end

        windower.add_to_chat(122,'----> トレハン装備: '..tostring(is_th))
    end
end

function sub_job_change(new, old)
    if new == '踊' then
        sets.aftercast.melee = sets.aftercast.melee_atk_dnc
        send_command('lua load autodnc;wait 1;dnc on;')
    else
        sets.aftercast.melee = sets.aftercast.melee_atk
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