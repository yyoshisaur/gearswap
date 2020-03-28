function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ws_imp = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.weapon = {}

    is_dt = false

    sets.weapon["カランビット"] = {main="カランビット",}
    sets.weapon["サギッタ"] = {main="サギッタ",}

    sets.precast.ws.critical = {
        ammo="ノブキエリ",
        head={ name="羅王頭成兜改", augments={'STR+12','DEX+12','Attack+20',}},
        body="ＡＮシクラス+3",
        hands={ name="龍王手甲改", augments={'STR+12','DEX+12','Accuracy+20',}},
        legs="乾闥婆筒袴改",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="オドルピアス",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.ws.critical_imp = set_combine(sets.precast.ws.critical, {
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ＢＫシクラス+1",
        -- right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.ws.wsd = {
        ammo="ノブキエリ",
        head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},
        body="ＡＮシクラス+3",
        hands="ＡＮグローブ+3",
        legs="真膝丸膝甲",
        -- feet="乾闥婆脛当改",
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="エパミノダスリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.wsd_vit = {
        ammo="ノブキエリ",
        head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},
        body="ＡＮシクラス+3",
        hands="ＡＮグローブ+3",
        legs="真膝丸膝甲",
        -- feet="乾闥婆脛当改",
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="イシュヴァラピアス",
        left_ring="エパミノダスリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
        ammo="ノブキエリ",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="乾闥婆筒袴改",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws.multi_dex = {
        ammo="ノブキエリ",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="蓐収佩楯",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws["コンボ"] = sets.precast.ws.multi
    sets.precast.ws["タックル"] = sets.precast.ws.multi
    sets.precast.ws["短勁"] = sets.precast.ws.multi
    sets.precast.ws["バックハンドブロー"] = sets.precast.ws.critical
    sets.precast.ws["乱撃"] = sets.precast.ws.multi
    sets.precast.ws["スピンアタック"] = sets.precast.ws.wsd_vit
    sets.precast.ws["空鳴拳"] = sets.precast.ws.wsd
    sets.precast.ws["双竜脚"] = sets.precast.ws.wsd
    sets.precast.ws["夢想阿修羅拳"] = sets.precast.ws.multi
    sets.precast.ws["闘魂旋風脚"] = sets.precast.ws.wsd
    sets.precast.ws["ファイナルヘヴン"] = sets.precast.ws.wsd_vit
    sets.precast.ws["アスケーテンツォルン"] = sets.precast.ws.critical
    sets.precast.ws["ビクトリースマイト"] = sets.precast.ws.critical
    sets.precast.ws["四神円舞"] = sets.precast.ws.multi_dex

    sets.precast.ws_imp["バックハンドブロー"] = sets.precast.ws.critical_imp
    sets.precast.ws_imp["アスケーテンツォルン"] = sets.precast.ws.critical_imp
    sets.precast.ws_imp["ビクトリースマイト"] = sets.precast.ws.critical_imp

    sets.precast.ability['百烈拳'] = {name={"ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},}
    sets.precast.ability['気孔弾'] = {head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},}
    sets.precast.ability['マントラ'] = {feet={ name="ＨＥゲートル+3", augments={'Enhances "Mantra" effect',}},}
    sets.precast.ability['チャクラ'] = {
        ammo="ブリガンチアペブル",
        head="玄冥兜",
        body="ＡＮシクラス+3",
        hands={ name="ＨＥグローブ+3", augments={'Enhances "Invigorate" effect',}},
        legs="真膝丸膝甲",
        feet="ＡＮゲートル+3",
        neck="ロリケートトルク+1",
        waist="月虹帯+1",
        left_ear="オノワイヤリング+1",
        right_ear="トゥイストピアス",
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    sets.precast.ability['ためる'] = {
        ammo="ストンチタスラム+1",
        head="ジャナッドヘルム",
        body=empty,
        hands=empty,
        legs=empty,
        feet="マハントサンダル",
        neck="ジャステシアトルク",
        waist="アスクサッシュ",
        left_ear="シェリダピアス",
        right_ear="玄冥耳飾り",
        left_ring="守りの指輪",
        right_ring="スリョールリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_multi = {
        ammo="銀銭",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_dt = {
        ammo="ヘイストピニオン+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_multi_ma = {
        ammo="銀銭",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.aftercast.melee_dt_ma = {
        ammo="ヘイストピニオン+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.aftercast.melee_imp = {
        ammo="銀銭",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ＢＫシクラス+1",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_dt_imp = {
        ammo="ヘイストピニオン+1",
        head="マリグナスシャポー",
        body="ＢＫシクラス+1",
        hands="マリグナスグローブ",
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_ma_imp = {
        ammo="銀銭",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ＢＫシクラス+1",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

        
    sets.aftercast.melee_dt_ma_imp = {
        ammo="ヘイストピニオン+1",
        head="マリグナスシャポー",
        body="ＢＫシクラス+1",
        hands="マリグナスグローブ",
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee =  sets.aftercast.melee_multi_ma

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="ムンムケックス+2",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="玄冥耳飾り",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

        -- マクロのブック, セット変更
        send_command('input /macro book 5; wait 0.5; input /macro set 1; wait 3;')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if buffactive["インピタス"] and sets.precast.ws_imp[spell.name] then
            set_equip = sets.precast.ws_imp[spell.name]
        elseif sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.wsd
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
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
    
    if spell.type == 'JobAbility' then
        if spell.name == 'インピタス' then
            sets.aftercast.melee = get_melee_equip_imp()
        end
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
    if name == 'インピタス' then
        if gain then
            sets.aftercast.melee = get_melee_equip_imp()
        else
            sets.aftercast.melee = get_melee_equip()
        end

        if player.status == 'Engaged' then
            equip(sets.aftercast.melee)
        else
            equip(sets.aftercast.idle)
        end
    elseif name == 'ためる' then
        if gain then
            equip({waist="アスクサッシュ",})
            disable('waist')
        else
            enable('waist')
            equip({waist="月虹帯+1",})
        end
    end
end


function self_command(command)
    if command == 'set_melee_equip' then
        sets.aftercast.melee = get_melee_equip()
    elseif command == 'dt' then
        is_dt = not is_dt
        sets.aftercast.melee = get_melee_equip()
        windower.add_to_chat(122,'---> MELEE カット装備: '..tostring(is_dt))
    end
end

function get_melee_equip()
    local melee_equip = nil
    if is_dt then
        if player.equipment.main == sets.weapon["カランビット"].main then
            melee_equip = sets.aftercast.melee_dt
        elseif player.equipment.main == sets.weapon["サギッタ"].main then
            melee_equip = sets.aftercast.melee_dt_ma
        else
            melee_equip = sets.aftercast.melee_dt
        end
    else
        if player.equipment.main == sets.weapon["カランビット"].main then
            melee_equip = sets.aftercast.melee_multi
        elseif player.equipment.main == sets.weapon["サギッタ"].main then
            melee_equip = sets.aftercast.melee_multi_ma
        else
            melee_equip = sets.aftercast.melee_multi
        end
    end

    return melee_equip
end

function get_melee_equip_imp()
    local melee_equip = nil
    if is_dt then
        if player.equipment.main == sets.weapon["カランビット"].main then
            melee_equip = sets.aftercast.melee_dt_imp
        elseif player.equipment.main == sets.weapon["サギッタ"].main then
            melee_equip = sets.aftercast.melee_dt_ma_imp
        else
            melee_equip = sets.aftercast.melee_dt_imp
        end
    else
        if player.equipment.main == sets.weapon["カランビット"].main then
            melee_equip = sets.aftercast.melee_imp
        elseif player.equipment.main == sets.weapon["サギッタ"].main then
            melee_equip = sets.aftercast.melee_ma_imp
        else
            melee_equip = sets.aftercast.melee_imp
        end
    end

    return melee_equip
end