function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['トリプルショット'] = buffactive['トリプルショット'] or false
    state.Buff['スナップ'] = buffactive['スナップ'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')
    include('weather_obi')
    include('myexport')

    set_elemental_obi("闇輪の帯")
    set_elemental_obi("火輪の帯")

    magical_ws_use_elemental_obi = S{'レデンサリュート', 'ワイルドファイア',}

    define_roll_values()
end

function user_setup()
    state.OffenseMode:options('Normal', 'Ranged')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal')
    state.RangedMode:options('Normal')
    state.Weapons = M{['description']='Use Weapon'}
    state.RangedWeapons = M{['description']='Use Ranged Weapon', 'DeathPenalty', 'Fomalhaut', 'Armageddon', 'TPBonus'}
    state.QDMode = M{['description']='QuickDraw Mode', 'Magic', 'En-QD', 'Stp'}

    state.LuzafRing = M(false, "Luzaf's Ring")

    select_default_macro_book()
    bool_state = {{label='Luzaf', mode='LuzafRing'}}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='Ranged', mode='RangedMode'},
        {label='QD', mode='QDMode'},
        {label='RW', mode='RangedWeapons'}}
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('cor')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    send_command('bind f3 gs c cycle RangedMode')
    send_command('bind ^f3 gs c cycle RangedWeapons')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')
    send_command('bind f5 gs c toggle LuzafRing')
    send_command('bind ^f5 gs c cycle QDMode')

    -- send_command('bind !f4 gs c reset DefenseMode')
    -- send_command('bind f2 gs c set DefenseMode Physical')
    -- send_command('bind ^f2 gs c cycle PhysicalDefenseMode')
    -- send_command('bind !f2 gs c toggle Kiting')
    -- send_command('bind f3 gs c set DefenseMode Magical')
    -- send_command('bind f3 gs c cycle CastingMode')
    -- send_command('bind f3 gs c cycle IdleMode')

    -- send_command('bind ^- gs c toggle selectnpctargets')
    -- send_command('bind ^= gs c cycle pctargetmode')
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
    send_command('unbind ^f5')

    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    sets.weapons.SwordDW = {main="ネイグリング", sub="トーレット"}
    sets.weapons.DaggerDW = {main={ name="ロスタム", augments={'Path: A',}}, sub="トーレット"}
    sets.weapons.Sword = {main="ネイグリング", sub="ヌスクシールド"}
    sets.weapons.Dagger = {main={ name="ロスタム", augments={'Path: A',}}, sub="ヌスクシールド"}
    sets.weapons.DeathPenalty = {range="デスペナルティ", ammo="ホクスボクブレット"}
    sets.weapons.Fomalhaut = {range="フォーマルハウト", ammo="ホクスボクブレット"}
    sets.weapons.Armageddon = {range="アルマゲドン", ammo="ホクスボクブレット"}
    sets.weapons.TPBonus = {range={ name="アナーキー+3", augments={'Delay:+60','TP Bonus +1000',}}, ammo="ホクスボクブレット"}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.LuzafRing = {on = {right_ring="ルザフリング",}, off = {}}

    sets.precast.FC = {
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ローハイドトラウザ", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="ロケイシャスピアス",
        right_ear="エンチャンピアス+1",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back="月光の羽衣",
    }

    sets.precast.RA = {
        ammo="クロノブレット",
        head={ name="テーオンシャポー", augments={'"Mag.Atk.Bns."+20','"Snapshot"+5','"Snapshot"+5',}},
        body="ＬＫフラック+3",
        hands={ name="ＬＡガントリー+3", augments={'Enhances "Fold" effect',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','"Rapid Shot"+13','Enmity-6',}},
        feet="メガナダジャンボ+2",
        neck="コモドアチャーム+2",
        waist="インパルスベルト",
        back={ name="カムラスマント", augments={'"Snapshot"+10',}},
    }

    sets.precast.RA['スナップ'] = {
        ammo="クロノブレット",
        head="ＣＳトリコルヌ+1",
        body="ＬＫフラック+3",
        hands={ name="ＬＡガントリー+3", augments={'Enhances "Fold" effect',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','"Rapid Shot"+13','Enmity-6',}},
        feet="メガナダジャンボ+2",
        neck="コモドアチャーム+2",
        waist="イェマヤベルト",
        back={ name="カムラスマント", augments={'"Snapshot"+10',}},
    }

    sets.precast.WS = { -- 物理遠隔WS
        ammo="クロノブレット",
        head="マリグナスシャポー",
        body="ＬＫフラック+3",
        hands="メガナダグローブ+2",
        legs="マリグナスタイツ",
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }
    sets.precast.WS.ra_m = {
        ammo="ライヴブレット",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="コモドアチャーム+2",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="フリオミシピアス",
        left_ring="アルビナリング+1",
        right_ring="ディンジルリング",
        back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.WS.ra_m_dark = {
        ammo="ライヴブレット",
        head="妖蟲の髪飾り+1",
        body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="コモドアチャーム+2",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="フリオミシピアス",
        left_ring="アルコンリング",
        right_ring="ディンジルリング",
        back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.WS.melee_wsd = {
        ammo="ホクスボクブレット",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="メガナダグローブ+2",
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="フォシャゴルゲット",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="ルフェセントリング",
        back={ name="カムラスマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.WS.melee_critical = {
        ammo="ホクスボクブレット",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="ムンムジャケット+2",
        hands="ムンムリスト+2",
        legs="ムンムケックス+2",
        feet="ムンムゲマッシュ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="オドルピアス",
        left_ring="ムンムリング",
        right_ring="イラブラットリング",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.melee_magic = set_combine(sets.precast.WS.ra_m, {ammo="ホクスボクブレット", waist="オルペウスサッシュ"})

    -- 射撃
    sets.precast.WS["ラストスタンド"] = sets.precast.WS
    sets.precast.WS["レデンサリュート"] = sets.precast.WS.ra_m_dark
    sets.precast.WS["ワイルドファイア"] = sets.precast.WS.ra_m

    -- 片手剣
    sets.precast.WS['シャインブレード'] = sets.precast.WS.melee_magic
    sets.precast.WS["サークルブレード"] = sets.precast.WS.melee_wsd
    sets.precast.WS["サベッジブレード"] = sets.precast.WS.melee_wsd

    -- 短剣
    sets.precast.WS["ガストスラッシュ"] = sets.precast.WS.melee_magic
    sets.precast.WS["サイクロン"] = sets.precast.WS.melee_magic
    sets.precast.WS["エナジースティール"] = sets.precast.WS.melee_magic
    sets.precast.WS["エナジードレイン"] = sets.precast.WS.melee_magic
    sets.precast.WS["イオリアンエッジ"] = sets.precast.WS.melee_magic
    sets.precast.WS["エヴィサレーション"] = sets.precast.WS.melee_critical

    sets.precast.JA["ランダムディール"] ={body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},}
    sets.precast.JA["フォールド"] = {hands={ name="ＬＡガントリー+3", augments={'Enhances "Fold" effect',}},}
    sets.precast.JA["スネークアイ"] = {legs={ name="ＬＡトルーズ+1", augments={'Enhances "Snake Eye" effect',}},}
    sets.precast.JA["ワイルドカード"] = {feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},}

    sets.precast.CorsairRoll = {
        main={ name="ロスタム", augments={'Path: C',}},
        range={ name="コンペンセーター", augments={'DMG:+15','Rng.Atk.+15','"Mag.Atk.Bns."+15',}},
        head={ name="ＬＡトリコルヌ+1", augments={'Enhances "Winning Streak" effect',}},
        hands="ＣＳガントリー+1",
        legs={ name="デサルタタセッツ", augments={'"Sic" and "Ready" ability delay -5','"Phantom Roll" ability delay -5',}},
        neck="王将の首飾り",
        back={ name="カムラスマント", augments={'"Snapshot"+10',}},
    }

    -- sets.precast.CorsairRoll["キャスターズロール"] = set_combine(sets.precast.CorsairRoll, {legs="ＣＳトルーズ+1"})
    sets.precast.CorsairRoll["コアサーズロール"] = set_combine(sets.precast.CorsairRoll, {feet="ＣＳブーツ+1"})
    sets.precast.CorsairRoll["ブリッツァロール"] = set_combine(sets.precast.CorsairRoll, {head="ＣＳトリコルヌ+1"})
    sets.precast.CorsairRoll["タクティックロール"] = set_combine(sets.precast.CorsairRoll,  {body="ＣＳフラック+1",})
    sets.precast.CorsairRoll["アライズロール"] = set_combine(sets.precast.CorsairRoll, {hands="ＣＳガントリー+1",})

    sets.precast.CorsairShot = {
        ammo="ホクスボクブレット",
        head={ name="ヘルクリアヘルム", augments={'"Mag.Atk.Bns."+24','"Triple Atk."+2','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
        body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヘルクリアトラウザ", augments={'"Mag.Atk.Bns."+29','STR+6','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="コモドアチャーム+2",
        waist="エスカンストーン",
        left_ear="ノーヴィオピアス",
        right_ear="フリオミシピアス",
        left_ring="アルビナリング+1",
        right_ring="ディンジルリング",
        back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.CorsairShot['En-QD'] = set_combine(sets.precast.CorsairShot, {feet="ＣＳブーツ+1",})

    sets.precast.CorsairShot["Stp"] = {
        ammo="ホクスボクブレット",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="アイニアカラー",
        waist="霊亀腰帯",
        left_ear="デディションピアス",
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="シーリチリング+1",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.midcast.RA = {
        ammo="クロノブレット",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="イスクルゴルゲット",
        waist="イェマヤベルト",
        left_ear="デディションピアス",
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        right_ring="イラブラットリング",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.midcast.RA['トリプルショット'] = {
        ammo="クロノブレット",
        head="オショシマスク+1",
        body="ＣＳフラック+1",
        hands={ name="ＬＡガントリー+3", augments={'Enhances "Fold" effect',}},
        legs="マリグナスタイツ",
        feet="オショシレギンス+1",
        neck="イスクルゴルゲット",
        waist="イェマヤベルト",
        left_ear="エナベートピアス",
        right_ear="テロスピアス",
        left_ring={ name="カコエシクリング+1", augments={'Path: A',}},
        right_ring="イラブラットリング",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.idle = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged = {
        head="マリグナスシャポー",
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        neck="コンバタントトルク",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="素破の耳",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged.DT = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="コンバタントトルク",
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged.Ranged = sets.idle

    set_weapons_by_sub_job(player.sub_job)
end

function job_post_pretarget(spell, action, spellMap, eventArgs)
    if spell.type == 'CorsairRoll' then
        disp_roll_info(spell)
    end

    if spell.type == 'CorsairRoll' or spell.name == 'ダブルアップ' then
        equip(sets.LuzafRing[state.LuzafRing.current])
    end
end

function job_precast(spell, action, spellMap, eventArgs)
    if spell.type == 'CorsairShot' then
        classes.JAMode = state.QDMode.value
    end

    if state.Buff['スナップ'] then
        classes.CustomClass = 'スナップ'
    end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' and magical_ws_use_elemental_obi:contains(spell.name) then
        equip(get_hachirin(spell.element))
    end
end

function job_midcast(spell, action, spellMap, eventArgs)
    if state.Buff['トリプルショット'] then
        classes.CustomClass = 'トリプルショット'
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
end

function customize_idle_set(idleSet)
    local weapons = sets.weapons
    idleSet = set_combine(idleSet, weapons[state.Weapons.value], weapons[state.RangedWeapons.value])
    return idleSet
end

function customize_melee_set(meleeSet)
    local weapons = sets.weapons
    meleeSet = set_combine(meleeSet, weapons[state.Weapons.value], weapons[state.RangedWeapons.value])
    return meleeSet
end

function job_buff_change(buff, gain)
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function set_weapons_by_sub_job(subJob)
    -- state.Weapons = M{['description']='Use Weapon', 'DaggerDW', 'SwordDW', 'Dagger', 'Sword'}
    state.Weapons:reset()
    if S{'忍', '踊'}:contains(subJob) then
        state.Weapons:options('DaggerDW', 'SwordDW')
    else
        state.Weapons:options('Dagger', 'Sword')
    end
    if state.DisplayMode.value then update_job_states() end
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_weapons_by_sub_job(newSubjob)
end

function select_default_macro_book()
    set_macro_page(1, 14)
end

function define_roll_values()
    rolls = {
        ['コルセアズロール'] = {desc='得経験値量アップ', lucky = 5, unlucky = 9,},
        ['ニンジャロール'] = {desc='回避アップ', lucky = 4, unlucky = 8,},
        ['ハンターズロール'] = {desc='命中・飛命アップ', lucky = 4, unlucky = 8,},
        ['カオスロール'] = {desc='攻撃力・飛攻アップ', lucky = 4, unlucky = 8,},
        ['メガスズロール'] = {desc='魔法防御力アップ', lucky = 2, unlucky = 6,},
        ['ヒーラーズロール'] = {desc='被ケアル回復量アップ', lucky = 3, unlucky = 7,},
        ['ドラケンロール'] = {desc='ペットの命中・飛命アップ', lucky = 4, unlucky = 8,},
        ['コーラルロール'] = {desc='詠唱中断率ダウン', lucky = 2, unlucky = 6,},
        ['モンクスロール'] = {desc='モクシャアップ', lucky = 3, unlucky = 7,},
        ['ビーストロール'] = {desc='ペットの攻・飛攻アップ', lucky = 4, unlucky = 8,},
        ['サムライロール'] = {desc='ストアTPアップ', lucky = 2, unlucky = 6,},
        ['エボカーズロール'] = {desc='リフレシュ', lucky = 5, unlucky = 9,},
        ['ローグズロール'] = {desc='クリティカルヒット確率アップ', lucky = 5, unlucky = 9,},
        ['ワーロックスロール'] = {desc='魔法命中率アップ', lucky = 4, unlucky = 8,},
        ['ファイターズロール'] = {desc='ダブルアタック効果アップ', lucky = 5, unlucky = 9,},
        ['パペットロール'] = {desc='ペットの魔法攻撃力・魔法命中率アップ', lucky = 3, unlucky = 7,},
        ['ガランツロール'] = {desc='防御力アップ', lucky = 3, unlucky = 7,},
        ['ウィザーズロール'] = {desc='魔法攻撃力アップ', lucky = 5, unlucky = 9,},
        ['ダンサーロール'] = {desc='リジェネ', lucky = 3, unlucky = 7,},
        ['スカラーロール'] = {desc='コンサーブMP効果アップ', lucky = 2, unlucky = 6,},
        ['ナチュラリストロール'] = {desc='被強化魔法延長', lucky = 3, unlucky = 7,},
        ['ルーニストロール'] = {desc='魔法回避率アップ', lucky = 4, unlucky = 8,},
        ['ボルターズロール'] = {desc='移動速度アップ', lucky = 3, unlucky = 9,},
        ['キャスターズロール'] = {desc='ファストキャスト効果アップ', lucky = 2, unlucky = 7,},
        ['コアサーズロール'] = {desc='スナップショット効果アップ', lucky = 3, unlucky = 9,},
        ['ブリッツァロール'] = {desc='攻撃間隔短縮', lucky = 4, unlucky = 9,},
        ['タクティックロール'] = {desc='リゲイン', lucky = 5, unlucky = 8,},
        ['アライズロール'] = {desc='連携ダメージ、連携命中率アップ', lucky = 3, unlucky = 10,},
        ['マイザーロール'] = {desc='セーブTP', lucky = 5, unlucky = 7,},
        ['コンパニオンロール'] = {desc='ペットにリゲイン・リジェネ', lucky = 2, unlucky = 10,},
        ['カウンターロール'] = {desc='カウンター', lucky = 4, unlucky = 8,},
    }
end

function disp_roll_info(spell)
    local desc = rolls[spell.name].desc
    local lucky = rolls[spell.name].lucky
    local unlucky = rolls[spell.name].unlucky
    windower.add_to_chat(2, spell.name .. ' [' ..desc ..'] Lucky=' .. lucky .. ' '.. ' Unluck='.. unlucky)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end