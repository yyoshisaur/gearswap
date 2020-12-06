function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    -- state.Buff['ラストリゾート'] = buffactive['ラストリゾート'] or false
    -- state.Buff['ダークシール'] = buffactive['ダークシール'] or false
    -- state.Buff['ネザーヴォイド'] = buffactive['ネザーヴォイド'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')
end

function user_setup()
    state.OffenseMode:options('Normal')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'DmgLim')
    state.Weapons = M{['description']='Use Weapons', 'Trishula', 'ShiningOne'}

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'}}
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('drg')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
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
    sets.weapons.Trishula = {main="トリシューラ",}
    sets.weapons.ShiningOne = {main="シャイニングワン",}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        hands={ name="バロラスミトン", augments={'Pet: Haste+1','Rng.Acc.+16','"Treasure Hunter"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        ammo="サピエンスオーブ",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="サクロブレスト",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ラハブリング",
    }

    sets.precast.WS = { -- Multi
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body="デーゴンブレスト",
        hands="スレビアガントレ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.wsd = {
        ammo="ノブキエリ",
        head={ name="バロラスマスク", augments={'Accuracy+28','Weapon skill damage +5%','Attack+13',}},
        body={ name="バロラスメイル", augments={'Accuracy+28','Weapon skill damage +5%','STR+10',}},
        hands={ name="ＰＴフィンガー+3", augments={'Enhances "Angon" effect',}},
        legs="ＶＳブレー+3",
        feet="スレビアレギンス+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.magic_acc = {
        ammo="ペムフレドタスラム",
        head="フラマツッケット+2",
        body="フラマコラジン+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="ディグニタリピアス",
        right_ear="テロスピアス",
        left_ring="フラマリング",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS['ダブルスラスト'] = sets.precast.WS
    sets.precast.WS['サンダースラスト'] = sets.precast.WS.wsd
    sets.precast.WS['ライデンスラスト'] = sets.precast.WS.wsd
    sets.precast.WS['足払い'] = sets.precast.WS.magic_acc
    sets.precast.WS['ペンタスラスト'] = sets.precast.WS
    sets.precast.WS['ボーパルスラスト'] = sets.precast.WS.wsd
    sets.precast.WS['スキュアー'] = sets.precast.WS
    sets.precast.WS['大車輪'] = set_combine(sets.precast.WS.wsd, {right_ear="スラッドピアス",})
    sets.precast.WS['インパルスドライヴ'] = sets.precast.WS.wsd
    sets.precast.WS['ソニックスラスト'] = sets.precast.WS.wsd
    sets.precast.WS['雲蒸竜変'] = sets.precast.WS
    sets.precast.WS['カムラン'] = set_combine(sets.precast.WS.wsd, {right_ear="スラッドピアス",})
    sets.precast.WS['スターダイバー'] = sets.precast.WS

    sets.precast.WS['フルスイング'] = sets.precast.WS.wsd
    sets.precast.WS['レトリビューション'] = sets.precast.WS.wsd
    sets.precast.WS['シャッターソウル'] = sets.precast.WS

    sets.precast.WS.dmglim = {head={ name="スティンガヘルム+1", augments={'Path: A',}},}
    sets.precast.WS.DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)

    sets.precast.WS['ダブルスラスト'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS['サンダースラスト'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['ライデンスラスト'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['足払い'].DmgLim = sets.precast.WS.magic_acc
    sets.precast.WS['ペンタスラスト'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS['ボーパルスラスト'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['スキュアー'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS['大車輪'].DmgLim = set_combine(sets.precast.WS.wsd, {right_ear="スラッドピアス",}, sets.precast.WS.dmglim)
    sets.precast.WS['インパルスドライヴ'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['ソニックスラスト'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['雲蒸竜変'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS['カムラン'].DmgLim = set_combine(sets.precast.WS.wsd, {right_ear="スラッドピアス",}, sets.precast.WS.dmglim)
    sets.precast.WS['スターダイバー'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)

    sets.precast.WS['フルスイング'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['レトリビューション'].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS['シャッターソウル'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)

    sets.precast.JA['ジャンプ'] =  {
        ammo="オゲルミルオーブ+1",
        head="フラマツッケット+2",
        body="ＶＳメイル+3",
        hands="ＶＳフィンガー+3",
        legs="フラマディル+2",
        feet="オストログリーヴ",
        neck="シュルマヌカラー",
        waist="イオスケハベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="フラマリング",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.JA['ハイジャンプ'] =  set_combine(sets.precast.JA['ジャンプ'], { legs={ name="ＰＴブレー+3", augments={'Enhances "Strafe" effect',}},})
    sets.precast.JA['スピリットジャンプ'] = set_combine(sets.precast.JA['ジャンプ'], {feet="ＰＥシンバルド+1",})
    sets.precast.JA['ソウルジャンプ'] = sets.precast.JA['ジャンプ']
    sets.precast.JA['スーパージャンプ'] = sets.precast.JA['ジャンプ']

    sets.precast.JA['アンゴン'] = {ammo="アンゴン", hands={ name="ＰＴフィンガー+3", augments={'Enhances "Angon" effect',}},}

    sets.precast.JA['エンシェントサークル'] = {legs="ＶＳブレー+3",}

    sets.precast.JA['スピリットリンク'] = {hands="ＰＥバンブレス+1", right_ear="プラティクピアス",}

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="フロプトヘルム",
        body="サクロブレスト",
        hands="スレビアガントレ+2",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- 攻撃間隔短縮 820/1024
    -- 魔法 448/1024
    -- アビリティ 256/1024
    -- 八双 102/1024, 小竜 102/1024
    -- 八双+小竜 (820-(448+102+102))/1024 = 168/1024 = 0.164 (装備ヘイスト 17%)
    sets.engaged = {
        sub="ウトゥグリップ",
        ammo="オゲルミルオーブ+1",
        head="フラマツッケット+2",
        body="デーゴンブレスト",
        hands="スレビアガントレ+2",
        legs={ name="ＰＴブレー+3", augments={'Enhances "Strafe" effect',}},
        feet="フラマガンビエラ+2",
        neck="シュルマヌカラー",
        waist="イオスケハベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="ニックマドゥリング",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged.DT = {
        sub="コーンスー",
        ammo="オゲルミルオーブ+1",
        head="フロプトヘルム",
        body="フロプトブレスト",
        hands="フラママノポラ+2",
        legs={ name="ＰＴブレー+3", augments={'Enhances "Strafe" effect',}},
        feet="フラマガンビエラ+2",
        neck="シュルマヌカラー",
        waist="イオスケハベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
end

function job_precast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
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
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function select_default_macro_book()
    set_macro_page(1, 15)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end