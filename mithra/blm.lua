function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}

    elementally_enfeeble_magic = T{"ショック", "ラスプ", "チョーク", "フロスト", "バーン", "ドラウン",}
    aspir = T{"アスピル", "アスピルII", "アスピルIII"}

    sets.precast.fc = {
        head={ name="マーリンフード", augments={'Mag. Acc.+25','"Fast Cast"+7','CHR+7',}},
        body={ name="テルキネシャジュブ", augments={'"Fast Cast"+5',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="マーリンクラッコー", augments={'"Fast Cast"+7','CHR+2',}},
        right_ear="エテオレートピアス",
        right_ring="プロリクスリング",
        back={ name="タラナスケープ", augments={'"Fast Cast"+10',}},
    }

    sets.precast.fc_elemental = {
        head={ name="マーリンフード", augments={'Mag. Acc.+25','"Fast Cast"+7','CHR+7',}},
        body="マルクィサイオ+2",
        hands="マルクィカフス+1",
        legs="マルクィトルーズ+2",
        left_ear="バーカロルピアス",
    }

    sets.precast.ws.mp = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="ＳＰコート+2",
        hands={ name="テルキネグローブ", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="テルキネピガッシュ", augments={'Enh. Mag. eff. dur. +8',}},
        neck="エディネクラス",
        waist="風鳥の帯",
        left_ear="アンドアーピアス",
        right_ear="エテオレートピアス",
        left_ring="プロリクスリング",
        right_ring="サンゴマリング",
        back="ベーンケープ",
    }

    sets.precast.ws['ミルキル'] = sets.precast.ws.mp

    sets.midcast.enhance_duration = {
        head={ name="テルキネキャップ", augments={'Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Enh. Mag. eff. dur. +9',}},
        feet={ name="テルキネピガッシュ", augments={'Enh. Mag. eff. dur. +9',}},
    }

    sets.midcast.magic_mb = {
        main={ name="ラシ", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="カジャグリップ",
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body="ＳＰコート+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs={ name="ＡＲトンバン+3", augments={'Increases Elemental Magic debuff time and potency',}},
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="ソーサラストール+1",
        waist="山吹の帯",
        left_ear="バーカロルピアス",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.magic_acc = {
        main={ name="ラシ", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="カジャグリップ",
        ammo="ペムフレドタスラム",
        head="マルクィシャポー+2",
        body="ＳＰコート+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs={ name="ＡＲトンバン+3", augments={'Increases Elemental Magic debuff time and potency',}},
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="ソーサラストール+1",
        waist="山吹の帯",
        left_ear="バーカロルピアス",
        right_ear="ディグニタリピアス",
        left_ring="マルクィリング",
        right_ring="スティキニリング",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.aspir = {
        main={ name="ラシ", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="カジャグリップ",
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="ＳＰコート+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs={ name="ＡＲトンバン+3", augments={'Increases Elemental Magic debuff time and potency',}},
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="ソーサラストール+1",
        waist="風鳥の帯",
        left_ear="バーカロルピアス",
        right_ear="ディグニタリピアス",
        left_ring="サンゴマリング",
        right_ring="スティキニリング",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = {
        main={ name="ラシ", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="カジャグリップ",
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body="マルクィサイオ+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs={ name="ＡＲトンバン+3", augments={'Increases Elemental Magic debuff time and potency',}},
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="ロリケートトルク+1",
        waist="スリポーサッシュ",
        left_ear="バーカロルピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

        -- マクロのブック, セット変更
        send_command('input /macro book 2; wait 0.5; input /macro set 1')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'BlackMagic' then
        if spell.skill == '精霊魔法' then
            set_equip = sets.precast.fc_elemental
        else
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'WhiteMagic' then
         set_equip = sets.precast.fc
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.skill == '精霊魔法' then
        if elementally_enfeeble_magic:contains(spell.name) then
            set_equip = sets.midcast.magic_acc
        else
            set_equip = sets.midcast.magic_mb
        end
    elseif spell.skill == '暗黒魔法' then
        if aspir:contains(spell.name) then
            set_equip = sets.midcast.aspir
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '強化魔法' then
        set_equip = sets.midcast.enhance_duration
    end

    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        set_equip = sets.aftercast.idle
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
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'aspir' then
        local recasts = windower.ffxi.get_spell_recasts()
        local recast_time_a2 = recasts[248]/60
        local recast_time_a = recasts[247]/60

        if recast_time_a2 == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピルII')..' <stnpc>')
        elseif recast_time_a == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピル')..' <stnpc>')
        else
            windower.add_to_chat(30, 'アスピル リキャスト---> II: %.1fs, I: %.1fs':format(recast_time_a2, recast_time_a))
        end
    end
end