include('weather_obi')
local texts = require('texts')
sublimation_box = texts.new('${state}',{text={font='ＭＳ ゴシック', size=12}, pos={x=620, y=770}, padding = 5})
sublimation_box:show()

function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    init_elemental_obi()
    set_elemental_obi("光輪の帯")

    is_cp = false
    is_immanence = false
    is_stromsureg = false
    is_vagary_task = false

    sets.magic_enhance_skill = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ',}
    sets.storm = T{'熱波の陣', '吹雪の陣', '烈風の陣', '砂塵の陣', '疾雷の陣', '豪雨の陣', '極光の陣', '妖霧の陣', '熱波の陣II', '吹雪の陣II', '烈風の陣II', '砂塵の陣II', '疾雷の陣II', '豪雨の陣II', '極光の陣II', '妖霧の陣II'}
    sets.helix = T{'火門の計', '氷門の計', '風門の計', '土門の計', '雷門の計', '水門の計', '光門の計', '闇門の計', '火門の計II', '氷門の計II', '風門の計II', '土門の計II', '雷門の計II', '水門の計II', '光門の計II', '闇門の計II'}
    sets.aspir = T{"アスピル", "アスピルII",}

    sets.th = {
        head="白ララブキャップ+1",
        legs={ name="マーリンシャルワ", augments={'CHR+9','MND+2','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.fc = {
        ammo="インカントストーン",
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body="ピンガチュニック+1",
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="ピンガズボン+1",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.cure_fc = {
        ammo="インカントストーン",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        neck="ロリケートトルク+1",
        waist="ニヌルタサッシュ",
        left_ear="メンデカントピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.magic_skill_chain = {
        main="マリグナスポール",
        sub="コーンスー",
        ammo="ヘイストピニオン+1",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ピンガチュニック+1",
        hands="ＡＣブレーサー+3",
        legs="ピンガズボン+1",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="マリグナスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="フィフォレケープ+1", augments={'Path: A',}},
    }
    
    sets.precast.ws.mp = {
        ammo="プシロメン",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="オトミグローブ", augments={'HP+30','MP+30','MP+30',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="デュアルカラー+1",
        waist="神術帯+1",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="エテオレートピアス",
        left_ring="メフィタスリング+1",
        right_ring="サンゴマリング",
        back="フィフォレケープ+1",
    }

    sets.precast.ws['ミルキル'] = sets.precast.ws.mp

    sets.midcast.cure = {
        ammo="インカントストーン",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body="ヴリコダラジュポン",
        hands={ name="ＰＤブレーサー+3", augments={'Enh. "Tranquility" and "Equanimity"',}},
        legs="ＡＣパンツ+3",
        feet="ＡＣローファー+3",
        neck="ロリケートトルク+1",
        waist="ピュシアサッシュ+1",
        left_ear="メンデカントピアス",
        right_ear="ノーヴィアピアス",
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}},
        back="ソレムニティケープ",
    }
    
    sets.midcast.magic_mb = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+8%','INT+15','Mag. Acc.+5','"Mag.Atk.Bns."+3',}},
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="サクロコード",
        left_ear="バーカロルピアス",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.magic_mb_klimaform = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+8%','INT+15','Mag. Acc.+5','"Mag.Atk.Bns."+3',}},
        feet="ＡＢローファー+1",
        neck="水影の首飾り",
        waist="サクロコード",
        left_ear="電界の耳",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic_mb_dark = set_combine(sets.midcast.magic_mb, {head="妖蟲の髪飾り+1",})

    sets.midcast.helix_mb_magic_dmg = {
        main="マクセンチアス",
        sub="カルミナス",
        ammo="ペムフレドタスラム",
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs="マルクィトルーズ+2",
        feet="ジャリピガッシュ+2",
        neck="アギュトストール+1",
        waist="サクロコード",
        left_ear="怯懦の耳",
        right_ear="電界の耳",
        left_ring="ジャリリング",
        right_ring="マルクィリング",
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast.helix_mb_int_400 = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs="マルクィトルーズ+2",
        feet="ジャリピガッシュ+2",
        neck="アギュトストール+1",
        waist="サクロコード",
        left_ear="電界の耳",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="マルクィリング",
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast.helix_mb_magic_dmg_dark = {
        main="マクセンチアス",
        sub="デイブレイクワンド",
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="マルクィサイオ+2",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs="マルクィトルーズ+2",
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="アギュトストール+1",
        waist="サクロコード",
        left_ear="怯懦の耳",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast.helix_mb = sets.midcast.helix_mb_int_400

    sets.midcast.magic_acc = {
        main="マクセンチアス",
        sub="アムラピシールド",
        ammo="ペムフレドタスラム",
        head="ＡＣボード+3",
        body="ＡＣガウン+3",
        hands={ name="ＰＤブレーサー+3", augments={'Enh. "Tranquility" and "Equanimity"',}},
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＡＣローファー+3",
        neck="アギュトストール+1",
        waist="ルーミネリサッシュ",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.aspir = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="ＡＣガウン+3",
        hands="ＡＣブレーサー+3",
        legs={ name="ＰＤパンツ+3", augments={'Enhances "Tabula Rasa" effect',}},
        feet="ＡＣローファー+3",
        neck="エーラペンダント",
        waist="風鳥の帯",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="アルコンリング",
        right_ring="エバネセンスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.enhance_duration = {
        main="ムサ",
        sub="コーンスー",
        ammo="インカントストーン",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.rejen = set_combine(sets.midcast.enhance_duration,
        {
            head="ＡＢボネット+1",
            body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
            back={ name="ブックワームケープ", augments={'INT+2','MND+1','Helix eff. dur. +10','"Regen" potency+10',}},
        }
    )
    sets.midcast.refresh = set_combine(sets.midcast.enhance_duration, {head="ＡＭコイフ+1", legs="シェダルサラウィル",})
    sets.midcast.skin = set_combine(sets.midcast.enhance_duration, {legs="シェダルサラウィル", neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast.aquaveil = set_combine(sets.midcast.enhance_duration, {main="バドースロッド", sub="アムラピシールド", head="ＡＭコイフ+1", legs="シェダルサラウィル"})

    sets.midcast.enhance_skill = {
        main="ムサ",
        sub="コーンスー",
        ammo="インカントストーン",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
        right_ear="エテオレートピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back="フィフォレケープ+1",
    }
    
    sets.midcast.vagary_task = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="コーンスー",
        ammo="インカントストーン",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ピンガチュニック+1",
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet="ＡＣローファー+3",
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="フィフォレケープ+1", augments={'Path: A',}},
    }

    sets.aftercast.idle = {
        main="マリグナスポール",
        sub="メンシストラップ+1",
        ammo="ホミリアリ",
        head="ＡＣボード+3",
        body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','"Regen"+2','HP+50',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Regen"+2','HP+50',}},
        neck="ロリケートトルク+1",
        waist="エンブラサッシュ",
        left_ear="サバントピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.aftercast.idle_refresh = {
        ammo="ホミリアリ",
        head="ビファウルクラウン",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="マーリンダスタナ", augments={'Pet: Haste+2','AGI+1','"Refresh"+2','Accuracy+16 Attack+16',}},
        legs="アシドゥイズボン+1",
        feet={ name="マーリンクラッコー", augments={'INT+3','Pet: Crit.hit rate +1','"Refresh"+2','Accuracy+20 Attack+20',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 4; wait 0.5; input /macro set 1; wait 0.5; input /si sch; wait 0.5; input /lockstyleset 2 echo;')

end

function precast(spell)
    local set_equip = nil
    
    -- windower.add_to_chat(122,'spell.type: '..spell.type)
    -- windower.add_to_chat(122,'spell.name: '..spell.name)
    -- windower.add_to_chat(122,'spell.element: '..spell.element)
    -- windower.add_to_chat(122,'world.day_element: '..world.day_element)
    -- windower.add_to_chat(122,'world.weather_element: '..world.weather_element)

    if spell.type == 'WhiteMagic' then
        if string.find(spell.name, 'ケアル') then
            set_equip = sets.precast.cure_fc
        else
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'BlackMagic' then
        if is_immanence then
            set_equip = sets.precast.magic_skill_chain
        else
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'JobAbility' then
        if spell.name == '連環計' then
            set_equip = {legs={ name="ＰＤパンツ+3", augments={'Enhances "Tabula Rasa" effect',}},}
        elseif spell.name == '大悟徹底' then
            set_equip = {body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},}
        end
    elseif spell.type == 'Scholar' then
        if spell.name == '震天動地の章' then
            is_immanence = true
        end
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
    
    if string.find(spell.name, 'ケアル') then
        set_equip = set_combine(sets.midcast.cure, get_hachirin(spell.element))
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = sets.midcast.skin
        elseif spell.name == 'アクアベール' then
            set_equip = sets.midcast.aquaveil
        elseif string.find(spell.name, 'リジェネ') then
            set_equip = sets.midcast.rejen
        elseif spell.name == 'リフレシュ' then
            set_equip = sets.midcast.refresh
        elseif spell.name == 'オーラ' or spell.name == 'ファランクス' then
            set_equip = sets.midcast.enhance_skill
        elseif sets.magic_enhance_skill:contains(spell.name) then
            set_equip = set_combine(sets.midcast.enhance_skill, {legs="シェダルサラウィル"})
        elseif sets.storm:contains(spell.name) then
            if is_stromsureg then
                set_equip = set_combine(sets.midcast.enhance_duration, {feet={ name="ＰＤローファー+3", augments={'Enhances "Stormsurge" effect',}},})
            else
                set_equip = sets.midcast.enhance_duration
            end
        else
            set_equip = sets.midcast.enhance_duration
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '暗黒魔法' then
        if spell.name == 'メルトン' then
            set_equip = sets.midcast.magic_mb_dark
        elseif sets.aspir:contains(spell.name) then
            set_equip = sets.midcast.aspir
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '精霊魔法' then
        if is_immanence then
            if spell.name == 'サンダーV' then -- オーメン課題 MBなし15,000ダメージ用
                set_equip = sets.midcast.magic_mb
            else
                -- if spell.name == 'ストーン' or spell.name == '土門の計' then
                --     set_equip = set_combine(sets.precast.magic_skill_chain, {main="アウスタースタッフ",})
                -- else
                    set_equip = sets.precast.magic_skill_chain
                -- end
            end
            is_immanence = false
        else
            if sets.helix:contains(spell.name) then
                if spell.name == '闇門の計II' then
                    set_equip = sets.midcast.helix_mb_magic_dmg_dark
                else
                    set_equip = sets.midcast.helix_mb
                end
                
                if spell.target.distance < 10 then
                    set_equip = set_combine(set_equip, {waist="オルペウスサッシュ",})
                end
            else
                if is_vagary_task then
                    set_equip = sets.midcast.vagary_task
                else
                    if buffactive['虚誘掩殺の策'] then
                        set_equip = set_combine(sets.midcast.magic_mb_klimaform, get_hachirin(spell.element))
                    else
                        set_equip = set_combine(sets.midcast.magic_mb, get_hachirin(spell.element))
                    end
                end
            end
        end
    end
    
    if buffactive['令狸執鼠の章'] then
        set_equip = set_combine(set_equip, {hands='ＡＢブレーサー+1',})
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
    if command =='stormsurge' then
        is_stromsureg = not is_stromsureg
        windower.add_to_chat(122,'---> 陣頭指揮: '..tostring(is_stromsureg))
    elseif command == 'vagary' then
        is_vagary_task = not is_vagary_task
        windower.add_to_chat(122,'---> ベガリーお題: '..tostring(is_vagary_task))
    elseif command == '1p' then
        send_command('input /macro book 4')
        windower.add_to_chat(122,'---> 震天動地 1ポチマクロ')
    elseif command == '2p' then
        send_command('input /macro book 5')
        windower.add_to_chat(122,'---> 震天動地 2ポチマクロ')
    elseif command == 'aspir' then
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
    elseif command == 'refresh' then
        equip(sets.aftercast.idle_refresh)
        windower.add_to_chat(122, '---> リフレシュ待機装備')
    end
end

-- function buff_change(name, gain, buff_details)
--     if name == '机上演習:蓄積中' then
--         if gain then 
--             sublimation_box.state = name
--             sublimation_box:color(255,0,255)
--             sublimation_box:bg_color(0,255,0)
--         else
--             if not buffactive['机上演習:蓄積完了'] then
--                 sublimation_box.state = '机上演習なし'
--                 sublimation_box:color(0,255,255)
--                 sublimation_box:bg_color(255,0,0)
--             end
--         end
--     elseif name == '机上演習:蓄積完了' then
--         if gain then 
--             sublimation_box.state = name
--             sublimation_box:color(255,255,0)
--             sublimation_box:bg_color(0,0,255)
--         else
--             sublimation_box.state = '机上演習なし'
--             sublimation_box:color(0,255,255)
--             sublimation_box:bg_color(255,0,0)
--         end
--     end
-- end

function sublimation_update()

    local sublimation_actived = '机上演習:蓄積中'
    local sublimation_complete = '机上演習:蓄積完了'

    if buffactive[sublimation_actived] then
        sublimation_box.state = sublimation_actived
        sublimation_box:color(255,0,255)
        sublimation_box:bg_color(0,255,0)
    elseif buffactive[sublimation_complete] then
        sublimation_box.state = sublimation_complete
        sublimation_box:color(255,255,0)
        sublimation_box:bg_color(0,0,255)
    else
        sublimation_box.state = '机上演習なし'
        sublimation_box:color(0,255,255)
        sublimation_box:bg_color(255,0,0)
    end

end

update_time = 0
update_interval = 1
-- windower.register_event('prerender', function()
--     local curr = os.clock()
--     if curr > update_time + update_interval then
--         update_time = curr
--         sublimation_update()
--     end
-- end)

windower.raw_register_event('time change', function(new, old)
    local curr = os.clock()
    if curr > update_time + update_interval then
        update_time = curr
        sublimation_update()
    end
end)


function file_unload(file_name)
    sublimation_box:destroy()
end