-- TODO: 間隔、WSでサムライロール装備を分ける
function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    -- self_command用フラグ
    is_melee = false
    is_delay600 = true
    is_samroll = false
    
    windower.add_to_chat(122,'*** コマンド(//gs c [command]) ***')
    windower.add_to_chat(122,'melee: 近接装備切り替え')
    windower.add_to_chat(122,'delay: 射撃間隔切り替え')
    windower.add_to_chat(122,'samroll: サムライロール')
    
    sets.precast.snap = {
        head={ name="テーオンシャポー", augments={'"Mag.Atk.Bns."+20','"Snapshot"+5','"Snapshot"+5',}},
        body="ＡＭカバン+1",
        hands={ name="テーオングローブ", augments={'"Snapshot"+5','"Snapshot"+5',}},
        legs="ＯＲブラッカエ+3",
        feet="メガナダジャンボ+2",
        neck="スカウトゴルゲット",
        waist="インパルスベルト",
        back={ name="ベレナスケープ", augments={'"Snapshot"+10',}},
    }
    
    sets.precast.ws.phisical_600 = {
        ammo="クロノブレット",
        head="ＯＲベレー+3",
        body="ＯＲジャーキン+3",
        hands="メガナダグローブ+2",
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet={ name="アデマゲマッシュ+1", augments={'HP+65','"Store TP"+7','"Snapshot"+10',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="テロスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="ベレナスケープ", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.phisical_582 = {
        ammo="クロノブレット",
        head="ＯＲベレー+3",
        body="ＯＲジャーキン+3",
        hands="メガナダグローブ+2",
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet={ name="アデマゲマッシュ+1", augments={'HP+65','"Store TP"+7','"Snapshot"+10',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="テロスピアス",
        right_ear="エナベートピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="ベレナスケープ", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.samroll = {
        -- right_ear="エナベートピアス",
        feet="メガナダジャンボ+2",
        back={ name="ベレナスケープ", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.phisical = sets.precast.ws.phisical_600
    
    sets.precast.ws.magic= {
        ammo="デベステトブレット",
        head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Weapon skill damage +3%','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        feet={ name="ヘルクリアブーツ", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Crit.hit rate+1','Mag. Acc.+15','"Mag.Atk.Bns."+13',}},
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="フリオミシピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ディンジルリング",
        right_ring="アルビナリング+1",
        back={ name="ベレナスケープ", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws["ラストスタンド"] = sets.precast.ws.phisical
    sets.precast.ws["カラナック"] = sets.precast.ws.phisical
    sets.precast.ws["トゥルーフライト"] = sets.precast.ws.magic
    sets.precast.ws["ワイルドファイア"] = set_combine(sets.precast.ws.magic, {hands={ name="カマインフィンガ+1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},})
    sets.precast.ws["イオリアンエッジ"] = sets.precast.ws.magic
    
    sets.precast.fc = {
        ammo="クロノブレット",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="ギーヴトラウザ",
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エンチャンピアス+1",
        left_ring="守りの指輪",
        right_ring="ラハブリング",
        back="月光の羽衣",
    }
    
    sets.midcast.ra_600 = {
        ammo="クロノブレット",
        head={ name="ＡＲベレー+3", augments={'Enhances "Recycle" effect',}},
        body="ＯＲジャーキン+3",
        hands={ name="アデマリスト+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet={ name="アデマゲマッシュ+1", augments={'HP+65','"Store TP"+7','"Snapshot"+10',}},
        neck="イスクルゴルゲット",
        waist="イェマヤベルト",
        left_ear="テロスピアス",
        right_ear="デディションピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="ベレナスケープ", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
    }
    
    sets.midcast.ra_582 = {
        ammo="クロノブレット",
        head={ name="ＡＲベレー+3", augments={'Enhances "Recycle" effect',}},
        body="ＯＲジャーキン+3",
        hands={ name="アデマリスト+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet={ name="アデマゲマッシュ+1", augments={'HP+65','"Store TP"+7','"Snapshot"+10',}},
        neck="イスクルゴルゲット",
        waist="イェマヤベルト",
        left_ear="テロスピアス",
        right_ear="デディションピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="ベレナスケープ", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
    }
    
    sets.midcast.ra_samroll = {
        right_ear="エナベートピアス",
        feet="メガナダジャンボ+2",
    }
    
    sets.midcast.ra = sets.midcast.ra_600
    
    sets.aftercast.idle = {
        ammo="クロノブレット",
        head="メガナダバイザー+2",
        body="メガナダクウィリ+2",
        hands="メガナダグローブ+2",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }
    
    sets.aftercast.melee = {
        ammo="クロノブレット",
        head={ name="ダンペニングタム", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="コンバタントトルク",
        waist="ウィンバフベルト+1",
        left_ear="テロスピアス",
        right_ear="素破の耳",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back="ルーパインケープ",
    }
    sets.melee = sets.aftercast.melee
    
    -- マクロのブック, セット変更
    send_command('input /macro book 5; wait 0.5; input /macro set 1')
end

function precast(spell)
    --windower.add_to_chat(123, spell.name)
    --windower.add_to_chat(123, spell.type)
    local set_equip = nil
    
    if spell.name == '飛び道具' then
        set_equip = sets.precast.snap
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.phisical
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
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
    
    if player.status == 'Engaged' then
        -- set_equip = sets.midcast.ra
        if spell.type == 'WeaponSkill' and spell.interrupted == false then
            windower.add_to_chat(30, 'TP: ' .. player.tp .. ' after ' .. spell.name)
        end
        set_equip = get_aftercast_equip()
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
        set_equip = get_aftercast_equip()
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'melee' then
        if not is_melee then
            is_melee = true
            windower.add_to_chat(122,'+++ 近接装備 +++')
        else
            is_melee = false
            windower.add_to_chat(122,'+++ 遠隔装備 +++')
        end
    elseif command == 'delay' then
        if is_delay600 then
            is_delay600 = false
            set_equip_delay_582()
            windower.add_to_chat(122,'+++ 間隔582用装備 +++')
        else
            is_delay600 = true
            windower.add_to_chat(122,'+++ 間隔600用装備 +++')
            set_equip_delay_600()
        end
        is_samroll = false
    elseif command == 'samroll' then
        if not is_samroll then
            windower.add_to_chat(122,'+++ サムライロールあり +++')
            is_samroll = true
            set_equip_samroll()
        else
            windower.add_to_chat(122,'+++ サムライロールなし +++')
            is_samroll = false
            if is_delay600 then
                set_equip_delay_600()
            else
                set_equip_delay_582()
            end
        end
    end
end

function get_aftercast_equip()
    if is_melee then
        return sets.melee
    else
        return sets.aftercast.idle
    end
end

function set_equip_delay_600()
    sets.precast.ws.phisical = sets.precast.ws.phisical_600
    sets.precast.ws["ラストスタンド"] = sets.precast.ws.phisical
    sets.precast.ws["カラナック"] = sets.precast.ws.phisical
    
    sets.midcast.ra = sets.midcast.ra_600
end

function set_equip_delay_582()
    sets.precast.ws.phisical = sets.precast.ws.phisical_582
    sets.precast.ws["ラストスタンド"] = sets.precast.ws.phisical
    sets.precast.ws["カラナック"] = sets.precast.ws.phisical
    
    sets.midcast.ra = sets.midcast.ra_582
end

function set_equip_samroll()
    sets.precast.ws.phisical = set_combine(sets.precast.ws.phisical, sets.precast.ws.samroll)
    sets.precast.ws["ラストスタンド"] = sets.precast.ws.phisical
    sets.precast.ws["カラナック"] = sets.precast.ws.phisical
    
    sets.midcast.ra = set_combine(sets.midcast.ra, sets.midcast.ra_samroll)
end