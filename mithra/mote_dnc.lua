function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['C.フラリッシュ'] = buffactive['C.フラリッシュ'] or false
    state.Buff['S.フラリッシュ'] = buffactive['S.フラリッシュ'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')

    include('auto_dnc')
    include('mystyle')
    include('myexport')

    select_default_macro_book()
    mogmaster('dnc')
end

function user_setup()
    state.OffenseMode:options('Normal','DT')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal', 'DmgLim')
    state.Weapons = M{['description']='Use Weapons', 'Twashtar', 'Tauret', 'Centovente'}

    init_auto_mode()

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hydrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
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
    send_command('bind f3 gs c cycle AutoMode')
    -- send_command('bind f3 gs c cycle CastingMode')
    -- send_command('bind f3 gs c cycle IdleMode')
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
    send_command('unbind f3')
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
    sets.weapons.Twashtar = { main={name="トゥワシュトラ"}, sub={ name="クレパスクラナイフ"}}
    sets.weapons.Tauret = { main={name="トーレット"}, sub={ name="トゥワシュトラ"}}
    sets.weapons.Centovente = { main={name="トゥワシュトラ"}, sub={ name="セントヴェンテ"}}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        legs={ name="ヘルクリアトラウザ", augments={'MND+10','"Rapid Shot"+3','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        head={ name="ヘルクリアヘルム", augments={'Pet: "Mag.Atk.Bns."+29','Pet: INT+10',}},
        body={ name="サムヌーハコート", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ローハイドトラウザ", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        right_ring="プロリクスリング",
    }

    sets.precast.WS = { -- Multi
        ammo="パルーグストーン",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        neck="エトワールゴルゲ+2",
        waist="フォシャベルト",
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="イラブラットリング",
        right_ring="ゲリリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.precast.WS.wsd = {
        ammo="パルーグストーン",
        -- head="マリグナスシャポー",
        -- body="マリグナスタバード",
        head="ＭＣティアラ+2",
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ＭＸバングル+3",
        legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="エトワールゴルゲ+2",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="エパミノダスリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.cf = {
        ammo="カリスフェザー",
        head="ＭＣティアラ+2",
        body="メガナダクウィリ+2",
        hands="ＭＸバングル+3",
        legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="エトワールゴルゲ+2",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="エパミノダスリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.sf = {
        ammo="カリスフェザー",
        head="ＭＣティアラ+2",
        body="ＭＣカザク+2",
        hands="ＭＸバングル+3",
        legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="エトワールゴルゲ+2",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="エパミノダスリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.critical = {
        -- ammo="カリスフェザー",
        -- head={ name="ブリスタサリット+1", augments={'Path: A',}},
        -- body="ムンムジャケット+2",
        hands="ムンムリスト+2",
        -- legs="ムンムケックス+2",
        -- feet="ムンムゲマッシュ+2",
        -- neck="エトワールゴルゲ+2",
        -- waist="フォシャベルト",
        -- left_ear="オドルピアス",
        -- right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        -- left_ring="ムンムリング",
        -- right_ring="イラブラットリング",
        -- back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Damage taken-5%',}},
        ammo="カリスフェザー",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="グレティキュイラス",
        -- hands="グレティガントレ",
        legs="グレティブリーチズ",
        feet="グレティブーツ",
        neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear="オドルピアス",
        right_ear="シェリダピアス",
        left_ring="王将の指輪",
        right_ring="ムンムリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Damage taken-5%',}},
    }
    
    sets.precast.WS['ワスプスティング'] = sets.precast.WS.wsd
    sets.precast.WS['ガストスラッシュ'] = sets.precast.WS.wsd
    sets.precast.WS['シャドーステッチ'] = sets.precast.WS.wsd
    sets.precast.WS['バイパーバイト'] = sets.precast.WS.wsd
    sets.precast.WS['サイクロン'] = sets.precast.WS.wsd
    sets.precast.WS['エナジースティール'] = sets.precast.WS.wsd
    sets.precast.WS['エナジードレイン'] = sets.precast.WS.wsd
    sets.precast.WS['ダンシングエッジ'] = sets.precast.WS
    sets.precast.WS['シャークバイト'] = sets.precast.WS.wsd
    sets.precast.WS['イオリアンエッジ'] = sets.precast.WS.wsd
    sets.precast.WS['マーシーストローク'] = sets.precast.WS.wsd
    sets.precast.WS['エヴィサレーション'] = sets.precast.WS.critical
    sets.precast.WS['エクゼンテレター'] = sets.precast.WS
    sets.precast.WS['ルドラストーム'] = sets.precast.WS.wsd
    
    sets.precast.WS['ワスプスティング'].CF = sets.precast.WS.cf
    sets.precast.WS['バイパーバイト'].CF = sets.precast.WS.cf
    sets.precast.WS['シャークバイト'].CF = sets.precast.WS.cf
    sets.precast.WS['ルドラストーム'].CF = sets.precast.WS.cf
    sets.precast.WS['エヴィサレーション'].CF = set_combine(sets.precast.WS.critical, {head="ＭＣティアラ+2", body="メガナダクウィリ+2",})

    sets.precast.WS['ワスプスティング'].SF = sets.precast.WS.sf
    sets.precast.WS['バイパーバイト'].SF = sets.precast.WS.sf
    sets.precast.WS['シャークバイト'].SF = sets.precast.WS.sf
    sets.precast.WS['ルドラストーム'].SF = sets.precast.WS.sf
    sets.precast.WS['エヴィサレーション'].SF = set_combine(sets.precast.WS.critical, {head="ＭＣティアラ+2", body="ＭＣカザク+2",})

    sets.precast.acc = {
        ammo="ヤメラング",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="ムンムケックス+2",
        feet="マリグナスブーツ",
        neck="エトワールゴルゲ+2",
        waist="エスカンストーン",
        left_ear="昏黄の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring="ムンムリング",
        back="サクロマント",
    }
    sets.precast.JA.Step = set_combine(sets.precast.acc, {feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},})
    sets.precast.JA.Step['フェザーステップ'] = set_combine(sets.precast.acc, {feet="ＭＣトーシュー+2",})
    sets.precast.JA.Waltz = {
        ammo="ヤメラング",
        head="ムンムボンネット+2",
        body="ＭＸカザク+1",
        feet="ＭＸトーシュー+3",
        neck="エトワールゴルゲ+2",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ring="アスクレピアリング",
        back={ name="トータッパーマント", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+30','Weapon skill damage +4%',}},
    }
    sets.precast.JA.Waltz.Others = {
        ammo="ヤメラング",
        body="ＭＸカザク+1",
        feet="ＭＸトーシュー+3",
        neck="エトワールゴルゲ+2",
        back={ name="トータッパーマント", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+30','Weapon skill damage +4%',}},
    }

    sets.precast.JA.Jig = {legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}}, feet="ＭＸトーシュー+3",}
    sets.precast.JA.Samba = {head="ＭＸティアラ+1", back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},}
    sets.precast.JA['Flourish3'] = {
        ['C.フラリッシュ'] = {head="ＭＣティアラ+2",}
    }
    sets.precast.JA['Flourish2'] = {
        ['R.フラリッシュ'] = {hands="ＭＣバングル+2", back={ name="トータッパーマント", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+30','Weapon skill damage +4%',}},}
    }
    sets.precast.JA['Flourish1'] = {
        ['D.フラリッシュ'] = sets.precast.acc,
        ['V.フラリッシュ'] = set_combine(sets.precast.acc, {body={ name="ＨＯカザク+3", augments={'Enhances "No Foot Rise" effect',}},})
    }

    sets.precast.JA['トランス'] = {}
    sets.precast.JA['剣の舞い'] = {legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},}
    sets.precast.JA['扇の舞い'] = {}
    sets.precast.JA['ノーフットライズ'] = {body={ name="ＨＯカザク+3", augments={'Enhances "No Foot Rise" effect',}},}

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="エトワールゴルゲ+2",
        waist="キャリアーサッシュ",
        left_ear="デディションピアス",
        right_ear="シェリダピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="グレティキュイラス", augments={'Path: A',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        neck="エトワールゴルゲ+2",
        waist="ウィンバフベルト+1",
        left_ear="デディションピアス",
        right_ear="シェリダピアス",
        left_ring="シーリチリング+1",
        right_ring="ゲリリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged.DT = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body={ name="グレティキュイラス", augments={'Path: A',}},
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="ＭＣトーシュー+2",
        neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="テロスピアス",
        right_ear="シェリダピアス",
        left_ring="守りの指輪",
        right_ring="ゲリリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
end

function get_custom_wsmode(spell, spellMap, default_wsmode)
    if state.Buff['C.フラリッシュ'] then
        return 'CF'
    elseif state.Buff['S.フラリッシュ'] then
        return 'SF'
    end
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

function update_combat_form()
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'lockstyle' or cmdParams[1] == 'ls' then
        mystyle('踊', player.sub_job)
    end
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_equip_by_sub_job(newSubjob)
end

function select_default_macro_book()
    set_macro_page(1, 6)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function set_equip_by_sub_job(subJob)
    if state.DisplayMode.value then update_job_states() end

    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end