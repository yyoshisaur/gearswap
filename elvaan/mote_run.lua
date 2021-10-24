function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['エンボルド'] = buffactive['エンボルド'] or false
    state.Buff['ファストキャスト'] = buffactive['ファストキャスト'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')

    include('run_auto')
end

function user_setup()
    state.OffenseMode:options('Normal')
    state.HybridMode:options('Normal', 'KnockBack')
    state.WeaponskillMode:options('Normal')
    state.IdleMode:options('Normal')
    state.Weapons = M{['description']='Use Weapons', 'Epeolatry'}

    init_auto_mode()

    state.SIRD = M(false, "SIRD")

    bool_state = {{label='SIRD', mode='SIRD'}}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
        {label='Auto', mode='AutoMode'},
        {label='Rune', mode='AutoRune'},
        }
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('run')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode; gs c cycle IdleMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    send_command('bind f3 gs c cycle AutoMode')
    send_command('bind ^f3 gs c cycle AutoRune')
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
    send_command('unbind ^f3')
    send_command('unbind f4')
    send_command('unbind ^f4')

    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    sets.weapons.Epeolatry = {main="エピオラトリー",}
    -- sets.weapons.Lycurgos = {main="ライカーゴス",}

    sets.TreasureHunter = {
        head="ヴォルトキャップ",
        -- body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.EnmityBoost = {
        ammo="ストンチタスラム+1",
        head={ name="ラビッドバイザー", hp=38,},
        body={ name="エメットハーネス+1", hp=61,},
        hands={ name="クーリスグローブ",  hp=25,},
        legs={ name="ＥＲレグガード+1", hp=80,},
        feet={ name="ＥＲグリーヴ+1", hp=18,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist={ name="カシリベルト", hp=30,},
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring={ name="アイワツリング", hp=70,},
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60},
    }

    sets.precast.FC = {
        ammo="ストンチタスラム+1",
        head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}, fc=0.09, hp=59},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}, fc=0.08, hp=25,},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, fc=0.15, hp=107},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, fc=0.08, hp=95,},
        neck={ name="ボルトサージトルク", fc=0.04,},
        waist={ name="ジーゲルサッシュ", fc=0.08,},
        left_ear={ name="エテオレートピアス", hp=50,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring={ name="キシャールリング", fc=0.04},
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }

    sets.precast.FC['ファストキャスト'] = {
        head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }

    sets.precast.WS = { -- Multi
    }

    sets.precast.WS.dex = {
    }
        
    sets.precast.WS.acc = {
        ammo="ヤメラング",
        head={ name="アヤモツッケット+2", hp=45,},
        body={ name="アヤモコラッツァ+2", hp=57,},
        hands={ name="アヤモマノポラ+2", hp=22,},
        legs={ name="アヤモコッシャレ+2", hp=45,},
        feet={ name="アヤモガンビエラ+2", hp=11,},
        neck={ name="サンクトネックレス", hp=35,},
        waist={ name="エスカンストーン", hp=20,},
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }

    -- 両手剣
    sets.precast.WS['デミディエーション'] = sets.precast.WS.dex 
    sets.precast.WS['レゾルーション'] = sets.precast.WS
    sets.precast.WS['グラウンドストライク'] = sets.precast.WS.dex
    sets.precast.WS['スピンスラッシュ'] = sets.precast.WS.dex
    sets.precast.WS['ショックウェーブ'] = sets.precast.WS.acc

    -- 両手斧
    sets.precast.WS['アーマーブレイク'] = sets.precast.WS.acc
    sets.precast.WS['ウェポンブレイク'] = sets.precast.WS.acc
    sets.precast.WS['フルグレイク'] = sets.precast.WS.acc

    sets.precast.JA['ヴァレション'] = set_combine(sets.EnmityBoost, {body={ name="ＲＮコート+3", hp=218,}, legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, hp=107,}, back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60},})
    sets.precast.JA['ヴァリエンス'] = sets.precast.JA['ヴァレション']
    sets.precast.JA['リエモン'] = set_combine(sets.precast.JA['ヴァレション'], {body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},})
    sets.precast.JA['エンボルド'] = {back={ name="ディバートケープ", augments={'"Embolden"+15',}},}
    sets.precast.JA['ビベイシャス'] = {head={ name="ＥＲガレア+1", hp=91,}}
    sets.precast.JA['ガンビット'] = set_combine(sets.EnmityBoost, {hands={ name="ＲＮミトン+3", hp=85,}})
    sets.precast.JA['レイク'] = set_combine(sets.EnmityBoost, {feet={ name="ＦＵブーツ+1", augments={'Enhances "Rayke" effect',}, hp=13,}})
    sets.precast.JA['バットゥタ'] = set_combine(sets.EnmityBoost, {head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}, hp=56,}})
    sets.precast.JA['ワンフォアオール'] = {
        ammo="ストンチタスラム+1",
        head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        body={ name="ＲＮコート+3", hp=218,},
        hands={ name="ＲＮミトン+3", hp=85,},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, fc=0.15, hp=107},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, fc=0.08, hp=95,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist={ name="カシリベルト", hp=30,},
        left_ear={ name="エテオレートピアス", hp=50,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="月光の羽衣", hp=275,},
    }
    sets.precast.JA['フルーグ'] = set_combine(sets.EnmityBoost, {feet={ name="ＲＮブーツ+3", hp=74,}})
    sets.precast.JA['ソードプレイ'] = sets.EnmityBoost
    sets.precast.JA['E.スフォルツォ'] = set_combine(sets.EnmityBoost, {body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},})

    -- sub war
    sets.precast.JA['挑発'] = sets.EnmityBoost
    sets.precast.JA['ウォークライ'] = sets.EnmityBoost

    -- sub pld
    sets.precast.JA['センチネル'] = sets.EnmityBoost

    -- sub drk
    sets.precast.JA['ラストリゾート'] = sets.EnmityBoost
    
    sets.midcast['強化魔法'] = {}
    sets.midcast.enhancing_skill = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}, hp=38,},
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        hands={ name="ＲＮミトン+3", hp=85,},
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}, hp=50},
        feet={ name="ＥＲグリーヴ+1", hp=18,},
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear={ name="エテオレートピアス", hp=50,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110},
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast['強化魔法']['ファランクス'] = {
        ammo="ストンチタスラム+1",
        head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}, hp=56,},
        body={ name="テーオンタバード", augments={'Phalanx +3',}, hp=59},
        hands={ name="テーオングローブ", augments={'Phalanx +3',}, hp=25},
        legs={ name="テーオンタイツ", augments={'Phalanx +3',}, hp=47},
        feet={ name="テーオンブーツ", augments={'Phalanx +3',}, hp=13},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="オリンポスサッシュ",
        left_ear={ name="エテオレートピアス", hp=50,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110},
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast.sird = {
        ammo="ストンチタスラム+1",
        head={ name="テーオンシャポー", augments={'Spell interruption rate down -9%','Phalanx +3',}, hp=36},
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        hands={ name="ローハイドグローブ", augments={'HP+50','Accuracy+15','Evasion+20',}, hp=75,},
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}, hp=50},
        feet={ name="テーオンブーツ", augments={'Spell interruption rate down -9%','Phalanx +3',}, hp=13},
        neck="月光の首飾り",
        waist="オドンブラサッシュ",
        left_ear="ハラサズピアス",
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring="エバネセンスリング",
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast['強化魔法']['ストンスキン']  = {
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        -- neck="ストーンゴルゲット",
        waist="ジーゲルサッシュ",
        left_ear="アースクライピアス",
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="月光の羽衣", hp=275,},
    }
    sets.midcast.enhance_duration = {
        head={ name="ＥＲガレア+1", hp=91,},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, hp=107},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }
    
    sets.midcast['強化魔法'].Regen = set_combine(sets.midcast.enhance_duration, {head={ name="ＲＮバンド+3", fc=0.14, hp=109,}, neck={ name="サクロゴルゲット", hp=50,},})
    sets.midcast['強化魔法'].Refresh = set_combine(sets.midcast.enhance_duration, {waist="ギシドゥバサッシュ",})
    sets.midcast['強化魔法']['ストライ'] = sets.midcast.enhancing_skill
    sets.midcast['強化魔法'].BarElement = sets.midcast.enhancing_skill
    sets.midcast['強化魔法']['エンボルド'] = {back={ name="ディバートケープ", augments={'"Embolden"+15',}},}
    sets.midcast['強化魔法']['フォイル'] = sets.EnmityBoost
    sets.midcast['強化魔法']['アクアベール'] = sets.midcast.sird 

    sets.midcast['神聖魔法'] = {
        ['フラッシュ'] = sets.EnmityBoost
    }

    sets.midcast['暗黒魔法'] ={
        ['スタン'] = sets.EnmityBoost
    }

    sets.midcast['青魔法'] = {
        ['ブランクゲイス'] = sets.EnmityBoost,
        ['ガイストウォール'] = sets.EnmityBoost,
        ['シープソング'] = sets.EnmityBoost,
        ['サペリフィック'] = sets.EnmityBoost,
        ['スティンキングガス'] = sets.EnmityBoost,
        ['ブラッドセイバー'] = sets.EnmityBoost,
        ['ジェタチュラ'] = sets.EnmityBoost,
    }

    sets.idle = {
        sub="コーンスー",
        ammo="ストンチタスラム+1",
        head={ name="ニャメヘルム", hp=91,},
        body={ name="ＲＮコート+3", hp=218,},
        hands={ name="トゥルムミトン+1", hp=74,},
        legs={ name="ニャメフランチャ", hp=114,},
        feet={ name="トゥルムレギンス+1", hp=76,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="エングレイブベルト",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60},
    }

    sets.engaged = {
        sub="コーンスー",
        ammo="ストンチタスラム+1",
        head={ name="ニャメヘルム", hp=91,},
        body={ name="ＲＮコート+3", hp=218,},
        hands={ name="トゥルムミトン+1", hp=74,},
        legs={ name="ニャメフランチャ", hp=114,},
        feet={ name="トゥルムレギンス+1", hp=76,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="エングレイブベルト",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}, hp=110},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60},
    }

end

function job_precast(spell, action, spellMap, eventArgs)
    if state.Buff['ファストキャスト'] then
        classes.CustomClass = 'ファストキャスト'
    end
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
        equip(sets.midcast.sird)
    end

    if spell.skill == '強化魔法' and state.Buff['エンボルド'] then
        equip(sets.midcast['強化魔法']['エンボルド'])
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
    idleSet = set_combine(idleSet, weapons[state.Weapons.value], {sub=get_melee_set().sub})
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
    if cmdParams[1] == 'rune' then
        windower.chat.input('/ja "'..windower.to_shift_jis(state.AutoRune.value) ..'" <me>')
    end
end

function select_default_macro_book()
    set_macro_page(1, 9)
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
