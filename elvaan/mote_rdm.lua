function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['サボトゥール'] = buffactive['サボトゥール'] or false
    state.Buff['コンポージャー'] = buffactive['コンポージャー'] or false

    enfeeble_spell_maps = {
        ['パライズ']='MND', ['パライズII']='MND', ['スロウ']='MND', ['スロウII']='MND', ['アドル']='MND', ['アドルII']='MND',
        ['ディストラ']='MND_Skill', ['ディストラII']='MND_Skill', ['ディストラIII']='MND_Skill', ['フラズルIII']='MND_Skill',
        ['ディア']='MND_Acc', ['ディアII']='MND_Acc', ['ディアIII']='MND_Acc', ['サイレス']='MND_Acc', ['フラズル']='MND_Acc', ['フラズルII']='MND_Acc',
        ['ブライン']='INT', ['ブラインII']='INT', ['グラビデ']='INT', ['グラビデII']='INT',
        ['ポイズン']='INT_Skill', ['ポイズンII']='INT_Skill',
        ['スリプル']='INT_Acc', ['スリプルII']='INT_Acc', ['スリプガ']='INT_Acc', ['バインド']='INT_Acc', ['ブレイク']='INT_Acc',
    }

    enfeeble_spell_maps_saboteur = {
        ['スリプル']='Saboteur', ['スリプルII']='Saboteur', ['スリプガ']='Saboteur',
        ['バインド']='Saboteur', ['ブレイク']='Saboteur', ['サイレス']='Saboteur',
        ['ディア']='Saboteur', ['ディアII']='Saboteur', ['ディアIII']='Saboteur',['ポイズン']='Saboteur', ['ポイズンII']='Saboteur',
    }

    include('Mote-TreasureHunter')
    include('Mote-Display')
    include('auto_rdm')
    include('weather_obi')
    include('mystyle')
    include('myexport')
    
    select_default_macro_book()
    mogmaster('rdm')
end

function user_setup()
    state.OffenseMode:options('Normal', 'SubtleBlow', 'Stp', 'DW31', 'EnSpell')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal')
    state.CastingMode:options('MB', 'Normal')
    state.IdleMode:options('Normal', 'Refresh')
    state.Weapons = M{
        ['description']='Use Weapons', 
        'Crocea_C',
        'Crocea_B',
        'Naegling',
        'Tauret',
        'Mandau',
        'Crocea_C_DayBreak',
        'D1',
        'DayBreak',
        'Maxentius',
        'Crocea_C_Levante',
    }
    state.Hi_EnSpell = M(false, 'High EnSpell')
    state.Immunobreak = M(false, "Immunobreak")

    init_auto_mode()

    bool_state = {
        {label='Hi-EnSpell', mode='Hi_EnSpell', alys_disp=false},
        {label='Immunobreak', mode='Immunobreak', alys_disp=false}}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Cast', mode='CastingMode'},
        {label='Idle', mode='IdleMode'},
        {label='Weapon', mode='Weapons'},
        {label='Auto', mode='AutoMode'},
    }
    init_job_states(bool_state, mode_state)
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    send_command('bind f3 gs c cycle IdleMode')
    send_command('bind ^f3 gs c cycle CastingMode')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')
    send_command('bind f5 gs c toggle Hi_EnSpell')
    send_command('bind f6 gs c cycle AutoMode')

end

function binds_on_unload()
    send_command('unbind f1')
    send_command('unbind ^f1')
    send_command('unbind f2')
    send_command('unbind ^f2')
    send_command('unbind f3')
    send_command('unbind ^f3')
    send_command('unbind f4')
    send_command('unbind ^f4')
    send_command('unbind f5')
    send_command('unbind f6')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    -- sets.weapons.Crocea_C_DW = {main={ name="クロセアモース", augments={'Path: C',}}, sub="トーレット",}
    crocea_c_dw = {main={ name="クロセアモース", augments={'Path: C',}}, sub={ name="グレティナイフ", augments={'Path: A',}},}
    crocea_b_dw = {main={ name="クロセアモース", augments={'Path: B',}}, sub={name="ターニオンダガー+1",},}
    crocea_c_daybreak_dw = {main={ name="クロセアモース", augments={'Path: C',}}, sub={name="デイブレイクワンド",},}
    crocea_c_levante_dw = {main={ name="クロセアモース", augments={'Path: C',}}, sub={name="レヴァンテダガー",},}
    naegling_dw = { main={name="ネイグリング"}, sub={name="ターニオンダガー+1",}}
    daybreak_dw = {main={name="デイブレイクワンド"}, sub={name="トーレット",},}
    maxentius_dw =  {main={name="マクセンチアス"}, sub={name="ターニオンダガー+1",},}
    tauret_dw = {main={name="トーレット"}, sub={name="ターニオンダガー+1",},}
    mandau_dw = {main={name="マンダウ"}, sub={name="ターニオンダガー+1",},}
    d1_dw = {main={name="クトゥルブナイフ"}, sub={name="インフィルトレータ",},}

    crocea_c = {main={ name="クロセアモース", augments={'Path: C',}}, sub={name="サクロバルワーク",},}
    crocea_b = {main={ name="クロセアモース", augments={'Path: B',}}, sub={name="サクロバルワーク",},}
    crocea_c_daybreak = {main={ name="クロセアモース", augments={'Path: C',}}, sub={name="サクロバルワーク",},}
    crocea_c_levante = {main={ name="クロセアモース", augments={'Path: C',}}, sub={name="サクロバルワーク",},}
    naegling = { main={name="ネイグリング"}, sub={name="サクロバルワーク",},}
    daybreak = {main={name="デイブレイクワンド"}, sub={name="サクロバルワーク",},}
    maxentius =  {main={name="マクセンチアス"}, sub={name="サクロバルワーク",},}
    tauret = {main={name="トーレット"}, sub={name="サクロバルワーク",},}
    mandau = {main={name="マンダウ"}, sub={name="サクロバルワーク",},}
    d1 = {main={name="クトゥルブナイフ"}, sub={name="サクロバルワーク",},}

    sets.weapons.Enfeeble_MND = {main={name="デイブレイクワンド"}, sub={name="アムラピシールド"},}
    sets.weapons.Enfeeble_MND_DW = {main={name="マクセンチアス"}, sub={name="デイブレイクワンド"},}

    sets.weapons.Enfeeble_dispelga = {main={name="デイブレイクワンド"}, sub={name="アムラピシールド"},}
    sets.weapons.Enfeeble_dispelga_DW = {main={name="デイブレイクワンド"}, sub={name="マクセンチアス"},}

    sets.weapons.Enfeeble_INT = {main={name="ネイグリング"}, sub={name="アムラピシールド"},}
    sets.weapons.Enfeeble_INT_DW = {main={name="ネイグリング"}, sub={name="マクセンチアス"},}

    sets.weapons.Enfeeble_Acc = {main={name="クロセアモース"}, sub={name="アムラピシールド"},}
    sets.weapons.Enfeeble_Acc_DW = {main={name="クロセアモース"}, sub={name="マクセンチアス"},}

    sets.weapons.ElementalMagic = {main={ name="ブンジロッド", augments={'Path: A',}}, sub={name="アムラピシールド"},}
    sets.weapons.ElementalMagic_DW =  {main={ name="ブンジロッド", augments={'Path: A',}}, sub={name="マクセンチアス"},}

    sets.TreasureHunter = {
        head="ヴォルトキャップ",
        legs={ name="マーリンシャルワ", augments={'CHR+9','MND+2','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        head="ＡＴシャポー+3",
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        legs="アヤモコッシャレ+2",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    -- sets.precast.FC.Phalanx = {
    --     back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    -- }

    sets.precast.FC['インパクト'] = {
        head=empty,
        body="トワイライトプリス",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        waist="エンブラサッシュ",
        left_ear="エテオレートピアス",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.FC['ディスペガ'] = set_combine(sets.precast.FC, {main="デイブレイクワンド",})

    sets.midcast.FastRecast = set_combine(sets.precast.FC, {waist="ニヌルタサッシュ",})

    sets.precast.WS = { -- Multi
        ammo="オゲルミルオーブ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="ＶＩタイツ+3",
        feet="マリグナスブーツ",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring={ name="カコエシクリング+1", augments={'Path: A',}},
        right_ring="イラブラットリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS.magic = {
        ammo="ペムフレドタスラム",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ジャリカフス+2",
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet="ＬＴウゾー+2",
        neck="フォシャゴルゲット",
        waist="オルペウスサッシュ",
        left_ear="マリグナスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.magic_dark = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ジャリカフス+2",
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet="ＬＴウゾー+2",
        neck="シビルスカーフ",
        waist="オルペウスサッシュ",
        left_ear="マリグナスピアス",
        right_ear="王将の耳飾り",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.critical = {
        ammo="イェットシーラ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="ＶＩタイツ+3",
        feet="セレオイドグリーヴ",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring={ name="カコエシクリング+1", augments={'Path: A',}},
        right_ring="イラブラットリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.WS.wsd = {
        ammo="オゲルミルオーブ+1",
        head={ name="ＶＩシャポー+3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ＡＴグローブ+3",
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="フォシャゴルゲット",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring={ name="メタモルリング+1", augments={'Path: A',}},
        right_ring="イラブラットリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS['ガストスラッシュ'] = sets.precast.WS.magic
    sets.precast.WS['サイクロン'] = sets.precast.WS.magic
    sets.precast.WS['エナジースティール'] = sets.precast.WS.magic
    sets.precast.WS['エナジードレイン'] = sets.precast.WS.magic
    sets.precast.WS['イオリアンエッジ'] = sets.precast.WS.magic
    sets.precast.WS['エヴィサレーション'] = sets.precast.WS.critical
    sets.precast.WS['マーシーストローク'] = sets.precast.WS.wsd
    
    sets.precast.WS['バーニングブレード'] = sets.precast.WS.magic
    sets.precast.WS['レッドロータス'] = sets.precast.WS.magic
    sets.precast.WS['シャインブレード'] = sets.precast.WS.magic
    sets.precast.WS['セラフブレード'] = sets.precast.WS.magic
    sets.precast.WS['サンギンブレード'] = sets.precast.WS.magic_dark
    sets.precast.WS['サベッジブレード'] = sets.precast.WS.wsd
    sets.precast.WS['シャンデュシニュ'] = sets.precast.WS.critical
    sets.precast.WS['レクイエスカット'] = sets.precast.WS
    sets.precast.WS['サークルブレード'] = sets.precast.WS.wsd

    sets.precast.WS['ブラックヘイロー'] = sets.precast.WS.wsd

    sets.precast.JA['連続魔'] =  {body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},}

    sets.midcast['強化魔法'] = {
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands="ＡＴグローブ+3",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＬＴウゾー+2",
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        right_ear={ name="レサジーピアス", },
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    -- sets.midcast.Enhancing_Others = {
    sets.midcast['強化魔法'].Others = {
        head="ＬＴシャペル+2",
        body="ＬＴサヨン+2",
        hands="ＡＴグローブ+3",
        legs="ＬＴフュゾー+2",
        feet="ＬＴウゾー+2",
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        right_ear={ name="レサジーピアス", },
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhancing_skill = {
        main="プクラトムージュ+1",
        sub={ name="フォフェンド+1", augments={'Path: A',}},
        head="ビファウルクラウン",
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands="ＶＩグローブ+3",
        legs="ＡＴタイツ+3",
        feet="ＬＴウゾー+2",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="ミミルピアス",
        right_ear="アンドアーピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhancing_skill_500 = {
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands="ＡＴグローブ+3",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＬＴウゾー+2",
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        right_ear={ name="レサジーピアス", },
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast['強化魔法'].EnSpell = sets.midcast.enhancing_skill
    sets.midcast['強化魔法'].Temper = sets.midcast.enhancing_skill
    sets.midcast['強化魔法'].BarElement = set_combine(sets.midcast.enhancing_skill_500, {legs="シェダルサラウィル",})
    sets.midcast['強化魔法'].BarStatus = set_combine(sets.midcast.enhancing_skill_500, {neck="スローダネックレス",})
    sets.midcast['強化魔法'].BoostStat = set_combine(sets.midcast.enhancing_skill_500, {hands="ＶＩグローブ+3",})

    -- 強化スキル 500, 被ファランクス 17 (35+17=52)
    sets.midcast.phalanx_self = {
        main="サクパタソード",
        sub="アムラピシールド",
        head={ name="テーオンシャポー", augments={'Phalanx +3',}},
        body={ name="テーオンタバード", augments={'Phalanx +3',}},
        hands={ name="テーオングローブ", augments={'Phalanx +3',}},
        legs={ name="テーオンタイツ", augments={'Phalanx +3',}},
        feet={ name="テーオンブーツ", augments={'Phalanx +3',}},
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
        right_ear={ name="レサジーピアス", },
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.phalanx_self_DW = {
        main="サクパタソード",
        sub="エグキング",
        head={ name="テーオンシャポー", augments={'Phalanx +3',}},
        body={ name="テーオンタバード", augments={'Phalanx +3',}},
        hands={ name="テーオングローブ", augments={'Phalanx +3',}},
        legs={ name="テーオンタイツ", augments={'Phalanx +3',}},
        feet={ name="テーオンブーツ", augments={'Phalanx +3',}},
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
        right_ear={ name="レサジーピアス", },
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast['強化魔法'].Phalanx = sets.midcast.phalanx_self

    sets.midcast['強化魔法'].Phalanx_Others = sets.midcast['強化魔法'].Others

    sets.midcast['強化魔法']['ストンスキン'] = set_combine(sets.midcast['強化魔法'], {legs="シェダルサラウィル", neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast['強化魔法']['アクアベール'] = set_combine(sets.midcast['強化魔法'], {head="ＡＭコイフ+1", legs="シェダルサラウィル",})
    sets.midcast['強化魔法'].Refresh = set_combine(sets.midcast['強化魔法'], {head="ＡＭコイフ+1", body="ＡＴタバード+3",legs="ＬＴフュゾー+2",})
    sets.midcast['強化魔法'].Refresh_Others = set_combine(sets.midcast['強化魔法'].Others, {head="ＡＭコイフ+1", body="ＡＴタバード+3",legs="ＬＴフュゾー+2",})
    sets.midcast['強化魔法'].Regen = set_combine(sets.midcast['強化魔法'], {main="ボレラブンガ", sub="アムラピシールド",})
    sets.midcast['強化魔法'].Regen_Others = set_combine(sets.midcast['強化魔法'].Others, {main="ボレラブンガ", sub="アムラピシールド",})
    sets.midcast['強化魔法'].Protect = set_combine(sets.midcast['強化魔法'], {right_ear="ブラキュラピアス",})
    sets.midcast['強化魔法'].Protect_Others = sets.midcast['強化魔法'].Others
    sets.midcast['強化魔法'].Shell = set_combine(sets.midcast['強化魔法'], {right_ear="ブラキュラピアス",})
    sets.midcast['強化魔法'].Shell_Others = sets.midcast['強化魔法'].Others

    sets.midcast['回復魔法'] = sets.midcast.FastRecast
    sets.midcast['回復魔法'].Cure = {
        ammo="プシロメン",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body="ヴリコダラジュポン",
        hands={ name="ブレムテグローブ", augments={'HP+30','MP+30','HP+30',}},
        legs="ＡＴタイツ+3",
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        neck="デュアルカラー+1",
        waist="ギシドゥバサッシュ",
        left_ear="エテオレートピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        left_ring="クナジリング",
        right_ring="メネロスリング",
        back="月光の羽衣",
    }

    sets.midcast['回復魔法'].Cure_Others = {
        ammo="プシロメン",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body="ヴリコダラジュポン",
        hands={ name="オトミグローブ", augments={'HP+30','MP+30','MP+30',}},
        legs="ＡＴタイツ+3",
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        neck="ロリケートトルク+1",
        waist="ピュシアサッシュ+1",
        left_ear="ハラサズピアス",
        right_ear="ノーヴィアピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back="ソレムニティケープ",
    }

    sets.midcast['回復魔法'].Curaga = {
        ammo="プシロメン",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body="ヴリコダラジュポン",
        hands={ name="ブレムテグローブ", augments={'HP+30','MP+30','HP+30',}},
        legs="ＡＴタイツ+3",
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        neck="デュアルカラー+1",
        waist="ギシドゥバサッシュ",
        left_ear="エテオレートピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        left_ring="クナジリング",
        right_ring="メネロスリング",
        back="月光の羽衣",
    }

    sets.midcast.magic_acc = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'] = sets.midcast.magic_acc

    sets.midcast['暗黒魔法'] = sets.midcast.magic_acc

    sets.midcast.enfeeble_skill = {
        main={ name="グリオアヴァール", augments={'Enfb.mag. skill +15','INT+14','Mag. Acc.+24','"Mag.Atk.Bns."+16',}},
        sub="メフィテスグリップ",
        ammo="クォーツタスラム+1",
        head="ＶＩシャポー+3",
        body="ＡＴタバード+3",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="インカンタートルク",
        waist="ルミネートサッシュ",
        left_ear="ヴォルピアス",
        right_ear="インフィブルピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+1','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast['弱体魔法'].Immunobreak = sets.midcast.enfeeble_skill

    sets.midcast['弱体魔法'].MND = {
        ammo="王将の玉",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'].MND_Skill = {
        ammo="王将の玉",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルミネートサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'].MND_Acc = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＡＴタバード+3",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast['弱体魔法'].INT = {
        ammo="王将の玉",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'].INT_Skill = {
        ammo="クォーツタスラム+1",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'].INT_Acc = {
        ammo="ペムフレドタスラム",
        head="ＶＩシャポー+3",
        body="ＡＴタバード+3",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'].Saboteur = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs="ＬＴフュゾー+2",
        feet="ＬＴウゾー+2",
        neck={ name="デュエルトルク+2", augments={'Path: A',}},
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['ディスペガ'] = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['インパクト'] = {
        range="ウルル",
        head=empty,
        body="トワイライトプリス",
        hands="ジャリカフス+2",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet={ name="ＶＩブーツ+3", augments={'Immunobreak Chance',}},
        neck={ name="デュエルトルク+2", augments={'Path: A',}},
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast['精霊魔法'] = {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="ＬＴシャペル+2",
        body="ＬＴサヨン+2",
        hands="ＬＴガントロ+2",
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="シビルスカーフ",
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast['精霊魔法'].MB = {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="エアハット+1",
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+8%','INT+15','Mag. Acc.+5','"Mag.Atk.Bns."+3',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="水影の首飾り",
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.idle = {
        range=empty,
        ammo="ホミリアリ",
        head="ＶＩシャポー+3",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    sets.idle.Refresh = set_combine(sets.idle, {body="シャマシュローブ",})

    sets.engaged = {
        range=empty,
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="アヤモマノポラ+2",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        -- neck="アヌートルク",
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="オルペウスサッシュ",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        -- right_ring="ヘタイロイリング",
        right_ring="シーリチリング+1",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    sets.engaged.SubtleBlow = {
        range=empty,
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="エアバニピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }

    sets.engaged.Stp = {
        range=empty,
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="アヌートルク",
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="エアバニピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }

    sets.engaged['DW31'] = {
        range=empty,
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet={ name="テーオンブーツ", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}},
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="素破の耳",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    sets.melee_enspell = {
        range="ウルル",
        ammo=empty,
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="アヤモガンビエラ+2",
        neck="デュエルトルク+2",
        waist="オルペウスサッシュ",
        left_ear="シェリダピアス",
        right_ear="素破の耳",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="ヘタイロイリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.melee_hi_enspell = {
        range=empty,
        ammo="スローダタスラム",
        head="ウムシクハット",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs="ＶＩタイツ+3",
        feet={ name="テーオンブーツ", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}},
        neck="デュエルトルク+2",
        waist="オルペウスサッシュ",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring="ヘタイロイリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    sets.engaged.EnSpell = sets.melee_enspell

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
end

function job_post_precast(spell, action, spellMap, eventArgs)
end

function job_midcast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == '精霊魔法' then
        equip(get_hachirin(spell.element))
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)

    if  spell.skill == '弱体魔法' and state.Immunobreak.value and not spell.interrupted then
        state.Immunobreak:unset()
    end
    
    if state.DisplayMode.value then update_job_states() end
end

function customize_idle_set(idleSet)
    local weapon = sets.weapons[state.Weapons.value]
    if player.equipment.sub == weapon.main.name then
        weapon.sub.priority = 1
        weapon.main.priority = 0
    end
    idleSet = set_combine(idleSet, weapon)
    return idleSet
end

function customize_melee_set(meleeSet)
    local weapon = sets.weapons[state.Weapons.value]
    if player.equipment.sub == weapon.main.name then
        weapon.sub.priority = 1
        weapon.main.priority = 0
    end
    meleeSet = set_combine(meleeSet, weapon)
    return meleeSet
end

function job_buff_change(buff, gain)
end

function job_state_change(stateField, newValue, oldValue)
    if stateField == state.Hi_EnSpell.description then
        if newValue then
            sets.engaged.EnSpell = sets.melee_hi_enspell
        else
            sets.engaged.EnSpell = sets.melee_enspell
        end
    end
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function set_equip_weapon(equipSet, weaponSet)
    equipSet.main = weaponSet.main
    equipSet.sub = weaponSet.sub
end

function set_equip_by_sub_job(subJob)
    state.Weapons:reset()
    sub_job_suffix = S{'忍', '踊'}:contains(subJob) and '_DW' or ''

    if S{'忍', '踊'}:contains(subJob) then
        sets.weapons.Crocea_C = crocea_c_dw
        sets.weapons.Crocea_B = crocea_b_dw
        sets.weapons.Tauret = tauret_dw
        sets.weapons.Mandau = mandau_dw
        sets.weapons.Crocea_C_DayBreak = crocea_c_daybreak_dw
        sets.weapons.D1 = d1_dw
        sets.weapons.DayBreak = daybreak_dw
        sets.weapons.Maxentius = maxentius_dw
        sets.weapons.Crocea_C_Levante = crocea_c_levante_dw
        sets.weapons.Naegling = naegling_dw
    else
        sets.weapons.Crocea_C = crocea_c
        sets.weapons.Crocea_B = crocea_b
        sets.weapons.Tauret = tauret
        sets.weapons.Mandau = mandau
        sets.weapons.Crocea_C_DayBreak = crocea_c_daybreak
        sets.weapons.D1 = d1
        sets.weapons.DayBreak = daybreak
        sets.weapons.Maxentius = maxentius
        sets.weapons.Crocea_C_Levante = crocea_c_levante
        sets.weapons.Naegling = naegling
    end

    set_equip_weapon(sets.midcast['弱体魔法'].MND, sets.weapons['Enfeeble_MND'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'].MND_Skill, sets.weapons['Enfeeble_MND'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'].MND_Acc, sets.weapons['Enfeeble_MND'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'].INT, sets.weapons['Enfeeble_INT'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'].INT_Skill, sets.weapons['Enfeeble_INT'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'].INT_Acc, sets.weapons['Enfeeble_INT'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'], sets.weapons['Enfeeble_Acc'..sub_job_suffix])
    set_equip_weapon(sets.midcast['暗黒魔法'], sets.weapons['Enfeeble_Acc'..sub_job_suffix])
    set_equip_weapon(sets.midcast['ディスペガ'], sets.weapons['Enfeeble_dispelga'..sub_job_suffix])
    set_equip_weapon(sets.midcast['インパクト'], sets.weapons['Enfeeble_Acc'..sub_job_suffix])
    set_equip_weapon(sets.midcast['弱体魔法'].Saboteur, sets.weapons['Enfeeble_MND'..sub_job_suffix])
    set_equip_weapon(sets.midcast['精霊魔法'], sets.weapons['ElementalMagic'..sub_job_suffix])
    set_equip_weapon(sets.midcast['精霊魔法'].MB, sets.weapons['ElementalMagic'..sub_job_suffix])

    sets.midcast.Phalanx = sets.midcast['phalanx_self'..sub_job_suffix]

    if state.DisplayMode.value then update_job_states() end

    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_equip_by_sub_job(newSubjob)
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'lockstyle' or cmdParams[1] == 'ls' then
        mystyle('赤', player.sub_job)
    end
end

function job_get_spell_map(spell, default_spell_map)
    if _global.current_event ~= 'midcast' then return default_spell_map end

    local new_spell_map = default_spell_map
    if spell.skill == '弱体魔法' then
        new_spell_map = enfeeble_spell_maps[spell.name]
        if state.Immunobreak.value then
            new_spell_map = 'Immunobreak'
        elseif state.Buff['サボトゥール'] then
            new_spell_map = enfeeble_spell_maps_saboteur[spell.name] or enfeeble_spell_maps[spell.name]
        end
    elseif spell.skill == '強化魔法' then
        if spell.target.type ~= 'SELF' and state.Buff['コンポージャー'] then
            new_spell_map = 'Others'
            if S{'Phalanx', 'Refresh', 'Regen', 'Protect', 'Shell'}:contains(default_spell_map) then
                new_spell_map = default_spell_map..'_'..new_spell_map
            end
        end
    elseif spell.skill == '回復魔法' then
        if default_spell_map == 'Cure' then
            if spell.target.type ~= 'SELF' then
                new_spell_map = default_spell_map..'_Others'
            end
        end
    end

    return new_spell_map
end

function select_default_macro_book()
    set_macro_page(1, 8)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end