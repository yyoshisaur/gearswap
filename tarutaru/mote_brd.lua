function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['ソウルボイス'] = buffactive['ソウルボイス'] or false
    state.Buff['ナイチンゲール'] = buffactive['ナイチンゲール'] or false
    state.Buff['トルバドゥール'] = buffactive['トルバドゥール'] or false
    state.Buff['クラリオンコール'] = buffactive['クラリオンコール'] or false

    init_song_spell_map()
    set_dummy_song('戦士達のピーアン')
    set_dummy_song('戦士達のピーアンII')
    set_dummy_song('戦士達のピーアンIII')
    set_dummy_song('重装騎兵のミンネ')
    set_dummy_song('猛者のメヌエット')

    include('Mote-TreasureHunter')
    include('Mote-Display')
end

function user_setup()
    state.OffenseMode:options('Normal')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal')
    state.IdleMode:options('Normal')
    state.Weapons = M{['description']='Use Weapons'}
    state.Lullaby =  M{['description']='Use Instruments', 'Wind', 'String'}

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
        {label='Lullaby', mode='Lullaby'}}
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('brd')
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
    send_command('bind f5 gs c cycle Lullaby')
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
    send_command('unbind f5')
    send_command('unbind ^f5')

    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()
    sets.Linos_melee = {range={ name="リノス", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},}
    sets.Linos_ws = {range={ name="リノス", augments={'Accuracy+15','Weapon skill damage +3%','DEX+8',}},}
    sets.Lullaby = {Wind = {range="ギャッラルホルン",}, String = {range="ダウルダヴラ",}}
    sets.weapons = {}

    sets.weapons.Carnwenhan = set_combine({main={name="カルンウェナン"}, sub={name="玄冥盾"},}, sets.Linos_melee)
    sets.weapons.Twashtar = set_combine({main={name="トゥワシュトラ"}, sub={name="玄冥盾"}}, sets.Linos_melee)
    sets.weapons.Aeneas = set_combine({main={name="エーネアス"}, sub={name="玄冥盾"},}, sets.Linos_melee)
    sets.weapons.Tauret = set_combine({main={name="トーレット"}, sub={name="玄冥盾"},}, sets.Linos_melee)
    sets.weapons.Naegling = set_combine({main={name="ネイグリング"}, sub={name="玄冥盾"},}, sets.Linos_melee)
    sets.weapons.Staff = set_combine({main={name="マランスタッフ+1"}, sub={name="エンキストラップ"},}, sets.Linos_melee)

    sets.weapons.Carnwenhan_DW = set_combine({main={name="カルンウェナン"}, sub={name="トゥワシュトラ"},}, sets.Linos_melee)
    sets.weapons.Twashtar_DW = set_combine({main={name="トゥワシュトラ"}, sub={name="トーレット"},}, sets.Linos_melee)
    sets.weapons.Aeneas_DW = set_combine({main={name="エーネアス"}, sub={name="トゥワシュトラ"},}, sets.Linos_melee)
    sets.weapons.Tauret_DW = set_combine({main={name="トーレット"}, sub={name="トゥワシュトラ"},}, sets.Linos_melee)
    sets.weapons.Naegling_DW = set_combine({main={name="ネイグリング"}, sub={name="トゥワシュトラ"},}, sets.Linos_melee)

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        -- body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        main={ name="カーリ", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="インヤガジュバ+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="ジーゲルサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.FC['BardSong'] = {
        main={ name="カーリ", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
        head="ＦＬキャロ+1",
        body="インヤガジュバ+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.FC['BardSong'].March_Marsyas = set_combine(sets.precast.FC['BardSong'], {range="マルシュアス",})

    sets.precast.WS = set_combine(sets.Linos_ws, { -- wsd
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="フォシャゴルゲット",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="マーケピアス+1",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="イラブラットリング",
        right_ring={ name="カコエシクリング+1", augments={'Path: A',}},
        back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    })

    sets.precast.WS.multi = set_combine(sets.Linos_ws, {
        
    })

    sets.precast.WS.critical = set_combine(sets.Linos_ws, {

    })

    sets.precast.WS.acc = {}
    sets.precast.WS.magic_acc = set_combine(sets.Linos_ws, { -- wsd
        head="アヤモツッケット+2",
        body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="ディグニタリピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="スティキニリング+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    })

    -- 短剣
    sets.precast.WS['ワスプスティング'] = sets.precast.WS
    sets.precast.WS['ガストスラッシュ'] = sets.precast.WS
    sets.precast.WS['シャドーステッチ'] = sets.precast.WS
    sets.precast.WS['バイパーバイト'] = sets.precast.WS
    sets.precast.WS['サイクロン'] = sets.precast.WS
    sets.precast.WS['エナジースティール'] = sets.precast.WS
    sets.precast.WS['エナジードレイン'] = sets.precast.WS
    sets.precast.WS['ダンシングエッジ'] = sets.precast.WS
    sets.precast.WS['シャークバイト'] = sets.precast.WS
    sets.precast.WS['イオリアンエッジ'] = sets.precast.WS
    sets.precast.WS['マーシーストローク'] = sets.precast.WS
    sets.precast.WS['エヴィサレーション'] = sets.precast.WS
    sets.precast.WS['エクゼンテレター'] = sets.precast.WS
    sets.precast.WS['ルドラストーム'] = sets.precast.WS
    sets.precast.WS['モーダントライム'] = sets.precast.WS

    -- 片手剣
    sets.precast.WS['ファストブレード'] = sets.precast.WS
    sets.precast.WS['バーニングブレード'] = sets.precast.WS
    sets.precast.WS['レッドロータス'] = sets.precast.WS
    sets.precast.WS['フラットブレード'] = sets.precast.WS
    sets.precast.WS['シャインブレード'] = sets.precast.WS
    sets.precast.WS['セラフブレード'] = sets.precast.WS 
    sets.precast.WS['サークルブレード'] = sets.precast.WS
    sets.precast.WS['スピリッツウィズイン'] = sets.precast.WS
    sets.precast.WS['ボーパルブレード'] = sets.precast.WS
    sets.precast.WS['スウィフトブレード'] = sets.precast.WS
    sets.precast.WS['サベッジブレード'] = sets.precast.WS
    sets.precast.WS['サンギンブレード'] = sets.precast.WS
    sets.precast.WS['シャンデュシニュ'] = sets.precast.WS
    sets.precast.WS['レクイエスカット'] = sets.precast.WS

    sets.precast.WS['シェルクラッシャー'] = sets.precast.WS.magic_acc

    sets.precast.JA["ソウルボイス"] = {legs={ name="ＢＩキャニオンズ+3", augments={'Enhances "Soul Voice" effect',}},}
    sets.precast.JA["ナイチンゲール"] = {feet={ name="ＢＩスリッパー+3", augments={'Enhances "Nightingale" effect',}},}
    sets.precast.JA["トルバドゥール"] = {body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},}

    sets.midcast.FastRecast = set_combine(sets.precast.FC, {waist="ニヌルタサッシュ",})

    sets.midcast['回復魔法'] = sets.midcast.FastRecast
    sets.midcast['回復魔法'].Cure = {
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ヴリコダラジュポン",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ギーヴトラウザ",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="メンデカントピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }

    sets.midcast['回復魔法'].Curaga = sets.midcast['回復魔法'].Cure

    sets.midcast['強化魔法'] = {
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['強化魔法']['ストンスキン'] = set_combine(sets.midcast['強化魔法'], {neck='ストーンゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast.song_duration = {
        main="カルンウェナン",
        head="ＦＬキャロ+1",
        body="ＦＬオングルリヌ+1",
        hands="ＦＬマンシェト+1",
        legs="インヤガシャルワ+2",
        feet="ＢＲスリッパー+3",
        neck="月虹の呼び子+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="スティキニリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic_acc = {
        main="カルンウェナン",
        sub="アムラピシールド",
        range="ギャッラルホルン",
        head="ＢＲランドリト+3",
        body="ＢＲジュスト+3",
        hands="ＢＲカフス+3",
        legs="ＦＬラングラヴ+1",
        feet="ＢＲスリッパー+3",
        neck="月虹の呼び子+1",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="王将の耳飾り",
        left_ring="スティキニリング+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.lullaby_troubadour = {
        body="ＦＬオングルリヌ+1",
        legs="インヤガシャルワ+2",
    }

    sets.midcast.song_base = {
        main="カルンウェナン",
        range="ギャッラルホルン",
        head="アヤモツッケット+2",
        body="アシェーラハーネス",
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="月虹の呼び子+1",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    sets.midcast.song_dummy = {
        range="ダウルダヴラ",
        main={ name="カーリ", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="インヤガジュバ+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="ロリケートトルク+1",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['BardSong'] = sets.midcast.song_duration
    sets.midcast['BardSong'].Paeon      = set_combine(sets.midcast.song_base, {head="ＢＲランドリト+3", legs="インヤガシャルワ+2",})
    sets.midcast['BardSong'].Ballad     = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", legs="ＦＬラングラヴ+1", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Minne      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Mambo      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Carol      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", hands="ムセスゲージ+1",})
    sets.midcast['BardSong'].Minuet     = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Madrigal   = set_combine(sets.midcast.song_base,{head="ＦＬキャロ+1", legs="インヤガシャルワ+2", back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}}})
    sets.midcast['BardSong'].Prelude    = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", feet="ＢＲスリッパー+3", back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}}})
    sets.midcast['BardSong'].March      = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", hands="ＦＬマンシェト+1", legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",}) 
    sets.midcast['BardSong'].March_Marsyas = set_combine(sets.midcast['BardSong'].March, {range="マルシュアス",})
    sets.midcast['BardSong'].Etude      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Scherzo    = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", legs="インヤガシャルワ+2", feet="ＦＬコテュルヌ+1"})
    sets.midcast['BardSong'].Threnody   = set_combine(sets.midcast.magic_acc, {body="ムセスマンティル+1"})
    sets.midcast['BardSong'].Resist = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Mazurka = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Hymnus = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Sirvente = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Dirge = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast['BardSong'].Lullaby = sets.midcast.magic_acc
    sets.midcast['BardSong'].LullabyAoE = sets.midcast.magic_acc
    sets.midcast['BardSong'].Requiem = sets.midcast.magic_acc
    sets.midcast['BardSong'].Elegy = sets.midcast.magic_acc
    sets.midcast['BardSong'].Finale = sets.midcast.magic_acc
    sets.midcast['BardSong'].Virelai = sets.midcast.magic_acc
    sets.midcast['BardSong'].Nocturne = sets.midcast.magic_acc

    sets.midcast['BardSong'].Dummy = sets.midcast.song_dummy

    sets.midcast['弱体魔法'] = sets.midcast.magic_acc

    sets.idle = {
        head="インヤガティアラ+2",
        body="アシェーラハーネス",
        hands="インヤガダスタナ+2",
        legs="インヤガシャルワ+2",
        feet="ＦＬコテュルヌ+1",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.engaged = {
        range={ name="リノス", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
        head="アヤモツッケット+2",
        body="アシェーラハーネス",
        hands="ブンジグローブ",
        legs="アヤモコッシャレ+2",
        feet="ブンジサボ",
        neck="コンバタントトルク",
        waist="サリサフロイベルト",
        left_ear="テロスピアス",
        right_ear="ディグニタリピアス",
        left_ring="月光の指輪",
        right_ring="シーリチリング+1",
        back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    set_weapons_by_sub_job(player.sub_job)
end

function job_pretarget(spell, action, spellMap, eventArgs)
    set_lullaby_aoe_equip(spell, spellMap)
end

function job_precast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_precast(spell)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    set_lullaby_aoe_equip(spell, spellMap)
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

function set_equip_weapon(equipSet, weaponSet)
    equipSet.main = weaponSet.main
    equipSet.sub = weaponSet.sub
end

function set_weapons_by_sub_job(subJob)
    state.Weapons:reset()
    sub_job_suffix = S{'忍', '踊'}:contains(subJob) and '_DW' or ''
    state.Weapons:options(
        'Carnwenhan'..sub_job_suffix,
        'Twashtar'..sub_job_suffix,
        'Aeneas'..sub_job_suffix,
        'Tauret'..sub_job_suffix,
        'Naegling'..sub_job_suffix,
        'Staff'
    )

    if state.DisplayMode.value then update_job_states() end
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_weapons_by_sub_job(newSubjob)
end

function job_get_spell_map(spell, default_spell_map)
    local new_spell_map = default_spell_map

    if spell.type == 'BardSong' then
        new_spell_map = song_spell_maps[spell.name]
    end

    return new_spell_map
end

function select_default_macro_book()
    set_macro_page(1, 19)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function set_lullaby_aoe_equip(spell, spellMap)
    if spell.type == 'BardSong' then
        if spellMap == 'LullabyAoE' then
            equip(sets.Lullaby[state.Lullaby.Value])
        end
        if state.Buff['トルバドゥール'] then
            equip(sets.midcast.lullaby_troubadour)
        end
    end
end

function init_song_spell_map()

    song_spell_maps = {
        ['戦士達のピーアン'] = 'Paeon',
        ['戦士達のピーアンII'] = 'Paeon',
        ['戦士達のピーアンIII'] = 'Paeon',
        ['戦士達のピーアンIV'] = 'Paeon',
        ['戦士達のピーアンV'] = 'Paeon',
        ['戦士達のピーアンVI'] = 'Paeon',

        ['魔道士のバラード'] = 'Ballad',
        ['魔道士のバラードII'] = 'Ballad',
        ['魔道士のバラードIII'] = 'Ballad',
        
        ['重装騎兵のミンネ'] = 'Minne',
        ['重装騎兵のミンネII'] = 'Minne',
        ['重装騎兵のミンネIII'] = 'Minne',
        ['重装騎兵のミンネIV'] = 'Minne',
        ['重装騎兵のミンネV'] = 'Minne',
        
        
        ['闘羊士のマンボ'] = 'Mambo',
        ['闘龍士のマンボ'] = 'Mambo',
        
        ['耐光カロル第一楽章'] = 'Carol',
        ['耐震カロル第一楽章'] = 'Carol',
        ['耐波カロル第一楽章'] = 'Carol',
        ['耐風カロル第一楽章'] = 'Carol',
        ['耐火カロル第一楽章'] = 'Carol',
        ['耐寒カロル第一楽章'] = 'Carol',
        ['耐電カロル第一楽章'] = 'Carol',
        ['耐闇カロル第一楽章'] = 'Carol',
        ['耐震カロル第二楽章'] = 'Carol',
        ['耐波カロル第二楽章'] = 'Carol',
        ['耐風カロル第二楽章'] = 'Carol',
        ['耐火カロル第二楽章'] = 'Carol',
        ['耐寒カロル第二楽章'] = 'Carol',
        ['耐電カロル第二楽章'] = 'Carol',
        ['耐光カロル第二楽章'] = 'Carol',
        ['耐闇カロル第二楽章'] = 'Carol',
        
        ['薬草のパストラル'] = 'Resist',
        ['小話のオペレッタ'] = 'Resist',
        ['腹話のオペレッタ'] = 'Resist',
        ['鶏のオーバード'] = 'Resist',
        ['ゴブリンのガボット'] = 'Resist',
        ['黄金のカプリチオ'] = 'Resist',
        ['光明のファンタジア'] = 'Resist',
        ['破邪のロンド'] = 'Resist',
        
        ['猛者のメヌエット'] = 'Minuet',
        ['猛者のメヌエットII'] = 'Minuet',
        ['猛者のメヌエットIII'] = 'Minuet',
        ['猛者のメヌエットIV'] = 'Minuet',
        ['猛者のメヌエットV'] = 'Minuet',
        
        ['剣闘士のマドリガル'] = 'Madrigal',
        ['剣豪のマドリガル'] = 'Madrigal',

        ['狩人のプレリュード'] = 'Prelude',
        ['弓師のプレリュード'] = 'Prelude',

        ['無敵の進撃マーチ'] = 'March',
        ['栄光の凱旋マーチ'] = 'March',
        ['栄典の戴冠マーチ'] = 'March_Marsyas',

        ['魅了のエチュード'] = 'Etude',
        ['精神のエチュード'] = 'Etude',
        ['知恵のエチュード'] = 'Etude',
        ['機敏のエチュード'] = 'Etude',
        ['元気のエチュード'] = 'Etude',
        ['器用のエチュード'] = 'Etude',
        ['剛力のエチュード'] = 'Etude',
        ['魅惑のエチュード'] = 'Etude',
        ['理力のエチュード'] = 'Etude',
        ['英知のエチュード'] = 'Etude',
        ['俊敏のエチュード'] = 'Etude',
        ['活力のエチュード'] = 'Etude',
        ['妙技のエチュード'] = 'Etude',
        ['怪力のエチュード'] = 'Etude',
        
        ['ラプトルのマズルカ'] = 'Mazurka',
        ['チョコボのマズルカ'] = 'Mazurka',

        ['女神のヒムヌス'] = 'Hymnus',

        ['魔物のシルベント'] = 'Sirvente',

        ['冒険者のダージュ'] = 'Dirge',

        ['警戒のスケルツォ'] = 'Scherzo',

        ['魔物のレクイエム'] = 'Requiem',
        ['魔物のレクイエムII'] = 'Requiem',
        ['魔物のレクイエムIII'] = 'Requiem',
        ['魔物のレクイエムIV'] = 'Requiem',
        ['魔物のレクイエムV'] = 'Requiem',
        ['魔物のレクイエムVI'] = 'Requiem',
        ['魔物のレクイエムVII'] = 'Requiem',

        ['魔物のララバイ'] = 'Lullaby',
        ['魔物達のララバイ'] = 'LullabyAoE',
        ['魔物のララバイII'] = 'Lullaby',
        ['魔物達のララバイII'] = 'LullabyAoE',

        ['戦場のエレジー'] = 'Elegy',
        ['修羅のエレジー'] = 'Elegy',

        ['光のスレノディ'] = 'Threnody',
        ['闇のスレノディ'] = 'Threnody',
        ['土のスレノディ'] = 'Threnody',
        ['水のスレノディ'] = 'Threnody',
        ['風のスレノディ'] = 'Threnody',
        ['炎のスレノディ'] = 'Threnody',
        ['氷のスレノディ'] = 'Threnody',
        ['雷のスレノディ'] = 'Threnody',
        ['光のスレノディII'] = 'Threnody',
        ['闇のスレノディII'] = 'Threnody',
        ['土のスレノディII'] = 'Threnody',
        ['水のスレノディII'] = 'Threnody',
        ['風のスレノディII'] = 'Threnody',
        ['炎のスレノディII'] = 'Threnody',
        ['氷のスレノディII'] = 'Threnody',
        ['雷のスレノディII'] = 'Threnody',

        ['魔法のフィナーレ'] = 'Finale',

        ['乙女のヴィルレー'] = 'Virelai',

        ['恋情のノクターン'] = 'Nocturne',
    }
end

function set_dummy_song(song_name)
    song_spell_maps[song_name] = 'Dummy'
end
