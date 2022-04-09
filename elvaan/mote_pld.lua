function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    -- state.Buff['エンボルド'] = buffactive['エンボルド'] or false
    -- state.Buff['ファストキャスト'] = buffactive['ファストキャスト'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')

    include('auto_pld')
    include('mystyle')
    include('myexport')

end

function user_setup()
    state.OffenseMode:options('Priwen', 'Aegis')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal')
    state.IdleMode:options('Priwen', 'Aegis')
    state.Weapons = M{['description']='Use Weapons', 'Priwen', 'Aegis'}

    init_auto_mode()

    state.SIRD = M(false, "SIRD")

    bool_state = {
        {label='SIRD', mode='SIRD'},
        {label='AutoWS', mode='AutoWS'},
        }
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
        {label='Auto', mode='AutoMode'},
        }
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('pld')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode; gs c cycle IdleMode; gs c cycle Weapons')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    send_command('bind f3 gs c cycle AutoMode')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')
    send_command('bind f5 gs c cycle AutoWS')

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
    send_command('unbind ^f3')
    send_command('unbind f4')
    send_command('unbind ^f4')
    send_command('unbind f5')

    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    sets.weapons.Priwen = {
        main="ブルトガング",
        sub={ name="プリュウェン", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}, hp=80},
    }
    sets.weapons.Aegis = {main="ブルトガング", sub="イージス",}
    -- sets.weapons.Lycurgos = {main="ライカーゴス",}

    sets.TreasureHunter = {
        head="ヴォルトキャップ",
        -- body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.EnmityBoost = {
        ammo="サピエンスオーブ",
        head={ name="ロースバルブータ+1", augments={'Path: A',}, hp=105},
        body={ name="ＳＶキュイラス+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=171,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ＳＶディヒリン+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=162,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227,},
        neck="月光の首飾り",
        waist="テンパスフジット", 
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring={ name="アイワツリング", hp=70,},
        right_ring={ name="アペリエリング+1", augments={'Path: A',}},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80,},
    }

    sets.precast.FC = {
        ammo="サピエンスオーブ",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}, hp=38,},
        body={ name="ＲＶサーコート+3", hp=254,},
        hands={ name="サクパタガントレ", hp=91,},
        legs={ name="サクパタクウィス", hp=114,},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, hp=95,},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        waist="オドンブラサッシュ",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Damage taken-5%',}, hp=80,},
    }

    sets.precast.WS = { -- Multi
    }

    sets.precast.WS.dex = {
    }
        
    sets.precast.WS.acc = {
    }

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
    sets.precast.WS['ロイエ'] = sets.precast.WS
    sets.precast.WS['シャンデュシニュ'] = sets.precast.WS
    sets.precast.WS['レクイエスカット'] = sets.precast.WS

    sets.precast.JA['ランパート'] = set_combine(sets.EnmityBoost, {head={ name="ＣＢコロネット+3", augments={'Enhances "Iron Will" effect',}, hp=96,},})
    sets.precast.JA['ホーリーサークル'] = set_combine(sets.EnmityBoost, {feet={ name="ＲＶレギンス+3", hp=82,}})
    sets.precast.JA['フィールティ'] = set_combine(sets.EnmityBoost, {body={ name="ＣＢサーコート+3", augments={'Enhances "Fealty" effect',}, hp=118,},})
    sets.precast.JA['シバルリー'] = set_combine(sets.EnmityBoost, {hands={ name="ＣＢガントレ+3", augments={'Enhances "Chivalry" effect',}, hp=124,},})
    sets.precast.JA['インビンシブル'] = set_combine(sets.EnmityBoost, {legs={ name="ＣＢブリーチズ+3", augments={'Enhances "Invincible" effect',}, hp=72,},})
    sets.precast.JA['センチネル'] = set_combine(sets.EnmityBoost, {feet={ name="ＣＢレギンス+3", augments={'Enhances "Guardian" effect',}, hp=63,},})
    sets.precast.JA['シールドバッシュ'] = set_combine(sets.EnmityBoost, {hands={ name="ＣＢガントレ+3", augments={'Enhances "Chivalry" effect',}, hp=124,},})
    sets.precast.JA['パリセード'] = sets.EnmityBoost
    sets.precast.JA['神聖の印'] = sets.EnmityBoost
    sets.precast.JA['マジェスティ'] = sets.EnmityBoost

    -- sub war
    sets.precast.JA['挑発'] = sets.EnmityBoost
    sets.precast.JA['ウォークライ'] = sets.EnmityBoost
    
    sets.midcast.sird_enmity = {
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body={ name="ＲＶサーコート+3", hp=254,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ＣＢブリーチズ+3", augments={'Enhances "Invincible" effect',}, hp=72,},
        feet={ name="オディシアグリーヴ", augments={'"Mag.Atk.Bns."+4','"Fast Cast"+6','VIT+6',}, hp=20},
        neck="月光の首飾り",
        waist="オドンブラサッシュ",
        left_ear="ナイトリーピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Damage taken-5%',}, hp=80},
    }

    sets.midcast.sird_cure = {
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body={ name="ＳＶキュイラス+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=171,},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ＣＢブリーチズ+3", augments={'Enhances "Invincible" effect',}, hp=72,},
        feet={ name="オディシアグリーヴ", augments={'"Mag.Atk.Bns."+4','"Fast Cast"+6','VIT+6',}, hp=20},
        neck="月光の首飾り",
        waist="オドンブラサッシュ",
        left_ear="ナイトリーピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Damage taken-5%',}, hp=80},
    }

    sets.midcast.sird_phalanx = {
        main={ name="サクパタソード", hp=100},
        sub={ name="プリュウェン", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}, hp=80},    
        ammo="ストンチタスラム+1",
        head={ name="ＳＶシャレル+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=280,},
        body="ＳＨキュイラス+1",
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239,},
        legs={ name="ファウンダホーズ", augments={'MND+5','Mag. Acc.+2','Breath dmg. taken -2%',}, hp=54,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227},
        neck="月光の首飾り",
        waist="オドンブラサッシュ",
        left_ear="ナイトリーピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110},
        back={ name="ウェルドマント", augments={'VIT+4','DEX+2','Phalanx +5',}, hp=40,},
    }

    sets.midcast['強化魔法'] = {
        body={ name="ＳＨキュイラス+1", hp=115},
        waist="テンパスフジット",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110},
    }

    sets.midcast['強化魔法']['ファランクス'] = {
        main={ name="サクパタソード", hp=100},
        sub={ name="プリュウェン", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}, hp=80},    
        ammo="ストンチタスラム+1",
        head={ name="オディシアヘルム", augments={'Accuracy+9 Attack+9','Rng.Acc.+21','Phalanx +3',}, hp=112},
        body={ name="ＳＨキュイラス+1", hp=115},
        hands={ name="ＳＶハントシュ+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=239},
        legs={ name="サクパタクウィス", hp=114,},
        feet={ name="ＳＶシュー+1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}, hp=227},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        back={ name="ウェルドマント", augments={'VIT+4','DEX+2','Phalanx +5',}, hp=40,},
    }

    sets.midcast['強化魔法']['ファランクス'].SIRD = sets.midcast.sird_phalanx

    sets.midcast['強化魔法'].Protect = set_combine(sets.midcast['強化魔法'], {sub={ name="プリュウェン", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}, hp=80}, left_ear="ブラキュラピアス",})
    sets.midcast['強化魔法'].Shell = set_combine(sets.midcast['強化魔法'], {left_ear="ブラキュラピアス",})

    sets.midcast['回復魔法'] = sets.midcast.sird_cure

    sets.midcast['神聖魔法'] = {
        ['フラッシュ'] = sets.EnmityBoost
    }

    sets.midcast['暗黒魔法'] ={
        ['スタン'] = sets.EnmityBoost
    }

    sets.midcast['青魔法'] = {
        ['ブランクゲイズ'] = sets.midcast.sird_enmity,
        ['ガイストウォール'] = sets.midcast.sird_enmity,
        ['シープソング'] = sets.midcast.sird_enmity,
        ['サペリフィック'] = sets.midcast.sird_enmity,
        ['スティンキングガス'] = sets.midcast.sird_enmity,
        ['ブラッドセイバー'] = sets.midcast.sird_enmity,
        ['ジェタチュラ'] = sets.midcast.sird_enmity,
        ['コクーン'] = sets.midcast.sird_cure,
    }

    sets.idle = {}

    sets.idle.Priwen = {
        ammo="ストンチタスラム+1",
        head={ name="サクパタヘルム", hp=91},
        body={ name="サクロブレスト", hp=182},
        hands={ name="サクパタガントレ", hp=91,},
        legs={ name="サクパタクウィス", hp=114,},
        feet={ name="サクパタレギンス", hp=68},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        waist="キャリアーサッシュ",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="ズワゾピアス+1", augments={'Path: A',}, hp=45},
        left_ring="守りの指輪",
        right_ring={ name="アペリエリング+1", augments={'Path: A',}},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Chance of successful block +5',}, hp=80},
    }

    sets.idle.Aegis = {
        ammo="ストンチタスラム+1",
        head={ name="サクパタヘルム", hp=91},
        body={ name="サクロブレスト", hp=182},
        hands={ name="サクパタガントレ", hp=91,},
        legs={ name="サクパタクウィス", hp=114,},
        feet={ name="サクパタレギンス", hp=68},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        waist="キャリアーサッシュ",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="アペリエリング+1", augments={'Path: A',}},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80},
    }

    sets.engaged = {}

    sets.engaged.Priwen = {
        ammo="ストンチタスラム+1",
        head={ name="サクパタヘルム", hp=91},
        body={ name="サクロブレスト", hp=182},
        hands={ name="サクパタガントレ", hp=91,},
        legs={ name="サクパタクウィス", hp=114,},
        feet={ name="サクパタレギンス", hp=68},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        waist="キャリアーサッシュ",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="ズワゾピアス+1", augments={'Path: A',}, hp=45},
        left_ring="守りの指輪",
        right_ring={ name="アペリエリング+1", augments={'Path: A',}},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Chance of successful block +5',}, hp=80},
    }

    sets.engaged.Aegis = {
        ammo="ストンチタスラム+1",
        head={ name="サクパタヘルム", hp=91},
        body={ name="サクロブレスト", hp=182},
        hands={ name="サクパタガントレ", hp=91,},
        legs={ name="サクパタクウィス", hp=114,},
        feet={ name="サクパタレギンス", hp=68},
        neck={ name="アンムーヴカラー+1", augments={'Path: A',}, hp=200,},
        waist="キャリアーサッシュ",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}, hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="アペリエリング+1", augments={'Path: A',}},
        back={ name="ルディアノスマント", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Damage taken-5%',}, hp=80},
    }

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_precast(spell)
end

function job_post_precast(spell, action, spellMap, eventArgs)
    set_priorities_by_hp()
end

function job_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' then
        if (player.status == 'Idle' or player.status == '') and player.hp > 0 then
            equip(get_idle_set())
        elseif player.status == 'Engaged' then
            equip(get_melee_set())
        end
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)

    if state.SIRD.current == 'on' then
        state.SIRD:set('off')
        if state.DisplayMode.value then update_job_states() end
        if spellMap == 'Phalanx' then
            equip(sets.midcast.sird_phalanx)
        else
            equip(sets.midcast.sird_cure)
        end
    end

    set_priorities_by_hp()
end

function job_aftercast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_aftercast(spell)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
    set_priorities_by_hp()
end

function customize_idle_set(idleSet)
    local weapons = sets.weapons
    idleSet = set_combine(idleSet, weapons[state.Weapons.value])
    return idleSet
end

function customize_melee_set(meleeSet)
    local weapons = sets.weapons
    meleeSet = set_combine(meleeSet, weapons[state.Weapons.value])
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
        mystyle('ナ', player.sub_job)
    end
end

function select_default_macro_book()
    set_macro_page(1, 10)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function set_priorities_by_hp()
    local future,current = gearswap.equip_list,gearswap.equip_list_history
    function get_hp(piece)
        if piece and type(piece)=='table' and piece.hp and type(piece.hp)=='number' then
            return piece.hp
        end
        return 0
    end
    local diff = {}
    for i,v in pairs(future) do
        local priority = get_hp(future[i]) - get_hp(current[i])
        if type(v) == 'table' then
            future[i].priority = priority
        else
            future[i] = {name=v,priority=priority}
        end
        -- windower.add_to_chat(123,future[i].name.." priority="..future[i].priority)
    end
end

function set_equip_by_sub_job(subJob)
    if state.DisplayMode.value then update_job_states() end

    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end