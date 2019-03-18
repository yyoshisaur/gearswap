include('weather_obi')
function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_sp = false
    is_no_mb = false
    is_diver_statue = false
    is_death = false

    elementally_enfeeble_magic = T{"ショック", "ラスプ", "チョーク", "フロスト", "バーン", "ドラウン",}

    init_elemental_obi()
    set_elemental_obi("火輪の帯")
    set_elemental_obi("雷輪の帯")
    set_elemental_obi("闇輪の帯")

    sets.mp_increase = {
        neck="デュアルカラー+1",
        waist="神術帯+1",
        left_ear="エテオレートピアス",
        right_ear="ハラサズピアス",
        left_ring="メフィタスリング+1",
        right_ring="メフィタスリング",
        back={ name="ベーンケープ", augments={'Elem. magic skill +10','Dark magic skill +7',}},
    }

    sets.precast.fc = {
        ammo="サピエンスオーブ",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ボルトサージトルク",
        waist="チャネラーストーン",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.fc_death = {
        ammo="サピエンスオーブ",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ボルトサージトルク",
        waist="チャネラーストーン",
        right_ear="ロケイシャスピアス",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.fc_elemental = {
        body="マルクィサイオ+2",
        legs="マルクィトルーズ+2",
        right_ear="バーカロルピアス",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.fc_impact = {
        ammo="サピエンスオーブ",
        body="トワイライトプリス",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ボルトサージトルク",
        waist="チャネラーストーン",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.ws["ミルキル"] = {
        ammo="プシロメン",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        body={ name="ウェーザーローブ+1", augments={'MP+120',}},
        hands={ name="オトミグローブ", augments={'HP+30','MP+30','MP+30',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="デュアルカラー+1",
        waist="神術帯+1",
        left_ear="エテオレートピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="メフィタスリング+1",
        right_ring="メフィタスリング",
        back={ name="ベーンケープ", augments={'Elem. magic skill +10','Dark magic skill +7',}},
    }

    sets.precast.ability["魔力の泉"] = {body={ name="ＡＲコート+1", augments={'Enhances "Manafont" effect',}},}

    sets.midcast.aspir = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Mag. crit. hit dmg. +1%','INT+5','Mag. Acc.+13','"Mag.Atk.Bns."+14',}},
        hands="王将の袖飾り",
        legs="ＳＰトンバン+3",
        feet="ＳＰサボ+3",
        neck="エーラペンダント",
        waist="風鳥の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="サンゴマリング",
        right_ring="エバネセンスリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}},
    }

    sets.midcast.comet = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="エアウプランド+1",
        hands="エアカフス+1",
        legs="ＳＰトンバン+3",
        feet="ＳＰサボ+3",
        neck="水影の首飾り",
        waist="闇輪の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="女王の指輪+1",
        right_ring="アルコンリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}},
    }

    sets.midcast.cure = {
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ヴリコダラジュポン",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ギーヴトラウザ",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="ボルトサージトルク",
        left_ear="メンデカントピアス",
    }

    sets.midcast.death_mb = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="エアウプランド+1",
        hands="エアカフス+1",
        legs="ＳＰトンバン+3",
        feet="ＳＰサボ+3",
        neck="水影の首飾り",
        waist="闇輪の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="サンゴマリング",
        right_ring="アルコンリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}},
    }
    
    sets.midcast.death = {
        head="妖蟲の髪飾り+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="エアカフス+1",
        legs="ＳＰトンバン+3",
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="サンクトネックレス",
        waist="闇輪の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="サンゴマリング",
        right_ring="アルコンリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}},
    }

    sets.midcast.elemental = {
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}},
        body="ＳＰコート+3",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}},
        neck="サンクトネックレス",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.enhance_duration = {
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +6%','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
    }

    sets.midcast.enhance_duration_death = {
        -- body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
    }

    sets.midcast.skin = {neck='ノデンズゴルゲット', right_ear='アースクライピアス', waist="ジーゲルサッシュ",}
    sets.midcast.aquaveil = {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}}, hands="王将の袖飾り",}
    sets.midcast.refresh = {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}}, waist="ギシドゥバサッシュ",}

    sets.midcast.impact = {
        ammo="ペムフレドタスラム",
        body="トワイライトプリス",
        hands="王将の袖飾り",
        legs="ＳＰトンバン+3",
        feet="ＳＰサボ+3",
        neck="エーラペンダント",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}},
    }

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}},
        body="ＳＰコート+3",
        hands="王将の袖飾り",
        legs="ＳＰトンバン+3",
        feet="ＳＰサボ+3",
        neck="エーラペンダント",
        waist="ルミネートサッシュ",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.elementally_enfeeble = {feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}},}

    sets.midcast.mb_sp = {
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body="ＳＰコート+3",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs="エアスロップス+1",
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    -- mb high acc 250 atk 380
    sets.midcast.mb_high = {
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body="エアウプランド+1",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="女王の指輪+1",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }
    -- mb mid acc 300 atk 360
    sets.midcast.mb_mid = {
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body="エアウプランド+1",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}},
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="女王の指輪+1",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }
    -- mb low acc 320 atk 340
    sets.midcast.mb_low = {
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body="エアウプランド+1",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＲトンバン+3", augments={'Increases Ancient Magic II accuracy',}},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}},
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="女王の指輪+1",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.mb = sets.midcast.mb_mid

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="エアハット+1",
        body="シャマシュローブ",
        hands="エアカフス+1",
        legs="エアスロップス+1",
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}},
        neck="ロリケートトルク+1",
        waist="風鳥の帯",
        left_ear="エテオレートピアス",
        right_ear="ルガルバンダピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.aftercast.idle_death = {
        ammo="プシロメン",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="王将の袖飾り",
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="デュアルカラー+1",
        waist="風鳥の帯",
        left_ear="エテオレートピアス",
        right_ear="ハラサズピアス",
        left_ring="メフィタスリング+1",
        right_ring="守りの指輪",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

        -- マクロのブック, セット変更
        -- send_command('input /macro book 4; wait 0.5; input /macro set 1')
end

function pretarget(spell)
    local set_equip = nil

    if is_death then
        set_equip = sets.mp_increase
    end

    if spell.name == 'インパクト' then
        set_equip = {body="トワイライトプリス",}
    end

    if set_equip then
        equip(set_equip)
    end
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WhiteMagic' then
        if spell.skill == '強化魔法' then
            if is_death then
                set_equip = sets.precast.fc_death
            else
                set_equip = set_combine(sets.precast.fc, {waist="ジーゲルサッシュ"})
            end
        else
            if is_death then
                set_equip = sets.precast.fc_death
            else
                set_equip = sets.precast.fc
            end
        end
    elseif spell.type == 'BlackMagic' then
        if spell.skill == '精霊魔法' then
            if spell.name == 'インパクト' then
                set_equip = sets.precast.fc_impact
            else
                set_equip = sets.precast.fc_elemental
            end
        else
            if is_death then
                set_equip = sets.precast.fc_death
            else
                set_equip = sets.precast.fc
            end
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        end
    elseif spell.type == 'Trust' then
        if is_death then
            set_equip = sets.precast.fc_death
        else
            set_equip = sets.precast.fc
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if string.find(spell.name, 'ケアル') then
        set_equip = sets.midcast.cure
    elseif spell.skill == '強化魔法' then
        if is_death then
            if spell.name == 'ストンスキン' then
                set_equip = sets.midcast.skin
            elseif spell.name == 'アクアベール' then
                set_equip = sets.midcast.aquaveil
            elseif spell.name == 'リフレシュ' then
                set_equip = set_combine(sets.midcast.enhance_duration_death, sets.midcast.refresh)
            else
                set_equip = sets.midcast.enhance_duration_death
            end
        else
            if spell.name == 'ストンスキン' then
                set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.skin)
            elseif spell.name == 'アクアベール' then
                set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.aquaveil)
            elseif spell.name == 'リフレシュ' then
                set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.refresh)
            else
                set_equip = sets.midcast.enhance_duration
            end
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '暗黒魔法' then
        if spell.name == 'デス' then
            if is_diver_statue then
                set_equip = sets.midcast.death
            else
                set_equip = sets.midcast.death_mb
            end
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '精霊魔法' then
        if elementally_enfeeble_magic:contains(spell.name) then
            set_equip = set_combine(sets.midcast.magic_acc, sets.midcast.elementally_enfeeble)
        elseif spell.name == 'インパクト' then
            set_equip = sets.midcast.impact
        elseif spell.name == 'コメット' then
            set_equip = sets.midcast.comet
        else
            if is_sp then
                set_equip = set_combine(sets.midcast.mb_sp, get_hachirin(spell.element))
                is_sp = false
            elseif is_no_mb then
                set_equip = set_combine(sets.midcast.elemental, get_hachirin(spell.element))
                is_not_mb = false
            else
                set_equip = set_combine(sets.midcast.mb, get_hachirin(spell.element))
            end
        end
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
    
    if is_death then
        set_equip = sets.aftercast.idle_death
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
    
    if is_death then
        set_equip = sets.aftercast.idle_death
    end

    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'sp' then
        is_sp = not is_sp
        windower.add_to_chat(122,'---> ＳＰコート: '..tostring(is_sp))
    elseif command == 'no_mb' then
        is_no_mb = not is_no_mb
        windower.add_to_chat(122,'---> MBなし: '..tostring(is_no_mb))
    elseif command == 'diver_statue' then
        if is_death then
            is_diver_statue = not is_diver_statue
        else
            windower.add_to_chat(122,'---> デス:'..tostring(is_death)..' execute //gs c death before execute //gs c diver_statue')
        end
        windower.add_to_chat(122,'---> ダイバージェンス石造: '..tostring(is_diver_statue))
        equip(sets.aftercast.idle_death)
    elseif command == 'death' then
        is_death = not is_death
        windower.add_to_chat(122,'---> デス: '..tostring(is_death))
        equip(sets.aftercast.idle_death)
    elseif command == 'mb_high' then
        sets.midcast.mb = sets.midcast.mb_high
        windower.add_to_chat(122,'---> MB: ATK high, ACC low')
    elseif command == 'mb_mid' then
        sets.midcast.mb = sets.midcast.mb_mid
        windower.add_to_chat(122,'---> MB: ATK mid, ACC mid')
    elseif command == 'mb_low' then
        sets.midcast.mb = sets.midcast.mb_low
        windower.add_to_chat(122,'---> MB: ATK low, ACC high')
    end
end
-- sp, not_mb, diver_statue, death, manawall, mb high, mb mid, mb low