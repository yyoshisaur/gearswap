function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['震天動地の章'] = buffactive['震天動地の章'] or false
    state.Buff['令狸執鼠の章'] = buffactive['令狸執鼠の章'] or false
    state.Buff['虚誘掩殺の策'] = buffactive['虚誘掩殺の策'] or false
    state.Buff['疾風迅雷の章'] = buffactive['疾風迅雷の章'] or false
    state.Buff['気炎万丈の章'] = buffactive['気炎万丈の章'] or false
    state.Buff['机上演習:蓄積中'] = buffactive['机上演習:蓄積中'] or false
    state.Buff['机上演習:蓄積完了'] = buffactive['机上演習:蓄積完了'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')
    include('weather_obi')
    include('mystyle')
    include('myexport')

    select_default_macro_book()
    mogmaster('sch')
end

function user_setup()
    state.CastingMode:options('MB', 'Normal')
    state.IdleMode:options('Normal', 'Refresh', 'Sublimation')
    state.SublimationMode = M({['description']='Sublimation', ['string']='None'}) -- Activated, Complete
    state.StormsurgeMode = M(false, 'Stormsurge')
    state.VagaryMode = M(false, 'Vagary Task')

    bool_state = {
        {label='Stormsurge', mode='StormsurgeMode', alys_disp=true},
        {label='Vagary', mode='VagaryMode', alys_disp=false}}
    mode_state = {
        {label='Idle', mode='IdleMode'},
        {label='Casting', mode='CastingMode'},
        {label='Sublimation', mode='SublimationMode'},
    }
    init_job_states(bool_state, mode_state)
end

function binds_on_load()
    -- send_command('bind f1 gs c cycle OffenseMode')
    -- send_command('bind ^f1 gs c cycle HybridMode')
    -- send_command('bind f2 gs c cycle WeaponskillMode')
    -- send_command('bind ^f2 gs c cycle Weapons')
    -- send_command('bind f3 gs c cycle CastingMode')
    send_command('bind f3 gs c cycle IdleMode')
    send_command('bind ^f3 gs c cycle CastingMode')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')
    send_command('bind f5 gs c toggle StormsurgeMode')
    send_command('bind ^f5 gs c toggle VagaryMode')


    -- send_command('bind !f4 gs c reset DefenseMode')
    -- send_command('bind f2 gs c set DefenseMode Physical')
    -- send_command('bind ^f2 gs c cycle PhysicalDefenseMode')
    -- send_command('bind !f2 gs c toggle Kiting')
    -- send_command('bind f3 gs c set DefenseMode Magical')

    -- send_command('bind ^- gs c toggle selectnpctargets')
    -- send_command('bind ^= gs c cycle pctargetmode')
end

function binds_on_unload()
    -- send_command('unbind f1')
    -- send_command('unbind ^f1')
    -- send_command('unbind f2')
    -- send_command('unbind ^f2')
    send_command('unbind f3')
    send_command('unbind ^f3')
    send_command('unbind f4')
    send_command('unbind ^f4')
    send_command('unbind f5')
    send_command('unbind ^f5')
    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()

    sets.TreasureHunter = {
        head="ヴォルトキャップ",
        legs={ name="マーリンシャルワ", augments={'CHR+9','MND+2','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        ammo="サピエンスオーブ",
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
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }

    sets.precast.FC.Cure = {
        ammo="サピエンスオーブ",
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
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }

    sets.precast.FC['インパクト'] = {
        ammo="サピエンスオーブ",
        head=empty,
        body="トワイライトプリス",
        hands="ＡＣブレーサー+3",
        legs="ピンガズボン+1",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }

    -- sets.precast.FC.Phalanx = {
    --     -- head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
    --     -- body="ピンガチュニック+1",
    --     hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
    --     -- legs="ピンガズボン+1",
    --     -- feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
    --     waist="エンブラサッシュ",
    --     back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    -- }

    sets.precast.FC['震天動地の章'] = {
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

    sets.precast.FC['震天動地の章_Helix'] = sets.precast.FC['震天動地の章']

    sets.precast.WS = { -- MAX MP
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
        right_ring="プロリクスリング",
        back="フィフォレケープ+1",
    }

    
    sets.precast.WS.wsd_mnd = { -- MAX MP
        ammo="ペムフレドタスラム",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="フォシャゴルゲット",
        waist="オルペウスサッシュ",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.precast.WS['ミルキル'] = sets.precast.WS
    sets.precast.WS['セラフストライク'] = sets.precast.WS.wsd_mnd


    sets.precast.JA['連環計'] = {legs={ name="ＰＤパンツ+3", augments={'Enhances "Tabula Rasa" effect',}},}
    sets.precast.JA['大悟徹底'] = {body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},}

    sets.midcast.FastRecast = {waist="ニヌルタサッシュ",}

    sets.midcast.Cure = {
        ammo="サピエンスオーブ",
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

    sets.midcast['疾風迅雷の章'] = {feet={ name="ＰＤローファー+3", augments={'Enhances "Stormsurge" effect',}},}
    sets.midcast['陣頭指揮'] = {feet={ name="ＰＤローファー+3", augments={'Enhances "Stormsurge" effect',}},}
    sets.midcast['令狸執鼠の章'] = {hands='ＡＢブレーサー+2',}
    sets.midcast['オルペウスサッシュ'] = {waist="オルペウスサッシュ",}
    sets.midcast['気炎万丈の章'] = {head="ＡＢボネット+2",}

    sets.midcast.magic_acc = {
        main="マクセンチアス",
        sub="アムラピシールド",
        ammo="ペムフレドタスラム",
        head="ＡＣボード+3",
        body="ＡＣガウン+3",
        hands="ＡＣブレーサー+3",
        legs={ name="カイロンホーズ", augments={'Mag. Acc.+30','"Fast Cast"+4','MND+15','"Mag.Atk.Bns."+6',}},
        feet="ＡＣローファー+3",
        neck="アギュトストール+2",
        waist="ルーミネリサッシュ",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring={ name="メタモルリング+1", augments={'Path: A',}},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }

    sets.midcast['弱体魔法'] = sets.midcast.magic_acc
    sets.midcast['暗黒魔法'] = sets.midcast.magic_acc

    sets.midcast['インパクト'] = {
        main="マクセンチアス",
        sub="アムラピシールド",
        ammo="ペムフレドタスラム",
        head=empty,
        body="トワイライトプリス",
        hands="ＡＣブレーサー+3",
        legs="ＡＣパンツ+3",
        feet="ＡＣローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist={ name="アキュイテベルト+1", augments={'Path: A',}},
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring={ name="メタモルリング+1", augments={'Path: A',}},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast['精霊魔法'] = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="バーカロルピアス",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast['精霊魔法'].MB = {
        main={ name="ブンジロッド", augments={'Path: A',}},
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="アグゥローブ", augments={'Path: A',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="アグゥスロップス", augments={'Path: A',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast['精霊魔法']['虚誘掩殺の策'] = set_combine(sets.midcast['精霊魔法'], {feet="ＡＢローファー+3",})

    sets.midcast['精霊魔法']['虚誘掩殺の策'].MB = {
        main={ name="ブンジロッド", augments={'Path: A',}},
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="アグゥローブ", augments={'Path: A',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="アグゥスロップス", augments={'Path: A',}},
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast['暗黒魔法']['メルトン'] = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="妖蟲の髪飾り+1",
        body="ＡＣガウン+3",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＰＤパンツ+3", augments={'Enhances "Tabula Rasa" effect',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast['暗黒魔法']['メルトン'].MB = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="エンキストラップ",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="妖蟲の髪飾り+1",
        body="ＡＣガウン+3",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="アグゥスロップス", augments={'Path: A',}},
        feet="ジャリピガッシュ+2",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
    }

    sets.midcast.Helix = {
        main="ブンジロッド",
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body="マルクィサイオ+2",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs="マルクィトルーズ+2",
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="怯懦の耳",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast.Helix.MB = {
        main={ name="ブンジロッド", augments={'Path: A',}},
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="アグゥローブ", augments={'Path: A',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="アグゥスロップス", augments={'Path: A',}},
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast['闇門の計II'] = {
        main="ブンジロッド",
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="妖蟲の髪飾り+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast['闇門の計II'].MB = {
        main="ブンジロッド",
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="妖蟲の髪飾り+1",
        body={ name="アグゥローブ", augments={'Path: A',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="アグゥスロップス", augments={'Path: A',}},
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="アルコンリング",
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast['光門の計II'] = {
        main="デイブレイクワンド",
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body="マルクィサイオ+2",
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs="マルクィトルーズ+2",
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }
    sets.midcast['光門の計II'].MB = {
        main="デイブレイクワンド",
        sub="アムラピシールド",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},
        body={ name="アグゥローブ", augments={'Path: A',}},
        hands="ＡＢブレーサー+2",
        legs={ name="アグゥスロップス", augments={'Path: A',}},
        feet="ＡＢローファー+3",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ブックワームケープ", augments={'INT+4','MND+4','Helix eff. dur. +20',}},
    }

    sets.midcast.Aspir = {
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
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }

    sets.midcast.Vagary = {
        main={ name="アカデモス", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
        sub="コーンスー",
        ammo="サピエンスオーブ",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ＡＣガウン+3",
        hands="ＡＣブレーサー+3",
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet="ＡＣローファー+3",
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="マリグナスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="フィフォレケープ+1", augments={'Path: A',}},
    }

    sets.midcast['強化魔法'] = {
        main="ムサ",
        sub="コーンスー",
        ammo="サピエンスオーブ",
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
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }
    
    sets.midcast.enhancing_skill = {
        main="ムサ",
        sub="コーンスー",
        ammo="サピエンスオーブ",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
        right_ear="エテオレートピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back="フィフォレケープ+1",
    }

    sets.midcast.Regen = set_combine(sets.midcast['強化魔法'],{
            head="ＡＢボネット+2",
            body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
            back={ name="ブックワームケープ", augments={'INT+2','MND+1','Helix eff. dur. +10','"Regen" potency+10',}},
        })

    sets.midcast.Protect = set_combine(sets.midcast['強化魔法'], {right_ear="ブラキュラピアス",})
    sets.midcast.Shell = set_combine(sets.midcast['強化魔法'], {right_ear="ブラキュラピアス",})
    sets.midcast.Refresh = set_combine(sets.midcast['強化魔法'], {head="ＡＭコイフ+1",})
    sets.midcast.BarElement = set_combine(sets.midcast.enhancing_skill, {legs="シェダルサラウィル",})
    sets.midcast.Phalanx = sets.midcast.enhancing_skill
    sets.midcast['オーラ'] = sets.midcast.enhancing_skill
    sets.midcast['ストンスキン'] = set_combine(sets.midcast['強化魔法'], {legs="シェダルサラウィル", neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast['アクアベール'] = set_combine(sets.midcast['強化魔法'], {main="バドースロッド", sub="アムラピシールド", head="ＡＭコイフ+1", legs="シェダルサラウィル"})

    sets.idle = {
        main="マリグナスポール",
        sub="メンシストラップ+1",
        ammo="ホミリアリ",
        head="ビファウルクラウン",
        body="シャマシュローブ",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="キャリアーサッシュ",
        left_ear="ルガルバンダピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }

    sets.idle.Sublimation = {
        main="マリグナスポール",
        sub="メンシストラップ+1",
        ammo="ストンチタスラム+1",
        head="ＡＣボード+3",
        body={ name="ＰＤガウン+3", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','"Regen"+2','HP+50',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Regen"+2','HP+50',}},
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="エンブラサッシュ",
        left_ear="サバントピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10','"Regen"+5',}},
    }
    
    sets.idle.Refresh = set_combine(sets.idle, {
        ammo="ホミリアリ",
        head="ビファウルクラウン",
        body="シャマシュローブ",
        hands={ name="マーリンダスタナ", augments={'Pet: Haste+2','AGI+1','"Refresh"+2','Accuracy+16 Attack+16',}},
        legs="アシドゥイズボン+1",
        feet={ name="マーリンクラッコー", augments={'INT+3','Pet: Crit.hit rate +1','"Refresh"+2','Accuracy+20 Attack+20',}},
    })

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
    set_custom_class(spell)
end

function job_post_precast(spell, action, spellMap, eventArgs)
end

function job_midcast(spell, action, spellMap, eventArgs)
    if classes.CustomClass == '震天動地の章' then
        eventArgs.handled = true
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)

    if classes.CustomClass == '震天動地の章' or classes.CustomClass == 'Vagary' then
        return
    end

    if state.Buff['疾風迅雷の章'] and spell.name == 'スタン' and spell.element == world.weather_element then
        equip(sets.midcast['疾風迅雷の章'])
    elseif spell.skill == '強化魔法' then
        if spellMap == 'Storm' and state.StormsurgeMode.value then
            equip(sets.midcast['陣頭指揮'])
        elseif state.Buff['令狸執鼠の章'] then
            equip(sets.midcast['令狸執鼠の章'])
        end
    elseif spell.skill == '精霊魔法' then
        if state.Buff['気炎万丈の章'] then
            equip(sets.midcast['気炎万丈の章'])
        end

        if spellMap == 'Helix' then
            if spell.target.distance < 10 then
                equip(sets.midcast['オルペウスサッシュ'])
            end
        else
            equip(get_hachirin(spell.element))
        end
    elseif spell.skill == '暗黒魔法' then
        if spell.name == 'メルトン' then
            if state.Buff['気炎万丈の章'] then
                equip(sets.midcast['気炎万丈の章'])
            end
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
end

function job_buff_change(buff, gain)
    if string.find(buff, '机上演習') then
        if state.Buff['机上演習:蓄積中'] then
            state.SublimationMode:set('Activated')
            state.IdleMode:set('Sublimation')
        elseif state.Buff['机上演習:蓄積完了'] then
            state.SublimationMode:set('Complete')
            state.IdleMode:set('Normal')
        else
            state.SublimationMode:reset()
            state.IdleMode:set('Normal')
        end
        if not S{'precast', 'midcast'}:contains(_global.current_event) then
            handle_equipping_gear(player.status)
        end
    end
    if state.DisplayMode.value then update_job_states() end
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

-- function job_get_spell_map(spell, default_spell_map)
--     local new_spell_map = default_spell_map
--     if spell.skill == '精霊魔法' then
--         if state.Buff['震天動地の章'] then
--             new_spell_map = '震天動地の章'
--         elseif state.VagaryMode.value then
--             new_spell_map = 'Vagary'
--         elseif state.Buff['虚誘掩殺の策'] and spell.element == world.weather_element then
--             new_spell_map = '虚誘掩殺の策'
--         end
--     end
--     return new_spell_map
-- end

function job_sub_job_change(newSubjob, oldSubjob)
    set_equip_by_sub_job(newSubjob)
end

function set_custom_class(spell)
    classes.CustomClass = nil
    if spell.skill == '精霊魔法' then
        if state.Buff['震天動地の章'] then
            classes.CustomClass = '震天動地の章'
        elseif state.VagaryMode.value then
            classes.CustomClass = 'Vagary'
        elseif state.Buff['虚誘掩殺の策'] and spell.element == world.weather_element then
            classes.CustomClass = '虚誘掩殺の策'
        end
    end
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'aspir' then
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
    elseif cmdParams[1]  == '1p' then
        send_command('input /macro book 4')
        windower.add_to_chat(122,'---> 震天動地 1ポチマクロ')
    elseif cmdParams[1]  == '2p' then
        send_command('input /macro book 5')
        windower.add_to_chat(122,'---> 震天動地 2ポチマクロ')
    elseif cmdParams[1] == 'lockstyle' or cmdParams[1] == 'ls' then
            mystyle('学', player.sub_job)
    end
end

function select_default_macro_book()
    set_macro_page(1, 4)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function set_equip_by_sub_job(subJob)
    if state.DisplayMode.value then update_job_states() end

    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end