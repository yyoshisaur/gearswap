function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    include('Mote-TreasureHunter')
    include('Mote-Display')

    include('auto_war')
    include('war_itemizer')
    mogmaster('war')
    select_default_macro_book()
end

function user_setup()
    state.OffenseMode:options('Normal', 'Stp')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal', 'Acc', 'DmgLim')
    state.Weapons = M{['description']='Use Weapons', 'Ukonvasara', 'Chango', 'Polearm', 'Sword', 'Club'}

    init_auto_mode()

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
        {label='Combat', mode='CombatForm'},
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
    sets.weapons.Ukonvasara =  {main="ウコンバサラ", sub="ウトゥグリップ",}
    sets.weapons.Chango = {main="シャンゴル", sub="ウトゥグリップ",}
    sets.weapons.Polearm = {main="シャイニングワン", sub="ウトゥグリップ",}
    sets.weapons.Sword ={main="ネイグリング", sub="ブラーシールド+1",}
    sets.weapons.Club = {main="ロクソテクメイス+1", sub="ブラーシールド+1",}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        hands={ name="バロラスミトン", augments={'Pet: Haste+1','Rng.Acc.+16','"Treasure Hunter"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        ammo="サピエンスオーブ",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        right_ring="ラハブリング",
    }

    sets.precast.RA = {
        ammo="タスラム",
    }

    sets.precast.WS = { -- Multi
        ammo="ノブキエリ",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.vit = {
        ammo="ノブキエリ",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.str = {
        ammo="ノブキエリ",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.critical = {
        ammo="イェットシーラ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="ＰＭロリカ+3",
        hands="フラママノポラ+2",
        legs="サクパタクウィス",
        feet="サクパタレギンス",
        neck={ name="戦士の数珠+2", augments={'Path: A',}},
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="スラッドピアス",
        right_ear="シェレピアス",
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.str_sword = {
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck={ name="戦士の数珠+2", augments={'Path: A',}},
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.magic_acc = {
        ammo="ペムフレドタスラム",
        head="フラマツッケット+2",
        body="フラマコラジン+2",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="月光の首飾り",
        waist="エスカンストーン",
        left_ear="ディグニタリピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="フラマリング",
        right_ring="月光の指輪",
        back={ name="シコルマント", augments={'DEX+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Waltz" potency +10%','Damage taken-5%',}},
    }

    -- 両手斧
    sets.precast.WS['シールドブレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['アイアンテンペスト'] = sets.precast.WS.str
    sets.precast.WS['シュトルムヴィント'] = sets.precast.WS.str
    sets.precast.WS['キーンエッジ'] = sets.precast.WS.str
    sets.precast.WS['レイジングラッシュ'] = sets.precast.WS.critical
    sets.precast.WS['スチールサイクロン'] = sets.precast.WS.str
    sets.precast.WS['フェルクリーヴ'] = sets.precast.WS.str
    sets.precast.WS['キングズジャスティス'] = sets.precast.WS.str
    sets.precast.WS['アーマーブレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['ウェポンブレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['フルブレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['ウッコフューリー'] = sets.precast.WS.critical
    sets.precast.WS['アップヒーバル'] = sets.precast.WS.vit
    -- 両手槍
    sets.precast.WS['ダブルスラスト'] = sets.precast.WS.str
    sets.precast.WS['サンダースラスト'] = sets.precast.WS.str
    sets.precast.WS['ライデンスラスト'] = sets.precast.WS.str
    sets.precast.WS['足払い'] = sets.precast.WS.magic_acc
    sets.precast.WS['ペンタスラスト'] = sets.precast.WS.str
    sets.precast.WS['ボーパルスラスト'] = sets.precast.WS.str
    sets.precast.WS['スキュアー'] = sets.precast.WS.str
    sets.precast.WS['大車輪'] = sets.precast.WS.str
    sets.precast.WS['インパルスドライヴ'] = sets.precast.WS.critical
    sets.precast.WS['ソニックスラスト'] = sets.precast.WS.str
    sets.precast.WS['スターダイバー'] = sets.precast.WS.str
    -- 片手剣
    sets.precast.WS['サベッジブレード'] = sets.precast.WS.str_sword
    -- 片手棍
    sets.precast.WS['トゥルーストライク	'] = sets.precast.WS
    sets.precast.WS['ジャッジメント'] = sets.precast.WS.str_sword
    sets.precast.WS['ブラックヘイロー'] = sets.precast.WS.str_sword
    sets.precast.WS['レルムレイザー'] = sets.precast.WS.mulit

    sets.precast.JA['バーサク'] = {
        body="ＰＭロリカ+3",
        feet={ name="ＡＧカリガ+3", augments={'Enhances "Tomahawk" effect',}},
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    sets.precast.JA['ディフェンダー'] = {hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},}
    sets.precast.JA['アグレッサー'] = {head="ＰＭマスク+3", body={ name="ＡＧロリカ+3", augments={'Enhances "Aggressive Aim" effect',}},}
    sets.precast.JA['ウォークライ'] = {head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},}
    sets.precast.JA['ブラッドレイジ'] = {body="ＢＩロリカ+1",}
    sets.precast.JA['トマホーク'] = {ammo="Ｔ．トマホーク", feet={ name="ＡＧカリガ+3", augments={'Enhances "Tomahawk" effect',}},}
    sets.precast.JA['マイティストライク'] = {hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},}
    sets.precast.JA['挑発'] = {
        ammo="サピエンスオーブ",
        head="ハリタスヘルム",
        body="フロプトブレスト",
        hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},
        legs="ＰＭクウィス+3",
        feet="サクパタレギンス",
        neck="月光の首飾り",
        waist="フルームベルト+1",
        left_ear="トゥイストピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="アイワツリング",
        back="月光の羽衣",
    }

    sets.precast.JA.Waltz = {
        legs="ダッシングサブリガ",
        left_ring="アスクレピアリング",
        right_ring="ヴァルスールリング",
        back={ name="シコルマント", augments={'DEX+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Waltz" potency +10%','Damage taken-5%',}},
    }

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="ニャメヘルム",
        body="サクパタブレスト",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
        feet="サクパタレギンス",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="セサンスピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.engaged = {
        ammo="イェットシーラ+1",
        head="サクパタヘルム",
        body="フロプトブレスト",
        hands="サクパタガントレ",
        legs="ＰＭクウィス+3",
        feet="ＰＭカリガ+3",
        neck={ name="戦士の数珠+2", augments={'Path: A',}},
        waist="イオスケハベルト+1",
        left_ear="ブルタルピアス",
        right_ear="シェレピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    -- 攻撃間隔短縮 820/1024
    -- 魔法 448/1024
    -- アビリティ 256/1024
    -- 八双 102/1024

    sets.engaged.Stp = {
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        head="フロプトヘルム",
        body="フロプトブレスト",
        hands="サクパタガントレ",
        legs="ＰＭクウィス+3",
        feet="ＰＭカリガ+3",
        neck={ name="戦士の数珠+2", augments={'Path: A',}},
        waist="イオスケハベルト+1",
        left_ear="セサンスピアス",
        right_ear="シェレピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
end

function job_precast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_precast(spell)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_aftercast(spell)
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
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

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'abys' then
        enable('main','head','neck')
        if cmdParams[2] == 'dagger' then
            equip({main="アーンダガー"})
        elseif cmdParams[2] == 'sword' then
            equip({main="エクスカリパー"})
        elseif cmdParams[2] == 'gsword' then
            equip({main="ブレイブブレイドII"})
        elseif cmdParams[2] == 'scythe' then
            equip({main="ロスシックル"})
        elseif cmdParams[2] == 'polearm' then
            equip({main="ヅェーシシュの薙刀"})
        elseif cmdParams[2] == 'katana' then
            equip({main="トレイニービュラン",neck="コンバタントトルク"})
        elseif cmdParams[2] == 'gkatana' then
            equip({main="斬魔刀改",head="剣豪鉢巻",neck="コンバタントトルク"})
        elseif cmdParams[2] == 'club' then
            equip({main="ソウルフレアワンド"})
        elseif cmdParams[2] == 'staff' then
            equip({main="ラムスタッフ"})
        elseif cmdParams[2] == 'reset' then
            send_command('gs c update user')
            return
        elseif cmdParams[2] == 'get' then
            windower.send_command('jc sub nin')
            itemizer_get_abyssea()
        elseif cmdParams[2] == 'put' then
            itemizer_put_abyssea()
        end
        disable('main','head','neck')
    end
end

function select_default_macro_book()
    set_macro_page(1, 18)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end