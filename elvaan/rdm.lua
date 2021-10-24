include('weather_obi')
function get_sets()
    set_language('japanese')
    
    init_elemental_obi()
    set_elemental_obi("光輪の帯")

    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.weapon = {}

    -- レジストハック装備
    is_immunobreak = false

    is_cure_self = false

    is_dw = false

    -- メインサブ武器変更
    melee_weapon_cycle_num = 4
    melee_weapon_cycle = 0
    melee_weapon = 'tauret'

    sets.magic_enhance_skill = T{'ストライ', 'ストライII',
                                'エンサンダー', 'エンストーン', 'エンエアロ', 'エンブリザド', 'エンファイア', 'エンウォータ',
                                'エンサンダーII', 'エンストーンII', 'エンエアロII', 'エンブリザドII', 'エンファイアII', 'エンウォータII',}

    sets.magic_enhance_skill_500 = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ',
                                    'バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ', 'オーラ',}
    sets.magic_gain = T{ 'ゲインバイト', 'ゲインマイン', 'ゲインカリス', 'ゲインアジル', 'ゲインスト', 'ゲインイン', 'ゲインデック',}
    sets.magic_enfeeble_mnd = T{'パライズ', 'パライズII', 'スロウ', 'スロウII', 'アドル', 'アドルII',}
    sets.magic_enfeeble_mnd_and_skill = T{'ディストラ', 'ディストラII', 'ディストラIII', 'フラズルIII',}
    sets.magic_enfeeble_mnd_acc = T{'ディア', 'ディアII', 'ディアIII', 'サイレス', 'フラズル', 'フラズルII',}
    sets.magic_enfeeble_int = T{'ブライン', 'ブラインII', 'グラビデ', 'グラビデII','ポイズン', 'ポイズンII',}
    sets.magic_enfeeble_int_acc = T{'スリプル', 'スリプルII', 'スリプガ', 'バインド', 'ブレイク'}
    sets.magic_enfeeble_duration_sabo = T{'スリプル', 'スリプルII', 'スリプガ', 'バインド', 'ブレイク', 'サイレス','ディア', 'ディアII', 'ディアIII','ポイズン', 'ポイズンII',}

    sets.weapon.hist = {main='empty', sub='empty'}

    sets.weapon.tauret = {main="トーレット", sub="サクロバルワーク",}
    sets.weapon.naegling = {main="ネイグリング", sub="サクロバルワーク",}
    sets.weapon.d1 = {main="クトゥルブナイフ", sub="サクロバルワーク",}
    sets.weapon.crocea_c = {main={ name="クロセアモース", augments={'Path: C',}}, sub="サクロバルワーク",}
    sets.weapon.crocea_b = {main={ name="クロセアモース", augments={'Path: B',}}, sub="サクロバルワーク",}

    sets.weapon.tauret_nin = {main="トーレット", sub="ターニオンダガー+1",}
    sets.weapon.naegling_nin = {main="ネイグリング", sub="ターニオンダガー+1",}
    sets.weapon.d1_nin = {main="クトゥルブナイフ", sub="アーンダガー",}
    sets.weapon.crocea_c_nin = {main={ name="クロセアモース", augments={'Path: C',}}, sub="ターニオンダガー+1",}
    sets.weapon.crocea_daybreak_nin = {main={ name="クロセアモース", augments={'Path: C',}}, sub="デイブレイクワンド",}
    sets.weapon.crocea_b_nin = {main={ name="クロセアモース", augments={'Path: B',}}, sub="ターニオンダガー+1",}

    sets.weapon.enfeeble_mnd = {main="デイブレイクワンド", sub="アムラピシールド",}
    sets.weapon.enfeeble_mnd_nin = {main="マクセンチアス", sub="デイブレイクワンド",}

    sets.weapon.enfeeble_dispelga = {main="デイブレイクワンド", sub="マクセンチアス",}

    sets.weapon.enfeeble_int = {main="ネイグリング", sub="アムラピシールド",}
    sets.weapon.enfeeble_int_nin = {main="ネイグリング", sub="マクセンチアス",}

    sets.weapon.enfeeble_acc = {main="クロセアモース", sub="アムラピシールド",}
    sets.weapon.enfeeble_acc_nin = {main="クロセアモース", sub="マクセンチアス",}

    sets.th = {
        head="白ララブキャップ+1",
        legs={ name="マーリンシャルワ", augments={'CHR+9','MND+2','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.fc = {
        head="ＡＴシャポー+3",
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        legs="アヤモコッシャレ+2",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.ws.magic = {
        ammo="ペムフレドタスラム",
        head="ジャリコロナル+2",
        body={ name="マーリンジュバ", augments={'AGI+8','"Mag.Atk.Bns."+24','Weapon skill damage +7%','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
        hands="ジャリカフス+2",
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="フォシャゴルゲット",
        waist="オルペウスサッシュ",
        left_ear="マリグナスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.ws.magic_dark = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body={ name="マーリンジュバ", augments={'AGI+8','"Mag.Atk.Bns."+24','Weapon skill damage +7%','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
        hands="ジャリカフス+2",
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="水影の首飾り",
        waist="オルペウスサッシュ",
        left_ear="マリグナスピアス",
        right_ear="王将の耳飾り",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
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

    sets.precast.ws.critical = {
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

    sets.precast.ws['ガストスラッシュ'] = sets.precast.ws.magic
    sets.precast.ws['サイクロン'] = sets.precast.ws.magic
    sets.precast.ws['エナジースティール'] = sets.precast.ws.magic
    sets.precast.ws['エナジードレイン'] = sets.precast.ws.magic
    sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.magic
    sets.precast.ws['エヴィサレーション'] = sets.precast.ws.critical
    
    sets.precast.ws['バーニングブレード'] = sets.precast.ws.magic
    sets.precast.ws['レッドロータス'] = sets.precast.ws.magic
    sets.precast.ws['シャインブレード'] = sets.precast.ws.magic
    sets.precast.ws['セラフブレード'] = sets.precast.ws.magic
    sets.precast.ws['サンギンブレード'] = sets.precast.ws.magic_dark
    sets.precast.ws['サベッジブレード'] = sets.precast.ws.multi
    sets.precast.ws['シャンデュシニュ'] = sets.precast.ws.critical
    sets.precast.ws['レクイエスカット'] = sets.precast.ws.multi

    sets.precast.ability['連続魔'] = {body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},}

    sets.midcast.enhance_duration_self = {
        -- sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands="ＡＴグローブ+3",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＬＴウゾー+1",
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_duration_others = {
        -- sub="アムラピシールド",
        head="ＬＴシャペル+1",
        body="ＬＴサヨン+1",
        hands="ＡＴグローブ+3",
        legs="ＬＴフュゾー+1",
        feet="ＬＴウゾー+1",
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_skill = {
        main="プクラトムージュ+1",
        sub={ name="フォフェンド+1", augments={'Path: A',}},
        head="ビファウルクラウン",
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands="ＶＩグローブ+3",
        legs="ＡＴタイツ+3",
        feet="ＬＴウゾー+1",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        right_ear="ミミルピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_skill_500 = {
        -- sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands="ＡＴグローブ+3",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＬＴウゾー+1",
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.ba = set_combine(sets.midcast.enhance_skill_500, {legs="シェダルサラウィル",})
    sets.midcast.enhance_gain = set_combine(sets.midcast.enhance_skill_500, {hands="ＶＩグローブ+3",})

    -- 強化スキル 500, 被ファランクス 17 (35+17=52)
    sets.midcast.phalanx_self = {
        main="エグキング",
        sub="アムラピシールド",
        head={ name="テーオンシャポー", augments={'Phalanx +3',}},
        body={ name="テーオンタバード", augments={'Phalanx +3',}},
        hands={ name="テーオングローブ", augments={'Phalanx +3',}},
        legs={ name="テーオンタイツ", augments={'Phalanx +3',}},
        feet={ name="テーオンブーツ", augments={'Phalanx +3',}},
        neck="インカンタートルク",
        waist="エンブラサッシュ",
        left_ear="アンドアーピアス",
        right_ear="ミミルピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.phalanx_self_nin = {
        main="プクラトムージュ+1",
        sub="エグキング",
        head={ name="テーオンシャポー", augments={'Phalanx +3',}},
        body={ name="テーオンタバード", augments={'Phalanx +3',}},
        hands={ name="テーオングローブ", augments={'Phalanx +3',}},
        legs={ name="テーオンタイツ", augments={'Phalanx +3',}},
        feet={ name="テーオンブーツ", augments={'Phalanx +3',}},
        neck="デュエルトルク+2",
        waist="エンブラサッシュ",
        left_ear="アンドアーピアス",
        right_ear="ミミルピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.phalanx = sets.midcast.phalanx_self

    sets.midcast.phalanx_others = set_combine(sets.midcast.enhance_duration_others, {left_ear="アンドアーピアス", right_ring="スティキニリング+1",})

    sets.midcast.cure = {
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body={ name="ＶＩタバード+3", augments={'Enhances "Chainspell" effect',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＡＴタイツ+3",
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        waist="ピュシアサッシュ+1",
        left_ear="メンデカントピアス",
        right_ear="ノーヴィアピアス",
        right_ring="レベッチェリング",
    }

    sets.midcast.skin = set_combine(sets.midcast.enhance_duration_self, {legs="シェダルサラウィル", neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast.aquaveil = set_combine(sets.midcast.enhance_duration_self, {head="ＡＭコイフ+1", legs="シェダルサラウィル",})
    sets.midcast.refresh_self = set_combine(sets.midcast.enhance_duration_self, {head="ＡＭコイフ+1", body="ＡＴタバード+3",legs="ＬＴフュゾー+1",})
    sets.midcast.refresh_others = set_combine(sets.midcast.enhance_duration_others, {head="ＡＭコイフ+1", body="ＡＴタバード+3",legs="ＬＴフュゾー+1",})
    sets.midcast.protect_shell_self = set_combine(sets.midcast.enhance_duration_self, {right_ear="ブラキュラピアス",})

    sets.midcast.enfeeble_skill = {
        main={ name="グリオアヴァール", augments={'Enfb.mag. skill +15','INT+14','Mag. Acc.+24','"Mag.Atk.Bns."+16',}},
        sub="メフィテスグリップ",
        ammo="クォーツタスラム+1",
        head="ＶＩシャポー+3",
        body="ＡＴタバード+3",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="インカンタートルク",
        waist="ルミネートサッシュ",
        left_ear="ヴォルピアス",
        right_ear="インフィブルピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +7','Mag. Acc.+9',}},
    }

    sets.midcast.magic_enfeeble_mnd = {
        ammo="クォーツタスラム+1",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_mnd_and_skill = {
        ammo="クォーツタスラム+1",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルミネートサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_mnd_acc = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＡＴタバード+3",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic_enfeeble_int = {
        ammo="ペムフレドタスラム",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_int_acc = {
        ammo="ペムフレドタスラム",
        head="ＶＩシャポー+3",
        body="ＡＴタバード+3",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_duration_sabo = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs="ＬＴフュゾー+1",
        feet="ＬＴウゾー+1",
        neck={ name="デュエルトルク+2", augments={'Path: A',}},
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_acc = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_dispelga = {
        range="ウルル",
        head="ＶＩシャポー+3",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +2','INT+14','Mag. Acc.+13',}},
        feet="ＶＩブーツ+3",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="スノトラピアス",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_mb = {
        -- main={ name="マランスタッフ+1", augments={'Path: A',}},
        -- sub="エンキストラップ",
        -- ammo="ペムフレドタスラム",
        -- head="エアハット+1",
        -- body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        -- hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        -- legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+8%','INT+15','Mag. Acc.+5','"Mag.Atk.Bns."+3',}},
        -- feet="ジャリピガッシュ+2",
        -- neck="水影の首飾り",
        -- waist="サクロコード",
        -- left_ear="王将の耳飾り",
        -- right_ear="マリグナスピアス",
        -- left_ring="フレキリング",
        -- right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        -- back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
        main={ name="マランスタッフ+1", augments={'Path: A',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＶＩブーツ+3", augments={'Immunobreak Chance',}},
        neck="水影の首飾り",
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.aftercast.melee_atk = {
        range=empty,
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="アヤモマノポラ+2",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="アヌートルク",
        waist="オルペウスサッシュ",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ヘタイロイリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    sets.aftercast.melee_sb = {
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

    sets.aftercast.melee_en = {
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
        left_ring={name="スティキニリング+1", bag="Wardrobe"},
        right_ring="ヘタイロイリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.aftercast.melee_en_dmg = {
        range="ウルル",
        ammo=empty,
        head="ウムシクハット",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs="ＶＩタイツ+3",
        feet={ name="テーオンブーツ", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}},
        neck="デュエルトルク+2",
        waist="オルペウスサッシュ",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe"},
        right_ring="ヘタイロイリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    sets.aftercast.melee = sets.aftercast.melee_atk

    sets.aftercast.idle = {
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

    -- 自己ケアル
    sets.hp_max_down = {
        ammo="チフィアスティング",
        head="妖蟲の髪飾り+1",
        body=empty,
        hands=empty,
        legs=empty,
        feet="コンデットシューズ",
        waist="スカウターロープ",
        left_ear="インフラクスピアス",
        right_ear="グライアピアス",
        left_ring="サンゴマリング",
        right_ring="メフィタスリング+1",
        back="ヴァテスケープ+1",
    }

    sets.midcast.cure_hp_max_down = {
        ammo="プシロメン",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ヴリコダラジュポン",
        hands={ name="ブレムテグローブ", augments={'HP+30','MP+30','HP+30',}},
        legs="ＡＴタイツ+3",
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        neck="デュアルカラー+1",
        waist="ギシドゥバサッシュ",
        left_ear="エテオレートピアス",
        right_ear="メンデカントピアス",
        left_ring="クナジリング",
        right_ring="メネロスリング",
        back="月光の羽衣",
    }

    sets.aftercast.dw_30 = {
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="テーオンブーツ", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}},
        right_ear="素破の耳",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }

    send_command('wait 1; input //gs c ws')
    -- マクロのブック, セット変更
    send_command('input /macro book 8; wait 0.5; input /macro set 1; wait 0.5; input /si rdm;')
    
end

local function set_weapon_by_sub_job(sub_job, weapon)
    if sub_job == '忍' then
        sets.midcast.magic_enfeeble_mnd = set_combine(sets.midcast.magic_enfeeble_mnd, sets.weapon.enfeeble_mnd_nin)
        sets.midcast.magic_enfeeble_mnd_and_skill = set_combine(sets.midcast.magic_enfeeble_mnd_and_skill, sets.weapon.enfeeble_mnd_nin)
        sets.midcast.magic_enfeeble_mnd_acc = set_combine(sets.midcast.magic_enfeeble_mnd_acc, sets.weapon.enfeeble_mnd_nin)
        sets.midcast.magic_enfeeble_int = set_combine(sets.midcast.magic_enfeeble_int, sets.weapon.enfeeble_int_nin)
        sets.midcast.magic_enfeeble_int_acc = set_combine(sets.midcast.magic_enfeeble_int_acc, sets.weapon.enfeeble_int_nin)
        sets.midcast.magic_acc = set_combine(sets.midcast.magic_acc, sets.weapon.enfeeble_acc_nin)
        sets.midcast.magic_enfeeble_duration_sabo = set_combine(sets.midcast.magic_enfeeble_duration_sabo, sets.weapon.enfeeble_acc_nin)

        sets.midcast.magic_dispelga = set_combine(sets.midcast.magic_dispelga, sets.weapon.enfeeble_dispelga)

        sets.midcast.phalanx = sets.midcast.phalanx_self_nin

        if weapon == 'tauret' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.tauret_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.tauret_nin)
        elseif weapon == 'd1' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.d1_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.d1_nin)
        elseif weapon == 'crocea_c' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.crocea_c_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.crocea_c_nin)
        elseif weapon == 'crocea_b' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.crocea_b_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.crocea_b_nin)
        end
        
        if sets.weapon.hist.main ~= 'empty' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, {main=sets.weapon.hist.main})
            sets.aftercast.idle = set_combine(sets.aftercast.idle, {main=sets.weapon.hist.main})
        end
        if sets.weapon.hist.sub ~= 'empty' then
            add_to_chat(sets.weapon.hist.sub_job)
            sets.aftercast.melee = set_combine(sets.aftercast.melee, {sub=sets.weapon.hist.sub})
            sets.aftercast.idle = set_combine(sets.aftercast.idle, {sub=sets.weapon.hist.sub})
        end
        send_command('input /lockstyleset 4 echo;')
    else
        sets.midcast.magic_enfeeble_mnd = set_combine(sets.midcast.magic_enfeeble_mnd, sets.weapon.enfeeble_mnd)
        sets.midcast.magic_enfeeble_mnd_and_skill = set_combine(sets.midcast.magic_enfeeble_mnd_and_skill, sets.weapon.enfeeble_mnd)
        sets.midcast.magic_enfeeble_mnd_acc = set_combine(sets.midcast.magic_enfeeble_mnd_acc, sets.weapon.enfeeble_mnd)
        sets.midcast.magic_enfeeble_int = set_combine(sets.midcast.magic_enfeeble_int, sets.weapon.enfeeble_int)
        sets.midcast.magic_enfeeble_int_acc = set_combine(sets.midcast.magic_enfeeble_int_acc, sets.weapon.enfeeble_int)
        sets.midcast.magic_acc = set_combine(sets.midcast.magic_acc, sets.weapon.enfeeble_acc)
        sets.midcast.magic_enfeeble_duration_sabo = set_combine(sets.midcast.magic_enfeeble_duration_sabo, sets.weapon.enfeeble_acc)

        sets.midcast.magic_dispelga = set_combine(sets.midcast.magic_dispelga, sets.weapon.enfeeble_mnd)

        sets.midcast.phalanx = sets.midcast.phalanx_self

        sets.aftercast.melee = set_combine(sets.aftercast.melee, {back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}})
        sets.aftercast.idle = set_combine(sets.aftercast.idle, {back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}})

        if weapon == 'tauret' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.tauret)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.tauret)
        elseif weapon == 'd1' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.d1)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.d1)
        elseif weapon == 'crocea_c' or weapon == 'daybreak' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.crocea_c)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.crocea_c)
        elseif weapon == 'crocea_b' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.crocea_b)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.crocea_b)
        end

        if sets.weapon.hist.main ~= 'empty' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, {main=sets.weapon.hist.main})
            sets.aftercast.idle = set_combine(sets.aftercast.idle, {main=sets.weapon.hist.main})
        end
        send_command('input /lockstyleset 5 echo;')
    end
end

local function set_weapon_hist()
    if player.equipment.main ~= 'empty' then
        sets.weapon.hist.main = gearswap.equip_list_history.main
    end
    if player.equipment.sub ~= 'empty' then
        sets.weapon.hist.sub = gearswap.equip_list_history.sub
    end
    sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.hist)
    sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.hist)
end

function pretarget(spell)
    local set_equip = nil

    if is_cure_self then
        windower.add_to_chat(122,'---> HP MAX DOWN')
        set_equip = sets.hp_max_down
        is_cure_self = false
    end

    set_weapon_hist()

    if spell.name == 'ディスペガ' then
        set_equip = {main="デイブレイクワンド"}
    end

    if set_equip then
        equip(set_equip)
    end
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WhiteMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'BlackMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.multi
        end
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if string.find(spell.name, 'ケアル') then
        if spell.target.type == 'SELF' then
            set_equip = sets.midcast.cure_hp_max_down
        else
            set_equip = set_combine(sets.midcast.cure, get_hachirin(spell.element))
        end
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = sets.midcast.skin
        elseif spell.name == 'アクアベール' then
            set_equip = sets.midcast.aquaveil
        elseif string.find(spell.name, 'プロテ') or string.find(spell.name, 'シェル') then
            if spell.target.type == 'SELF' then
                set_equip = sets.midcast.protect_shell_self
            else
                set_equip = sets.midcast.enhance_duration_others
            end
        elseif string.find(spell.name, 'ファランクス') then
            if spell.target.type == 'SELF' then
                set_equip = sets.midcast.phalanx
            else
                set_equip = sets.midcast.phalanx_others
            end
        elseif sets.magic_enhance_skill:contains(spell.name) then
            set_equip = sets.midcast.enhance_skill
        elseif sets.magic_enhance_skill_500:contains(spell.name) then
            set_equip = sets.midcast.ba
        elseif sets.magic_gain:contains(spell.name) then
            set_equip = sets.midcast.enhance_gain
        elseif string.find(spell.name, 'デジョン') or string.find(spell.name, 'テレポ') or spell.name == 'リトレース' or spell.name == 'エスケプ' then
            set_equip = {waist="ニヌルタサッシュ",}
        elseif string.find(spell.name, 'リフレシュ') then
            if spell.target.type == 'SELF' then
                set_equip = sets.midcast.refresh_self
            else
                set_equip = sets.midcast.refresh_others
            end
        else
            if spell.target.type == 'SELF' then
                set_equip = sets.midcast.enhance_duration_self
            else
                set_equip = sets.midcast.enhance_duration_others
            end
        end
    elseif spell.skill == '弱体魔法' then
        if is_immunobreak then
            set_equip = sets.midcast.enfeeble_skill
            is_immunobreak = false
        elseif buffactive['サボトゥール'] and sets.magic_enfeeble_duration_sabo:contains(spell.name) then
            set_equip = sets.midcast.magic_enfeeble_duration_sabo
        elseif sets.magic_enfeeble_mnd:contains(spell.name) then
            set_equip = sets.midcast.magic_enfeeble_mnd
        elseif sets.magic_enfeeble_mnd_and_skill:contains(spell.name) then
            set_equip = sets.midcast.magic_enfeeble_mnd_and_skill
        elseif sets.magic_enfeeble_mnd_acc:contains(spell.name) then
            set_equip = sets.midcast.magic_enfeeble_mnd_acc
        elseif sets.magic_enfeeble_int:contains(spell.name) then
            set_equip = sets.midcast.magic_enfeeble_int
        elseif sets.magic_enfeeble_int_acc:contains(spell.name) then
            set_equip = sets.midcast.magic_enfeeble_int_acc
        elseif spell.name == 'ディスペガ' then
            set_equip = sets.midcast.magic_dispelga
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '暗黒魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '精霊魔法' then
        set_equip = set_combine(sets.midcast.magic_mb, get_hachirin(spell.element))
    end

    if set_equip then
        equip(set_equip)
    end

end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        if is_dw then
            set_equip = set_combine(sets.aftercast.melee, sets.aftercast.dw_30)
        else
            set_equip = sets.aftercast.melee
        end
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
        if is_dw then
            set_equip = set_combine(sets.aftercast.melee, sets.aftercast.dw_30)
        else
            set_equip = sets.aftercast.melee
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'break' then
        is_immunobreak = not is_immunobreak
        windower.add_to_chat(122,'---> レジストハック: '..tostring(is_immunobreak))
    elseif command == 'wc' then
        melee_weapon_cycle = melee_weapon_cycle + 1
        sets.weapon.hist = {main=empty, sub=empty}
        if melee_weapon_cycle % melee_weapon_cycle_num == 0 then
            melee_weapon = 'tauret'
            sets.aftercast.melee = sets.aftercast.melee_atk
            set_weapon_by_sub_job(player.sub_job, melee_weapon)
            status_change(player.status)
            windower.add_to_chat(122,'---> トーレット')
        elseif melee_weapon_cycle % melee_weapon_cycle_num == melee_weapon_cycle_num - 1 then
            melee_weapon = 'd1'
            sets.aftercast.melee = sets.aftercast.melee_en
            set_weapon_by_sub_job(player.sub_job, melee_weapon)
            status_change(player.status)
            windower.add_to_chat(122,'---> D1')
        elseif melee_weapon_cycle % melee_weapon_cycle_num == melee_weapon_cycle_num - 2 then
            melee_weapon = 'crocea_b'
            sets.aftercast.melee = sets.aftercast.melee_sb
            set_weapon_by_sub_job(player.sub_job, melee_weapon)
            status_change(player.status)
            windower.add_to_chat(122,'---> クロセアモース(B)')
        elseif melee_weapon_cycle % melee_weapon_cycle_num == melee_weapon_cycle_num - 3 then
            melee_weapon = 'crocea_c'
            sets.aftercast.melee = sets.aftercast.melee_atk
            set_weapon_by_sub_job(player.sub_job, melee_weapon)
            status_change(player.status)
            windower.add_to_chat(122,'---> クロセアモース(C)')
        end
    elseif command ==  'ws' then
        melee_weapon = 'crocea_c'
        sets.aftercast.melee = sets.aftercast.melee_atk
        set_weapon_by_sub_job(player.sub_job, melee_weapon)
        status_change(player.status)
    elseif command == 'cure_self' then
        is_cure_self = not is_cure_self
        windower.add_to_chat(122,'---> 自己ケアル: '..tostring(is_cure_self))
    elseif command == 'dw' then
        is_dw = not is_dw
        windower.add_to_chat(122,'---> 二刀流+30: '..tostring(is_dw))
    elseif command == 'melee' then
        if is_dw then
            equip(sets.aftercast.melee, sets.aftercast.dw_30)
            windower.add_to_chat(122,'---> MELEE(二刀流+30)')
        else
            equip(sets.aftercast.melee)
            windower.add_to_chat(122,'---> MELEE')
        end
    elseif command == 'endmg' then
        sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.aftercast.melee_en_dmg)
        status_change(player.status)
        windower.add_to_chat(122,'---> MELEE(魔法剣ダメージ+)')
    end
end

function sub_job_change(new, old)
    
    if new ~= old then
        send_command('wait 1; input //gs c ws')
    end

end