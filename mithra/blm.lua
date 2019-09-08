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
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="マーリンクラッコー", augments={'"Fast Cast"+7','CHR+2',}},
        right_ear="エテオレートピアス",
        right_ring="プロリクスリング",
    }

    sets.precast.fc_elemental = {
        head={ name="マーリンフード", augments={'Mag. Acc.+25','"Fast Cast"+7','CHR+7',}},
        body="マルクィサイオ+2",
        hands="マルクィカフス+1",
        legs="マルクィトルーズ+2",
        left_ear="バーカロルピアス",
    }

    sets.midcast.magic_mb = {
        main={ name="ラシ", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="カジャグリップ",
        ammo="ペムフレドタスラム",
        head="ジャリコロナル+1",
        body="ＳＰコート+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs="マルクィトルーズ+2",
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="水影の首飾り",
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
        head="マルクィシャポー+1",
        body="ＳＰコート+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs="マルクィトルーズ+2",
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="ソーサラストール+1",
        waist="山吹の帯",
        left_ear="バーカロルピアス",
        right_ear="ディグニタリピアス",
        left_ring="マルクィリング",
        right_ring="スティキニリング",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = {
        main={ name="ラシ", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="カジャグリップ",
        ammo="ペムフレドタスラム",
        head="マルクィシャポー+1",
        body="マルクィサイオ+2",
        hands={ name="ＡＲグローブ+3", augments={'Increases Elemental Magic accuracy',}},
        legs="マルクィトルーズ+2",
        feet={ name="ＡＲサボ+3", augments={'Increases Aspir absorption amount',}},
        neck="エディネクラス",
        waist="風鳥の帯",
        left_ear="バーカロルピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="夢神の指輪",
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
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
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