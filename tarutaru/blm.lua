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
    is_vagary = false

    elementally_enfeeble_magic = T{"ショック", "ラスプ", "チョーク", "フロスト", "バーン", "ドラウン",}
    aspir = T{"アスピル", "アスピルII", "アスピルIII"}

    init_elemental_obi()
    set_elemental_obi("火輪の帯")
    set_elemental_obi("雷輪の帯")
    set_elemental_obi("闇輪の帯")

    sets.precast.fc = {
        ammo="サピエンスオーブ",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=153},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}, mp=109},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck={ name="ボルトサージトルク", mp=20},
        waist="エンブラサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear={ name="ロケイシャスピアス", mp=30},
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=60},
    }

    sets.precast.fc_death = {
        ammo="サピエンスオーブ",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=153},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}, mp=109},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck={ name="ボルトサージトルク", mp=20},
        waist="エンブラサッシュ",
        left_ear={ name="エテオレートピアス", mp=50},
        right_ear={ name="ロケイシャスピアス", mp=30},
        left_ring={name="メフィタスリング+1", mp=110},
        right_ring={name="メフィタスリング", mp=100},
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=60},
    }
    
    sets.precast.fc_elemental = {
        body={ name="マルクィサイオ+2", mp=53},
        legs={ name="マルクィトルーズ+2", mp=38},
        right_ear={ name="バーカロルピアス", mp=25},
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=25},
    }

    sets.precast.fc_impact = {
        ammo="サピエンスオーブ",
        body="トワイライトプリス",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}, mp=109},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck={ name="ボルトサージトルク", mp=20},
        waist="エンブラサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear={ name="ロケイシャスピアス", mp=30},
        left_ring={ name="ラハブリング", mp=30},
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=60},
    }

    sets.precast.ws["ミルキル"] = {
        ammo={ name="プシロメン", mp=45},
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141},
        body={ name="ウェーザーローブ+1", augments={'MP+120',}, mp=179},
        hands={ name="オトミグローブ", augments={'HP+30','MP+30','MP+30',}, mp=132},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=185},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck={ name="デュアルカラー+1", mp=60},
        waist={ name="神術帯+1", mp=85},
        left_ear={ name="エテオレートピアス", mp=50},
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring={name="メフィタスリング+1", mp=110},
        right_ring={name="メフィタスリング", mp=100},
        back={ name="ベーンケープ", augments={'Elem. magic skill +10','Dark magic skill +7',}, mp=90},
    }

    sets.precast.ability["魔力の泉"] = {body={ name="ＡＲコート+3", augments={'Enhances "Manafont" effect',}, mp=79},}

    sets.midcast.aspir = {
        ammo="ペムフレドタスラム",
        head={ name="妖蟲の髪飾り+1", mp=120},
        body={ name="エアウプランド+1", mp=109},
        hands={ name="ＡＲグローブ+3", augments={'Reduces Ancient Magic II casting time',}, mp=34,},
        legs={ name="ＳＰトンバン+3", mp=158},
        feet={ name="ＳＰサボ+3", mp=43},
        neck="エーラペンダント",
        waist={ name="風鳥の帯", mp=30},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring={name="サンゴマリング", mp=70},
        right_ring="エバネセンスリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}, mp=60},
    }

    sets.midcast.comet = {
        ammo="ペムフレドタスラム",
        head={ name="妖蟲の髪飾り+1", mp=120},
        body={ name="ＳＰコート+3", mp=98},
        hands={ name="ＡＲグローブ+3", augments={'Reduces Ancient Magic II casting time',}, mp=34,},
        -- hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=29},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=185},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck="ソーサラストール+2",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.cure = {
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}, mp=82},
        body={ name="ヴリコダラジュポン", mp=59},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        legs={ name="ギーヴトラウザ", mp=32},
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}, mp=14},
        left_ear={ name="メンデカントピアス", mp=30},
    }

    sets.midcast.death_mb = {
        ammo="ペムフレドタスラム",
        head={ name="妖蟲の髪飾り+1", mp=120},
        body={ name="エアウプランド+1", mp=109},
        hands={ name="エアカフス+1", mp=29},
        legs={ name="ＳＰトンバン+3", mp=158},
        feet={ name="ＳＰサボ+3", mp=43},
        neck="水影の首飾り",
        waist="闇輪の帯",
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring={ name="サンゴマリング", mp=70},
        right_ring="アルコンリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}, mp=60},
    }
    
    sets.midcast.death = {
        ammo="ペムフレドタスラム",
        head={ name="妖蟲の髪飾り+1", mp=120},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=153},
        hands={ name="エアカフス+1", mp=29},
        legs={ name="ＳＰトンバン+3", mp=158},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck={ name="サンクトネックレス", mp=35},
        waist="闇輪の帯",
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring={ name="サンゴマリング", mp=70},
        right_ring="アルコンリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}, mp=60},
    }

    sets.midcast.elemental = {
        ammo="ペムフレドタスラム",
        head={ name="ＡＲペタソス+3", augments={'Increases Ancient Magic II damage',}, mp=52},
        body={ name="ＳＰコート+3", mp=98},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=29},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=185},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}, mp=34},
        -- neck={ name="サンクトネックレス", mp=35},
        neck="ソーサラストール+2",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.enhance_duration = {
        ammo={ name="プシロメン", mp=45},
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}, mp=32},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=56},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=29},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        neck={ name="デュアルカラー+1", mp=60},
        waist="エンブラサッシュ",
        left_ear={ name="エテオレートピアス", mp=50},
        -- left_ring={name="メフィタスリング+1", mp=110},
        -- right_ring={name="メフィタスリング", mp=100},
    }

    sets.midcast.enhance_duration_death = {
        -- body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=56},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
    }

    sets.midcast.skin = {neck='ストーンゴルゲット', right_ear='アースクライピアス', waist="ジーゲルサッシュ",}
    sets.midcast.aquaveil = {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141}, hands={ name="王将の袖飾り", mp=88},}
    sets.midcast.refresh = {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141}, waist="ギシドゥバサッシュ",}

    sets.midcast.impact = {
        ammo="ペムフレドタスラム",
        body="トワイライトプリス",
        hands={ name="王将の袖飾り", mp=88},
        legs={ name="ＳＰトンバン+3", mp=158},
        feet={ name="ＳＰサボ+3", mp=43},
        -- neck="エーラペンダント",
        neck="ソーサラストール+2",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Damage taken-5%',}, mp=60},
    }

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}, mp=56},
        body={ name="ＳＰコート+3", mp=98},
        hands={ name="王将の袖飾り", mp=88},
        legs={ name="ＳＰトンバン+3", mp=158},
        feet={ name="ＳＰサボ+3", mp=43},
        -- neck="エーラペンダント",
        neck="ソーサラストール+2",
        waist="ルミネートサッシュ",
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=60},
    }

    sets.midcast.elementally_enfeeble = {
        legs={ name="ＡＲトンバン+3", augments={'Increases Ancient Magic II accuracy',},mp=85},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}, mp=34},
    }

    sets.midcast.mb_sp = {
        ammo="ペムフレドタスラム",
        head={ name="エアハット+1", mp=65},
        body={ name="ＳＰコート+3", mp=98},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=29},
        legs={ name="エアスロップス+1", mp=100},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck="水影の首飾り",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    -- mb high acc 250 atk 380
    sets.midcast.mb_high = {
        ammo="ペムフレドタスラム",
        head={ name="エアハット+1", mp=65},
        body={ name="エアウプランド+1", mp=109},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=29},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=185},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        neck="水影の首飾り",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="フレキリング",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }
    -- mb mid acc 300 atk 360
    sets.midcast.mb_mid = {
        ammo="ペムフレドタスラム",
        head={ name="エアハット+1", mp=65},
        body={ name="エアウプランド+1", mp=109},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=29},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=185},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}, mp=34},
        neck="水影の首飾り",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="フレキリング",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }
    -- mb low acc 320 atk 340
    sets.midcast.mb_low = {
        ammo="ペムフレドタスラム",
        head={ name="エアハット+1", mp=65},
        body={ name="エアウプランド+1", mp=109},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=29},
        legs={ name="ＡＲトンバン+3", augments={'Increases Ancient Magic II accuracy',}, mp=85},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}, mp=34},
        neck="水影の首飾り",
        waist={ name="山吹の帯", mp=35},
        left_ear={ name="王将の耳飾り", mp=20},
        right_ear={ name="バーカロルピアス", mp=25},
        left_ring="フレキリング",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    -- mb ラシA acc 320 atk 390
    sets.midcast.mb_lathi = {
        ammo="ペムフレドタスラム",
        head={ name="ＡＲペタソス+3", augments={'Increases Ancient Magic II damage',}},
        body="エアウプランド+1",
        hands={ name="ＡＲグローブ+3", augments={'Reduces Ancient Magic II casting time',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ソーサラストール+2",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="フレキリング",
        right_ring="夢神の指輪",
        back={ name="タラナスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.mb = sets.midcast.mb_mid

    -- sets.midcast.mb = sets.midcast.mb_lathi

    sets.midcast.vagary_task = {
        ammo="ストンチタスラム+1",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}, mp=82},
        body={ name="シャンゴローブ", mp=59},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, mp=44},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}, mp=109},
        feet={ name="ミディアムサボ", augments={'MP+45','MND+9','"Conserve MP"+5','"Cure" potency +4%',}, mp=65},
        neck={ name="ボルトサージトルク", mp=20},
        waist="エンブラサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear={ name="ロケイシャスピアス", mp=30},
        left_ring={ name="ラハブリング", mp=30},
        right_ring="キシャールリング",
        back={ name="ベーンケープ", augments={'Elem. magic skill +10','Dark magic skill +7',}, mp=90},
    }

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head={ name="エアハット+1", mp=65},
        body={ name="シャマシュローブ", mp=88},
        hands={ name="エアカフス+1", mp=29},
        legs={ name="エアスロップス+1", mp=100},
        feet={ name="ＡＲサボ+3", augments={'Reduces Ancient Magic II MP cost',}, mp=34},
        -- neck="ロリケートトルク+1",
        neck="ソーサラストール+2",
        waist={ name="風鳥の帯", mp=30},
        left_ear={ name="エテオレートピアス", mp=50},
        right_ear="ルガルバンダピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=60},
    }

    sets.aftercast.idle_death = {
        ammo={ name="プシロメン", mp=45},
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=153},
        hands={ name="王将の袖飾り", mp=88},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=185},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},
        -- neck={ name="デュアルカラー+1", mp=60},
        neck="ソーサラストール+2",
        waist={ name="風鳥の帯", mp=30},
        left_ear={ name="エテオレートピアス", mp=50},
        right_ear={ name="ハラサズピアス", mp=45},
        left_ring={name="メフィタスリング+1", mp=110},
        right_ring="守りの指輪",
        back={ name="タラナスケープ", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}, mp=60},
    }

        -- マクロのブック, セット変更
        send_command('input /macro book 3; wait 0.5; input /macro set 10')
end

function pretarget(spell)
    local set_equip = nil

    if spell.name == 'インパクト' then
        set_equip = {body="トワイライトプリス",}
    end

    if set_equip then
        equip(set_equip)
        set_priorities_by_mp()
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
                if player.sub_job == '赤' then
                    set_equip = sets.precast.fc_elemental
                else
                    set_equip = set_combine(sets.precast.fc_elemental,
                    {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=141},
                    feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, mp=106},})
                end
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
        set_priorities_by_mp()
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
        elseif aspir:contains(spell.name) then
            set_equip = sets.midcast.aspir
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '精霊魔法' then
        if elementally_enfeeble_magic:contains(spell.name) then
            set_equip = set_combine(sets.midcast.magic_acc, sets.midcast.elementally_enfeeble)
        elseif spell.name == 'インパクト' then
            set_equip = sets.midcast.impact
        elseif spell.name == 'コメット' then
            set_equip = set_combine(sets.midcast.comet, get_hachirin(spell.element))
        else
            if is_sp then
                set_equip = set_combine(sets.midcast.mb_sp, get_hachirin(spell.element))
                is_sp = false
            elseif is_no_mb then
                set_equip = set_combine(sets.midcast.elemental, get_hachirin(spell.element))
                is_no_mb = false
            elseif is_vagary then
                set_equip = sets.midcast.vagary_task
            else
                set_equip = set_combine(sets.midcast.mb, get_hachirin(spell.element))
            end
        end
    end

    if set_equip then
        equip(set_equip)
        set_priorities_by_mp()
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
        set_priorities_by_mp()
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
        set_priorities_by_mp()
    end
end

-- todo: manawall
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
            return
        end
        windower.add_to_chat(122,'---> ダイバージェンス石造: '..tostring(is_diver_statue))
        equip(sets.aftercast.idle_death)
        set_priorities_by_mp()
    elseif command == 'death' then
        is_death = not is_death
        windower.add_to_chat(122,'---> デス: '..tostring(is_death))
        equip(sets.aftercast.idle_death)
        set_priorities_by_mp()
    elseif command == 'mb_high' then
        sets.midcast.mb = sets.midcast.mb_high
        windower.add_to_chat(122,'---> MB: ATK high, ACC low')
    elseif command == 'mb_mid' then
        sets.midcast.mb = sets.midcast.mb_mid
        windower.add_to_chat(122,'---> MB: ATK mid, ACC mid')
    elseif command == 'mb_low' then
        sets.midcast.mb = sets.midcast.mb_low
        windower.add_to_chat(122,'---> MB: ATK low, ACC high')
    elseif command == 'vagary' then
        is_vagary = not is_vagary
        windower.add_to_chat(122,'---> ベガリーお題: '..tostring(is_vagary))
    elseif command == 'aspir' then
        local recasts = windower.ffxi.get_spell_recasts()
        local recast_time_a3 = recasts[881]/60
        local recast_time_a2 = recasts[248]/60
        local recast_time_a = recasts[247]/60

        if recast_time_a3 == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピルIII')..' <stnpc>')
        elseif recast_time_a2 == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピルII')..' <stnpc>')
        elseif recast_time_a == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピル')..' <stnpc>')
        else
            windower.add_to_chat(30, 'アスピル リキャスト---> III: %.1fs, II: %.1fs, I: %.1fs':format(recast_time_a3, recast_time_a2, recast_time_a))
        end
    end
end

function set_priorities_by_mp()
    local future, current = gearswap.equip_list, gearswap.equip_list_history
    function get_mp(piece)
        if piece and type(piece)=='table' and piece.mp and type(piece.mp)=='number' then
            return piece.mp
        end
        return 0
    end

    for i, v in pairs(future) do
        local priority = get_mp(future[i]) - get_mp(current[i])
        if type(v) == 'table' then
            future[i].priority = priority
        else
            future[i] = {name=v, priority=priority}
        end
        -- windower.add_to_chat(123,future[i].name.." priority="..future[i].priority)
    end
end