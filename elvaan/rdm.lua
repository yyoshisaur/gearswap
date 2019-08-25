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

    -- メインサブ武器変更
    melee_weapon_cycle_num = 3
    melee_weapon_cycle = 0
    melee_weapon = 'tauret'

    sets.magic_enhance_skill = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ',
                                'バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ', 'オーラ',
                                'ファランクス', 'ファランクスII', 'ストライ', 'ストライII',
                                'エンサンダー', 'エンストーン', 'エンエアロ', 'エンブリザド', 'エンファイア', 'エンウォータ',
                                'エンサンダーII', 'エンストーンII', 'エンエアロII', 'エンブリザドII', 'エンファイアII', 'エンウォータII',}

    sets.gain = T{'ゲインバイト', 'ゲインマイン', 'ゲインカリス', 'ゲインアジル', 'ゲインスト', 'ゲインイン', 'ゲインデック',}

    sets.magic_enfeeble_mnd = T{'パライズ', 'パライズII', 'スロウ', 'スロウII', 'アドル', 'アドルII',}
    sets.magic_enfeeble_mnd_and_skill = T{'ディストラ', 'ディストラII', 'ディストラIII', 'フラズルIII', 'ポイズン', 'ポイズンII',}
    sets.magic_enfeeble_mnd_acc = T{'ディア', 'ディアII', 'ディアIII', 'サイレス', 'フラズル', 'フラズルII',}
    sets.magic_enfeeble_int = T{'ブライン', 'グラビデ', 'グラビデII',}
    sets.magic_enfeeble_int_acc = T{'スリプル', 'スリプルII', 'スリプガ', 'バインド', 'ブレイク'}

    sets.weapon.tauret = {main="トーレット", sub="玄冥盾",}
    sets.weapon.naegling = {main="ネイグリング", sub="玄冥盾",}
    sets.weapon.d1 = {main="クトゥルブナイフ", sub="玄冥盾",}
    sets.weapon.tauret_nin = {main="トーレット", sub="ターニオンダガー+1",}
    sets.weapon.naegling_nin = {main="ネイグリング", sub="ターニオンダガー+1",}
    sets.weapon.d1_nin = {main="クトゥルブナイフ", sub="アーンダガー",}
    sets.weapon.enfeeble = {main="ネイグリング", sub="アムラピシールド",}
    sets.weapon.enfeeble_nin = {main="ネイグリング", sub="マクセンチアス",}

    sets.precast.fc = {
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="アヤモコッシャレ+2",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
    }

    sets.precast.ws.magic = {
        ammo="ペムフレドタスラム",
        head="ジャリコロナル+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="ジャリカフス+2",
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="怯懦の耳",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.ws.magic_dark = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="ジャリカフス+2",
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="怯懦の耳",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
        ammo="銀銭",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="カマイングリーヴ+1", augments={'Accuracy+12','DEX+12','MND+20',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="守りの指輪",
        right_ring="アヤモリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws['ガストスラッシュ'] = sets.precast.ws.magic
    sets.precast.ws['サイクロン'] = sets.precast.ws.magic
    sets.precast.ws['エナジースティール'] = sets.precast.ws.magic
    sets.precast.ws['エナジードレイン'] = sets.precast.ws.magic
    sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.magic
    sets.precast.ws['エヴィサレーション'] = sets.precast.ws.multi
    
    sets.precast.ws['サンギンブレード'] = sets.precast.ws.magic_dark
    sets.precast.ws['サベッジブレード'] = sets.precast.ws.multi
    sets.precast.ws['シャンデュシニュ'] = sets.precast.ws.multi

    sets.precast.ability['連続魔'] = {body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},}

    sets.midcast.enhance_duration_self = {
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands="ＡＴグローブ+3",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＬＴウゾー+1",
        waist="ニヌルタサッシュ",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_duration_others = {
        sub="アムラピシールド",
        head="ＬＴシャペル+1",
        body="ＬＴサヨン+1",
        hands="ＡＴグローブ+3",
        legs="ＬＴフュゾー+1",
        feet="ＬＴウゾー+1",
        waist="ニヌルタサッシュ",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_skill = {
        main="プクラトムージュ+1",
        sub="プクラトムージュ",
        head="ビファウルクラウン",
        body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="ＶＩグローブ+1", augments={'Enhances "Phalanx II" effect',}},
        legs="ＡＴタイツ+2",
        feet="ＬＴウゾー+1",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        right_ear="オーグメントピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_skill_500 = {
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands="ＡＴグローブ+3",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＡＴタイツ+2",
        feet="ＬＴウゾー+1",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.cure = {
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＡＴタイツ+2",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        waist="ピュシアサッシュ+1",
        left_ear="メンデカントピアス",
        right_ear="ノーヴィアピアス",
        right_ring="レベッチェリング",
    }

    sets.midcast.skin = set_combine(sets.midcast.enhance_duration_self, {neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast.aquaveil = set_combine(sets.midcast.enhance_duration_self, {head="ＡＭコイフ+1",})
    sets.midcast.refresh_self = set_combine(sets.midcast.enhance_duration_self, {head="ＡＭコイフ+1", body="ＡＴタバード+2",legs="ＬＴフュゾー+1",})
    sets.midcast.refresh_others = set_combine(sets.midcast.enhance_duration_others, {head="ＡＭコイフ+1", body="ＡＴタバード+2",legs="ＬＴフュゾー+1",})

    sets.midcast.enfeeble_skill = {
        main={ name="グリオアヴァール", augments={'Enfb.mag. skill +15','INT+14','Mag. Acc.+24','"Mag.Atk.Bns."+16',}},
        sub="メフィテスグリップ",
        ammo="クォーツタスラム+1",
        head={ name="ＶＩシャポー+1", augments={'Enhances "Dia III" effect','Enhances "Slow II" effect',}},
        body="ＡＴタバード+2",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','MND+8','"Mag.Atk.Bns."+11',}},
        feet={ name="ＶＩブーツ+1", augments={'Enhances "Paralyze II" effect',}},
        neck="インカンタートルク",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="インフィブルピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +10','Enha.mag. skill +7','Mag. Acc.+9',}},
    }

    sets.midcast.magic_enfeeble_mnd = {
        ammo="クォーツタスラム+1",
        head="ＡＴシャポー+2",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','MND+8','"Mag.Atk.Bns."+11',}},
        feet="ジャリピガッシュ+2",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_mnd_and_skill = {
        ammo="クォーツタスラム+1",
        head="ＡＴシャポー+2",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','MND+8','"Mag.Atk.Bns."+11',}},
        feet="ジャリピガッシュ+2",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_mnd_acc = {
        ammo="ペムフレドタスラム",
        head="ＡＴシャポー+2",
        body="ＡＴタバード+2",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','MND+8','"Mag.Atk.Bns."+11',}},
        feet="ジャリピガッシュ+2",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic_enfeeble_int = {
        ammo="ペムフレドタスラム",
        head="ＡＴシャポー+2",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Cure" spellcasting time -2%','INT+10','"Mag.Atk.Bns."+2',}},
        feet="ジャリピガッシュ+2",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast.magic_enfeeble_int_acc = {
        ammo="ペムフレドタスラム",
        head="ＡＴシャポー+2",
        body="ＡＴタバード+2",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Cure" spellcasting time -2%','INT+10','"Mag.Atk.Bns."+2',}},
        feet="ジャリピガッシュ+2",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head="ＡＴシャポー+2",
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','MND+8','"Mag.Atk.Bns."+11',}},
        feet="ジャリピガッシュ+2",
        neck="デュエルトルク+2",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast.magic_mb = {
        ammo="ペムフレドタスラム",
        head="エアハット+1",
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+10','"Mag.Atk.Bns."+15',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+9%','INT+13','"Mag.Atk.Bns."+1',}},
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="怯懦の耳",
        right_ear="電界の耳",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.aftercast.melee = {
        ammo="銀銭",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="カマイングリーヴ+1", augments={'Accuracy+12','DEX+12','MND+20',}},
        neck="アヌートルク",
        waist="サリサフロイベルト",
        left_ear="シェリダピアス",
        right_ear="素破の耳",
        left_ring="守りの指輪",
        right_ring="アヤモリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = {
        ammo="ホミリアリ",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="アヤモガンビエラ+2",
        neck="ロリケートトルク+1",
        waist="スリポーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="ゼラチナスリング+1",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    send_command('wait 1; input //gs c wc')
    -- マクロのブック, セット変更
    send_command('input /macro book 8; wait 0.5; input /macro set 1')
    
end

local function set_weapon_by_sub_job(sub_job)
    if sub_job == '忍' then
        sets.midcast.magic_enfeeble_mnd = set_combine(sets.midcast.magic_enfeeble_mnd, sets.weapon.enfeeble_nin)
        sets.midcast.magic_enfeeble_mnd_and_skill = set_combine(sets.midcast.magic_enfeeble_mnd_and_skill, sets.weapon.enfeeble_nin)
        sets.midcast.magic_enfeeble_mnd_acc = set_combine(sets.midcast.magic_enfeeble_mnd_acc, sets.weapon.enfeeble_nin)
        sets.midcast.magic_enfeeble_int = set_combine(sets.midcast.magic_enfeeble_int, sets.weapon.enfeeble_nin)
        sets.midcast.magic_enfeeble_int_acc = set_combine(sets.midcast.magic_enfeeble_int_acc, sets.weapon.enfeeble_nin)

        if melee_weapon == 'tauret' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.tauret_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.tauret_nin)
        elseif melee_weapon == 'naegling' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.naegling_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.naegling_nin)
        elseif melee_weapon == 'd1' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.d1_nin)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.d1_nin)
        end
    else
        sets.midcast.magic_enfeeble_mnd = set_combine(sets.midcast.magic_enfeeble_mnd, sets.weapon.enfeeble)
        sets.midcast.magic_enfeeble_mnd_and_skill = set_combine(sets.midcast.magic_enfeeble_mnd_and_skill, sets.weapon.enfeeble)
        sets.midcast.magic_enfeeble_mnd_acc = set_combine(sets.midcast.magic_enfeeble_mnd_acc, sets.weapon.enfeeble)
        sets.midcast.magic_enfeeble_int = set_combine(sets.midcast.magic_enfeeble_int, sets.weapon.enfeeble)
        sets.midcast.magic_enfeeble_int_acc = set_combine(sets.midcast.magic_enfeeble_int_acc, sets.weapon.enfeeble)

        if melee_weapon == 'tauret' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.tauret)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.tauret)
        elseif melee_weapon == 'naegling' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.naegling)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.naegling)
        elseif melee_weapon == 'd1' then
            sets.aftercast.melee = set_combine(sets.aftercast.melee, sets.weapon.d1)
            sets.aftercast.idle = set_combine(sets.aftercast.idle, sets.weapon.d1)
        end
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
        set_equip = set_combine(sets.midcast.cure, get_hachirin(spell.element))
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = sets.midcast.skin
        elseif spell.name == 'アクアベール' then
            set_equip = sets.midcast.aquaveil
        elseif sets.magic_enhance_skill:contains(spell.name) then
            set_equip = sets.midcast.enhance_skill
        elseif sets.gain:contains(spell.name) then
            set_equip = sets.midcast.enhance_skill_500
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
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '暗黒魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '精霊魔法' then
        set_equip = sets.midcast.magic_mb
    end

    if set_equip then
        equip(set_equip)
    end

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
    if command == 'break' then
        is_immunobreak = true
        windower.add_to_chat(122,'---> レジストハック: '..tostring(is_immunobreak))
    elseif command == 'wc' then
        melee_weapon_cycle = melee_weapon_cycle + 1
        if melee_weapon_cycle % melee_weapon_cycle_num == 0 then
            melee_weapon = 'tauret'
            set_weapon_by_sub_job(player.sub_job)
            status_change(player.status)
            windower.add_to_chat(122,'---> トーレット')
        elseif melee_weapon_cycle % melee_weapon_cycle_num == melee_weapon_cycle_num - 1 then
            melee_weapon = 'naegling'
            set_weapon_by_sub_job(player.sub_job)
            status_change(player.status)
            windower.add_to_chat(122,'---> ネイグリング')
        elseif melee_weapon_cycle % melee_weapon_cycle_num == melee_weapon_cycle_num - 2 then
            melee_weapon = 'd1'
            set_weapon_by_sub_job(player.sub_job)
            status_change(player.status)
            windower.add_to_chat(122,'---> D1')
        end
    end
end

function sub_job_change(new, old)
    
    if new ~= old then
        set_weapon_by_sub_job(new)
        send_command('wait 1; input //gs c wc')
    end

end