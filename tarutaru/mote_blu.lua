function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['ブルーチェーン'] = buffactive['ブルーチェーン'] or false
    state.Buff['ブルーバースト'] = buffactive['ブルーバースト'] or false
    state.Buff['ディフュージョン'] = buffactive['ディフュージョン'] or false
    state.Buff['エフラックス'] = buffactive['エフラックス'] or false

    init_blue_spell_map()

    include('Mote-TreasureHunter')
    include('Mote-Display')

    include('spell_catcher')

    include('myexport')
end

function user_setup()
    state.OffenseMode:options('Normal', 'Stp', 'Multi', 'Evasion')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal')
    state.IdleMode:options('Normal', 'Evasion')
    state.Weapons = M{['description']='Use Weapons', 'Almace', 'Tizona', 'Magic', 'Sequence', 'Club'}

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},}
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('blu')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    -- send_command('bind f3 gs c cycle CastingMode')
    send_command('bind f3 gs c cycle IdleMode')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')

    -- send_command('bind !f4 gs c reset DefenseMode')
    -- send_command('bind f2 gs c set DefenseMode Physical')
    -- send_command('bind ^f2 gs c cycle PhysicalDefenseMode')
    -- send_command('bind !f2 gs c toggle Kiting')
    -- send_command('bind f3 gs c set DefenseMode Magical')

    -- send_command('bind ^- gs c toggle selectnpctargets')
    -- send_command('bind ^= gs c cycle pctargetmode')
end

function binds_on_unload()
    send_command('unbind f1')
    send_command('unbind ^f1')
    send_command('unbind f2')
    send_command('unbind ^f2')
    -- send_command('unbind f3')
    -- send_command('unbind ^f3')
    send_command('unbind f4')
    send_command('unbind ^f4')

    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    sets.weapons.Almace = {main={name="アルマス"}, sub={name="斬鉄剣"},}
    sets.weapons.Tizona = {main={name="ティソーナ"}, sub={name="アルマス"},}
    sets.weapons.Sequence = {main={name="セクエンス"}, sub={name="アルマス"},}
    sets.weapons.Magic = {main={ name="ブンジロッド", augments={'Path: A',}}, sub={name="マクセンチアス"},}
    sets.weapons.Club = {main={name="マクセンチアス"}, sub={name="ネイグリング"},}


    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.EnmityBoost = {
        ammo="ストンチタスラム+1",
        head="ラビッドバイザー",
        body="エメットハーネス+1",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="アホシレギンス",
        neck="ロリケートトルク+1",
        waist="カシリベルト",
        left_ear="フリオミシピアス",
        right_ear="クリプティクピアス",
        left_ring="守りの指輪",
        right_ring="アイワツリング",
        back="月光の羽衣",
    }

    sets.EnmityPax = {}

    sets.precast.FC = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="ピンガチュニック+1",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.WS = { -- Critical
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="アヤモガンビエラ+2",
        neck="ミラージストール+2",
        waist="フォシャベルト",
        left_ear="マーケピアス+1",
        right_ear="オドルピアス",
        left_ring="エポナリング",
        right_ring="イラブラットリング",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.WS.multi = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="ミラージストール+2",
        waist="フォシャベルト",
        left_ear="マーケピアス+1",
        right_ear="オドルピアス",
        left_ring="エポナリング",
        right_ring="イラブラットリング",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.wsd = {
        ammo="オゲルミルオーブ+1",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body="ＡＳジュバ+3",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="フォシャゴルゲット",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ルフェセントリング",
        right_ring="イラブラットリング",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.expi = {
        ammo="オゲルミルオーブ+1",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body="ＡＳジュバ+3",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="フォシャゴルゲット",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ルフェセントリング",
        right_ring="イラブラットリング",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="ボルトサージトルク",
        waist="エスカンストーン",
        left_ear="ディグニタリピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="キシャールリング",
        right_ring="スティキニリング+1",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.magic = {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="ＡＳケフィエ+3",
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ジャリカフス+2",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="サンクトネックレス",
        waist="オルペウスサッシュ",
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="女王の指輪+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.magic_drk = {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="妖蟲の髪飾り+1",
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ジャリカフス+2",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="サンクトネックレス",
        waist="オルペウスサッシュ",
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="女王の指輪+1",
        left_ring="アルコンリング",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    -- 片手剣
    sets.precast.WS['ファストブレード'] = sets.precast.WS.wsd
    sets.precast.WS['バーニングブレード'] = sets.precast.WS.magic
    sets.precast.WS['レッドロータス'] = sets.precast.WS.magic
    sets.precast.WS['フラットブレード'] = sets.precast.WS.magic_acc
    sets.precast.WS['シャインブレード'] = sets.precast.WS.magic
    sets.precast.WS['セラフブレード'] = sets.precast.WS.magic 
    sets.precast.WS['サークルブレード'] = sets.precast.WS.wsd
    sets.precast.WS['スピリッツウィズイン'] = sets.precast.WS.wsd
    sets.precast.WS['ボーパルブレード'] = sets.precast.WS.multi
    sets.precast.WS['スウィフトブレード'] = sets.precast.WS.mulit
    sets.precast.WS['サベッジブレード'] = sets.precast.WS.wsd
    sets.precast.WS['サンギンブレード'] = sets.precast.WS.magic_drk
    sets.precast.WS['エクスピアシオン'] = sets.precast.WS.expi
    sets.precast.WS['シャンデュシニュ'] = sets.precast.WS
    sets.precast.WS['レクイエスカット'] = sets.precast.WS.multi

    -- 片手棍
    sets.precast.WS['シャインストライク'] = sets.precast.WS.magic
    sets.precast.WS['セラフストライク'] = sets.precast.WS.magic
    sets.precast.WS['ブレインシェイカー'] = sets.precast.WS.magic_acc
    sets.precast.WS['スターライト'] = sets.precast.WS.magic
    sets.precast.WS['ムーンライト'] = sets.precast.WS.magic
    sets.precast.WS['スカルブレイカー'] = sets.precast.WS.wsd
    sets.precast.WS['トゥルーストライク	'] = sets.precast.WS
    sets.precast.WS['ジャッジメント'] = sets.precast.WS.wsd
    sets.precast.WS['ブラックヘイロー'] = sets.precast.WS.wsd
    sets.precast.WS['フラッシュノヴァ'] = sets.precast.WS.magic
    sets.precast.WS['レルムレイザー'] = sets.precast.WS.mulit

    sets.precast.JA['アジュールロー'] = {hands="ＬＬバズバンド+3"}

    -- sub war
    sets.precast.JA['挑発'] = sets.EnmityBoost
    sets.precast.JA['ウォークライ'] = sets.EnmityBoost

    -- sub pld
    sets.precast.JA['センチネル'] = sets.EnmityBoost

    sets.midcast.FastRecast = set_combine(sets.precast.FC, {waist="ニヌルタサッシュ",})

    sets.midcast.cure = {
        ammo="ストンチタスラム+1",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        body="ピンガチュニック+1",
        hands="ＨＳバズバンド+1",
        legs="ギーヴトラウザ",
        feet={ name="ミディアムサボ", augments={'MP+45','MND+9','"Conserve MP"+5','"Cure" potency +4%',}},
        neck="ファライナロケット",
        waist="ギシドゥバサッシュ",
        left_ear="オノワイヤリング+1",
        right_ear="メンデカントピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }

    sets.midcast.refresh = {
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="ギシドゥバサッシュ",
    }

    sets.midcast.magic_acc_and_physical_acc = {
        ammo="ペムフレドタスラム",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="レテクバングル+1",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ミラージストール+2",
        waist="エスカンストーン",
        left_ear="昏黄の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring={ name="メタモルリング+1", augments={'Path: A',}},
        right_ring="スティキニリング+1",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head="ＡＳケフィエ+3",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="レテクバングル+1",
        legs="ＡＳシャルワー+3",
        feet={ name="ＬＬチャルク+3", augments={'Enhances "Diffusion" effect',}},
        neck={ name="ミラージストール+2", augments={'Path: A',}},
        waist="サクロコード",
        left_ear="王将の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring={ name="メタモルリング+1", augments={'Path: A',}},
        right_ring="スティキニリング+1",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic = {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        -- head="ＡＳケフィエ+3",
        head={ name="ヘルクリアヘルム", augments={'"Mag.Atk.Bns."+24','"Triple Atk."+2','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ミラージストール+2",
        waist="オルペウスサッシュ",
        left_ear="王将の耳飾り",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_drk = {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="妖蟲の髪飾り+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ミラージストール+2",
        waist="オルペウスサッシュ",
        left_ear="王将の耳飾り",
        right_ear="フリオミシピアス",
        left_ring="アルコンリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.blue_magic_skill = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="ＡＳジュバ+3",
        hands="ＨＳバズバンド+1",
        legs="ＨＳタイト+1",
        feet={ name="ＬＬチャルク+3", augments={'Enhances "Diffusion" effect',}},
        neck="ミラージストール+2",
        waist="フルームベルト+1",
        left_ear="ロケイシャスピアス",
        right_ear="エンチャンピアス+1",
        left_ring="守りの指輪",
        right_ring="スティキニリング+1",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['青魔法'] = sets.midcast.magic_acc_and_physical_acc
    sets.midcast['青魔法'].Pysical = sets.midcast.magic_acc_and_physical_acc
    sets.midcast['青魔法'].PysicalAcc = sets.midcast.magic_acc_and_physical_acc
    sets.midcast['青魔法'].Magic = sets.midcast.magic
    sets.midcast['青魔法'].MagicAcc = sets.midcast.magic_acc
    sets.midcast['青魔法'].PysicalAndMagic = sets.midcast.magic_acc_and_physical_acc
    sets.midcast['青魔法'].Skill = sets.midcast.blue_magic_skill
    sets.midcast['青魔法'].Cure = sets.midcast.cure
    sets.midcast['青魔法'].Refresh = sets.midcast.refresh
    sets.midcast['青魔法'].MagicDrk = sets.midcast.magic_drk
    sets.midcast['青魔法'].Enmity = sets.EnmityBoost
    sets.midcast['青魔法'].MagicEarth = set_combine(sets.midcast.magic, {hands="ＨＳバズバンド+1", neck="クアンプネックレス",})

    sets.midcast['ディフュージョン'] = {feet={ name="ＬＬチャルク+3", augments={'Enhances "Diffusion" effect',}},}
    sets.midcast['エフラックス'] = {legs="ＨＳタイト+1",}

    sets.midcast['強化魔法'] = {}
    sets.midcast['強化魔法']['ファランクス'] = {
        ammo="ストンチタスラム+1",
        head={ name="ヘルクリアヘルム", augments={'"Waltz" potency +3%','CHR+9','Phalanx +3','Accuracy+12 Attack+12',}},
        body={ name="ヘルクリアベスト", augments={'Magic dmg. taken -2%','Rng.Atk.+13','Phalanx +5','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}, hp=61,},
        hands={ name="ヘルクリアグローブ", augments={'INT+9','AGI+4','Phalanx +4','Accuracy+1 Attack+1','Mag. Acc.+8 "Mag.Atk.Bns."+8',}, hp=20,},
        legs={ name="ヘルクリアトラウザ", augments={'"Dbl.Atk."+1','Mag. Acc.+4 "Mag.Atk.Bns."+4','Phalanx +5','Accuracy+10 Attack+10',}},
        feet={ name="ヘルクリアブーツ", augments={'STR+6','AGI+6','Phalanx +5','Accuracy+17 Attack+17',}, hp=9,},
        waist="オリンポスサッシュ",
        left_ear={ name="エテオレートピアス", hp=50,},
        right_ear={ name="トゥイストピアス", hp=150,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast['強化魔法']['ストンスキン']  = {
        neck="ストーンゴルゲット",
        waist="ジーゲルサッシュ",
        left_ear="アースクライピアス",
    }

    sets.midcast['強化魔法'].Refresh = sets.midcast.refresh

    sets.midcast['回復魔法'] = {}
    sets.midcast['回復魔法'].Cure = sets.midcast.cure

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="シャマシュローブ",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="アホシレギンス",
        neck={ name="ミラージストール+2", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.idle.Evasion = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エアバニピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="マリグナスタバード",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        neck={ name="ミラージストール+2", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="イラブラットリング",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged.Stp = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck={ name="ミラージストール+2", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="ディグニタリピアス",
        -- left_ring="守りの指輪",
        -- right_ring="シーリチリング+1",
        left_ring={name="シーリチリング+1", bag="Wardrobe"},
        right_ring={name="シーリチリング+1", bag="Wardrobe 2"},
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged.Multi = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck={ name="ミラージストール+2", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="素破の耳",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="イラブラットリング",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged.Evasion = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エアバニピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    spell_catcher_detect_spell.phalanx_2.begin = sets.midcast['強化魔法']['ファランクス']
    spell_catcher_detect_spell.phalanx_2.finish = 'gs c update user'
    spell_catcher_detect_spell_accession.phalanx.begin = sets.midcast['強化魔法']['ファランクス']
    spell_catcher_detect_spell_accession.phalanx.finish = 'gs c update user'
end

function job_precast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_precast(spell)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.skill == '青魔法' then
        if state.Buff['ディフュージョン'] then
        equip(sets.midcast['ディフュージョン'])
        end
        if state.Buff['エフラックス'] then
        equip(sets.midcast['エフラックス'])
        end
    end

    if state.TreasureMode.value == 'Tag' then
        if L{'吶喊'}:contains(spell.name) then
            equip(sets.TreasureHunter)
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_aftercast(spell)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
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
    if state.DisplayMode.value then update_job_states() end
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function job_get_spell_map(spell, default_spell_map)
    if _global.current_event ~= 'midcast' then return default_spell_map end

    local new_spell_map = default_spell_map
    if spell.skill == '青魔法' then
        new_spell_map = blue_spell_maps[spell.name]
    end

    return new_spell_map
end

function select_default_macro_book()
    set_macro_page(1, 10)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function init_blue_spell_map()
    blue_magic_type = {
        [1] = "Pysical",
        [2] = "PysicalAcc",
        [3] = "Magic",
        [4] = "MagicAcc",
        [5] = "PysicalAndMagic",
        [6] = "Skill",
        [7] = "Cure",
        [8] = "Refresh",
        [9] = "MagicDrk",
        [10] = "Enmity",
        [11] = "MagicEarth"
    }

    blue_spell_maps = {
        ["ベノムシェル"] = blue_magic_type[4],
        ["メイルシュトロム"] = blue_magic_type[4],
        ["メタルボディ"] = blue_magic_type[6],
        ["S.ドライバー"] = blue_magic_type[1],
        ["MP吸収キッス"] = blue_magic_type[9],
        ["デスレイ"] = blue_magic_type[3],
        ["土竜巻"] = blue_magic_type[4],
        ["怒りの一撃"] = blue_magic_type[1],
        ["メッタ打ち"] = blue_magic_type[1],
        ["リフュエリング"] = nil,
        ["アイスブレイク"] = blue_magic_type[4],
        ["B.シュトラール"] = blue_magic_type[4],
        ["自爆"] = blue_magic_type[3],
        ["神秘の光"] = blue_magic_type[4],
        ["コールドウェーブ"] = blue_magic_type[4],
        ["ポイズンブレス"] = blue_magic_type[4],
        ["スティンキングガス"] = blue_magic_type[4],
        ["メメントモーリ"] = nil,
        ["テラータッチ"] = blue_magic_type[4],
        ["スパイナルクリーブ"] = blue_magic_type[1],
        ["ブラッドセイバー"] = blue_magic_type[4],
        ["消化"] = blue_magic_type[4],
        ["M.バイト"] = blue_magic_type[1],
        ["カースドスフィア"] = blue_magic_type[3],
        ["シックルスラッシュ"] = blue_magic_type[1],
        ["コクーン"] = nil,
        ["F.ホールド"] = blue_magic_type[4],
        ["花粉"] = blue_magic_type[7],
        ["パワーアタック"] = blue_magic_type[1],
        ["デスシザース"] = blue_magic_type[1],
        ["磁鉄粉"] = blue_magic_type[4],
        ["アイズオンミー"] = blue_magic_type[9],
        ["F.リップ"] = blue_magic_type[1],
        ["フライトフルロア"] = blue_magic_type[4],
        ["ヘカトンウェーブ"] = blue_magic_type[4],
        ["ボディプレス"] = blue_magic_type[1],
        ["R.ブレス"] = blue_magic_type[4],
        ["ヘルダイブ"] = blue_magic_type[1],
        ["ジェットストリーム"] = blue_magic_type[1],
        ["吸血"] = blue_magic_type[4],
        ["サウンドブラスト"] = blue_magic_type[4],
        ["フェザーティックル"] = blue_magic_type[5],
        ["フェザーバリア"] = nil,
        ["ジェタチュラ"] = blue_magic_type[4],
        ["ヤーン"] = blue_magic_type[4],
        ["フットキック"] = blue_magic_type[1],
        ["ワイルドカロット"] = blue_magic_type[7],
        ["吸印"] = blue_magic_type[4],
        ["いやしの風"] = blue_magic_type[7],
        ["カオティックアイ"] = blue_magic_type[4],
        ["シープソング"] = blue_magic_type[4],
        ["ラムチャージ"] = blue_magic_type[1],
        ["クローサイクロン"] = blue_magic_type[1],
        ["ロウイン"] = blue_magic_type[4],
        ["次元殺"] = blue_magic_type[1],
        ["火炎の息"] = blue_magic_type[3],
        ["ブランクゲイズ"] = blue_magic_type[4],
        ["マジックフルーツ"] = blue_magic_type[7],
        ["アッパーカット"] = blue_magic_type[1],
        ["針千本"] = blue_magic_type[1],
        ["まつぼっくり爆弾"] = blue_magic_type[5],
        ["スプラウトスマック"] = blue_magic_type[5],
        ["サペリフィック"] = blue_magic_type[4],
        ["マヨイタケ"] = blue_magic_type[5],
        ["種まき"] = blue_magic_type[5],
        ["臭い息"] = blue_magic_type[4],
        ["ガイストウォール"] = blue_magic_type[4],
        ["アーフルアイ"] = blue_magic_type[4],
        ["フロストブレス"] = blue_magic_type[4],
        ["超低周波"] = blue_magic_type[4],
        ["ディセバーメント"] = blue_magic_type[5],
        ["A.バースト"] = blue_magic_type[4],
        ["反応炉冷却"] = nil,
        ["セイリーンコート"] = nil,
        ["プラズマチャージ"] = nil,
        ["テンポラルシフト"] = blue_magic_type[4],
        ["バーチカルクリーヴ"] = blue_magic_type[1],
        ["炸裂弾"] = blue_magic_type[4],
        ["バトルダンス"] = blue_magic_type[5],
        ["サンドスプレー"] = blue_magic_type[4],
        ["グランドスラム"] = blue_magic_type[1],
        ["ヘッドバット"] = blue_magic_type[5],
        ["爆弾投げ"] = blue_magic_type[3],
        ["フライパン"] = blue_magic_type[5],
        ["F.ヒッププレス"] = blue_magic_type[3],
        ["ハイドロショット"] = blue_magic_type[5],
        ["金剛身"] = blue_magic_type[6],
        ["吶喊"] = blue_magic_type[4],
        ["贖罪の光"] = blue_magic_type[4],
        ["ワームアップ"] = nil,
        ["ファイアースピット"] = blue_magic_type[3],
        ["羽根吹雪"] = blue_magic_type[5],
        ["テールスラップ"] = blue_magic_type[5],
        ["H.バラージ"] = blue_magic_type[1],
        ["ねたみ種"] = nil,
        ["キャノンボール"] = blue_magic_type[1],
        ["マインドブラスト"] = blue_magic_type[4],
        ["イグジュビエーション"] = blue_magic_type[7],
        ["マジックハンマー"] = blue_magic_type[4],
        ["ゼファーマント"] = nil,
        ["リガージテーション"] = blue_magic_type[4],
        ["シードスプレー"] = blue_magic_type[5],
        ["コローシブウーズ"] = blue_magic_type[4],
        ["スパイラルスピン"] = blue_magic_type[5],
        ["アシュラクロー"] = blue_magic_type[1],
        ["サブゼロスマッシュ"] = blue_magic_type[5],
        ["共鳴"] = nil,
        ["アクリッドストリーム"] = blue_magic_type[4],
        ["ブレーズバウンド"] = blue_magic_type[1],
        ["P.エンブレイス"] = blue_magic_type[7],
        ["D.ロア"] = blue_magic_type[4],
        ["C.ディスチャージ"] = blue_magic_type[4],
        ["鯨波"] = nil,
        ["バッテリーチャージ"] = blue_magic_type[8],
        ["リーフストーム"] = blue_magic_type[3],
        ["リジェネレーション"] = nil,
        ["ファイナルスピア"] = blue_magic_type[1],
        ["ゴブリンラッシュ"] = blue_magic_type[1],
        ["バニティダイブ"] = blue_magic_type[1],
        ["マジックバリア"] = blue_magic_type[6],
        ["怒りの旋風"] = blue_magic_type[5],
        ["ベンシクタイフーン"] = blue_magic_type[5],
        ["オーロラルドレープ"] = blue_magic_type[4],
        ["オスモーシス"] = blue_magic_type[4],
        ["四連突"] = blue_magic_type[1],
        ["ファンタッド"] = blue_magic_type[10],
        ["サーマルパルス"] = blue_magic_type[5],
        ["エンプティスラッシュ"] = blue_magic_type[1],
        ["夢想花"] = blue_magic_type[4],
        ["オカルテーション"] = blue_magic_type[6],
        ["チャージドホイスカー"] = blue_magic_type[3],
        ["虚無の風"] = nil,
        ["デルタスラスト"] = blue_magic_type[5],
        ["みんなの怨み"] = blue_magic_type[3],
        ["リービンウィンド"] = blue_magic_type[4],
        ["牙門"] = nil,
        ["モータルレイ"] = blue_magic_type[4],
        ["水風船爆弾"] = blue_magic_type[4],
        ["重い一撃"] = blue_magic_type[2],
        ["ダークオーブ"] = blue_magic_type[9],
        ["ホワイトウィンド"] = blue_magic_type[7],
        ["サドンランジ"] = blue_magic_type[5],
        ["クアドラストライク"] = blue_magic_type[1],
        ["ヴェイパースプレー"] = blue_magic_type[3],
        ["サンダーブレス"] = blue_magic_type[3],
        ["カウンタースタンス"] = nil,
        ["槍玉"] = blue_magic_type[1],
        ["ウィンドブレス"] = blue_magic_type[3],
        ["偃月刃"] = blue_magic_type[5],
        ["N.メディテイト"] = nil,
        ["T.アップヒーヴ"] = blue_magic_type[1],
        ["R.デルージュ"] = blue_magic_type[4],
        ["エンバームアース"] = blue_magic_type[11],
        ["パラライズトライアド"] = blue_magic_type[5],
        ["ファウルウォーター"] = blue_magic_type[4],
        ["グルーティナスダート"] = blue_magic_type[1],
        ["レテナグレア"] = blue_magic_type[3],
        ["サブダックション"] = blue_magic_type[3],
        ["T.アッサルト"] = blue_magic_type[1],
        ["エラチックフラッター"] = nil,
        ["レストラル"] = blue_magic_type[7],
        ["レールキャノン"] = blue_magic_type[3],
        ["ディフュージョンレイ"] = blue_magic_type[3],
        ["シンカードリル"] = blue_magic_type[1],
        ["モルトプルメイジ"] = blue_magic_type[3],
        ["ネクターデルージュ"] = blue_magic_type[4],
        ["スイープガウジ"] = blue_magic_type[5],
        ["A.ライベーション"] = blue_magic_type[4],
        ["シアリングテンペスト"] = blue_magic_type[3],
        ["スペクトラルフロー"] = blue_magic_type[3],
        ["アンビルライトニング"] = blue_magic_type[3],
        ["エントゥーム"] = blue_magic_type[11],
        ["サウリアンスライド"] = blue_magic_type[5],
        ["ポーリングサルヴォ"] = blue_magic_type[4],
        ["B.フルゴア"] = blue_magic_type[3],
        ["スカウリングスペイト"] = blue_magic_type[3],
        ["サイレントストーム"] = blue_magic_type[4],
        ["テネブラルクラッシュ"] = blue_magic_type[9],
        ["サンダーボルト"] = blue_magic_type[5],
        ["甲羅強化"] = nil,
        ["アブソルートテラー"] = blue_magic_type[4],
        ["ゲーツオブハデス"] = blue_magic_type[4],
        ["トゥールビヨン"] = blue_magic_type[4],
        ["ポーラーブルワーク"] = nil,
        ["ビルジストーム"] = blue_magic_type[5],
        ["ブラッドレイク"] = blue_magic_type[5],
        ["D.ワールウィンド"] = blue_magic_type[4],
        ["カルカリアンヴァーヴ"] = blue_magic_type[6],
        ["ブリスターローア"] = blue_magic_type[4],
        ["アップルート"] = nil,
        ["クラッシュサンダー"] = blue_magic_type[3],
        ["ポラーロア"] = blue_magic_type[3],
        ["マイティガード"] = nil,
        ["クルエルジョーク"] = blue_magic_type[4],
        ["セスプール"] = blue_magic_type[4],
        ["テーリングガスト"] = blue_magic_type[4],
    }
end