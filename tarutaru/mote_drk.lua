function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['ラストリゾート'] = buffactive['ラストリゾート'] or false
    state.Buff['ダークシール'] = buffactive['ダークシール'] or false
    state.Buff['ネザーヴォイド'] = buffactive['ネザーヴォイド'] or false

    include('Mote-TreasureHunter')
    include('Mote-Display')
end

function user_setup()
    state.OffenseMode:options('Normal', 'Stp', 'Gaol')
    state.HybridMode:options('Normal', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc', 'DmgLim')
    state.Weapons = M{['description']='Use Weapons', 'Caladbolg', 'Liberator', 'Anguta', 'Lycurgos'}

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
        {label='Combat', mode='CombatForm'}}
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('drk')
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
    sets.weapons.Caladbolg = {main="カラドボルグ",}
    sets.weapons.Liberator = {main="リベレーター",}
    sets.weapons.Anguta = {main="アングータ",}
    sets.weapons.Lycurgos = {main="ライカーゴス",}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        hands={ name="バロラスミトン", augments={'Pet: Haste+1','Rng.Acc.+16','"Treasure Hunter"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        ammo="サピエンスオーブ",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="ＦＬキュイラス+3",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヨリウムクウィス", augments={'Mag. Evasion+20','"Fast Cast"+3','Damage taken-3%',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="ゴールドモグベルト",
        left_ear="オノワイヤリング+1",
        right_ear="エテオレートピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.FC['インパクト'] = {
        ammo="サピエンスオーブ",
        head=empty,
        body="トワイライトプリス",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヨリウムクウィス", augments={'Mag. Evasion+20','"Fast Cast"+3','Damage taken-3%',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.WS = { -- Multi
        ammo="オゲルミルオーブ+1",
        head="フラマツッケット+2",
        body="ＩＧキュイラス+3",
        hands="フラママノポラ+2",
        legs="ＩＧフランチャ+3",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="テロスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.vit = {
        ammo="ノブキエリ",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="ＩＧキュイラス+3",
        hands={ name="オディシアガントレ", augments={'Accuracy+27','Weapon skill damage +4%','VIT+10',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="スレビアレギンス+2",
        neck="フォシャゴルゲット",
        neck="暗黒の数珠+2",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.str = {
        ammo="ノブキエリ",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="ＩＧキュイラス+3",
        hands={ name="オディシアガントレ", augments={'Accuracy+27','Weapon skill damage +4%','VIT+10',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="スレビアレギンス+2",
        neck="暗黒の数珠+2",
        waist="フォシャベルト",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.WS.magic_acc = {
        ammo="ペムフレドタスラム",
        head="フラマツッケット+2",
        body="フラマコラジン+2",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="暗黒の数珠+2",
        waist="エスカンストーン",
        left_ear="昏黄の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring="フラマリング",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.WS.magic = {
        ammo="ノブキエリ",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="ＦＬキュイラス+3", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="フラマガンビエラ+2",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="ノーヴィオピアス",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.WS.scythe_wsd = {
        ammo="ノブキエリ",
        head="ラトリサリット+1",
        body="ＩＧキュイラス+3",
        hands="ラトリガドリング+1",
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="スレビアレギンス+2",
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.scythe_multi_int = {
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body="ＩＧキュイラス+3",
        hands="レテクバングル+1",
        legs="ＩＧフランチャ+3",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.scythe_mythic = {
        ammo="ノブキエリ",
        head="ラトリサリット+1",
        body="ＩＧキュイラス+3",
        hands="ラトリガドリング+1",
        legs="ＩＧフランチャ+3",
        feet="スレビアレギンス+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    -- 両手剣
    sets.precast.WS['トアクリーバー'] = sets.precast.WS.vit 
    sets.precast.WS['レゾルーション'] = sets.precast.WS
    sets.precast.WS['グラウンドストライク'] = sets.precast.WS.str
    sets.precast.WS['スピンスラッシュ'] = sets.precast.WS.str
    sets.precast.WS['ショックウェーブ'] = sets.precast.WS.magic_acc
    -- 両手鎌
    sets.precast.WS['エントロピー'] = sets.precast.WS.scythe_multi_int
    sets.precast.WS['クワイタス'] = sets.precast.WS.scythe_wsd
    sets.precast.WS['インサージェンシー'] = sets.precast.WS.scythe_mythic
    sets.precast.WS['クロスリーパー'] = sets.precast.WS.scythe_wsd
    sets.precast.WS['ギロティン'] = sets.precast.WS
    sets.precast.WS['ダークハーベスト'] = sets.precast.WS.magic
    sets.precast.WS['シャドーオブデス'] = sets.precast.WS.magic
    sets.precast.WS['インファナルサイズ'] = sets.precast.WS.magic
    -- 両手斧
    sets.precast.WS['アーマーブレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['ウェポンブレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['フルグレイク'] = sets.precast.WS.magic_acc
    sets.precast.WS['アップヒーバル'] = sets.precast.WS

    sets.precast.WS.acc = {head='ＩＧバゴネット+3', left_ear="シェレピアス",}
    sets.precast.WS.Acc = set_combine(sets.precast.WS, sets.precast.WS.acc)
    -- 両手剣
    sets.precast.WS['トアクリーバー'].Acc = set_combine(sets.precast.WS.vit, sets.precast.WS.acc)
    sets.precast.WS['レゾルーション'].Acc = set_combine(sets.precast.WS, sets.precast.WS.acc)
    sets.precast.WS['グラウンドストライク'].Acc = set_combine(sets.precast.WS.str, sets.precast.WS.acc)
    sets.precast.WS['スピンスラッシュ'].Acc = set_combine(sets.precast.WS.str, sets.precast.WS.acc)
    sets.precast.WS['ショックウェーブ'].Acc = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.acc)
    -- 両手鎌
    sets.precast.WS['エントロピー'].Acc = set_combine(sets.precast.WS.scythe_multi_int, sets.precast.WS.acc)
    sets.precast.WS['クワイタス'].Acc = set_combine(sets.precast.WS.scythe_wsd, sets.precast.WS.acc)
    sets.precast.WS['インサージェンシー'].Acc = set_combine(sets.precast.WS.scythe_mythic, sets.precast.WS.acc)
    sets.precast.WS['クロスリーパー'].Acc = set_combine(sets.precast.WS.scythe_wsd, sets.precast.WS.acc)
    sets.precast.WS['ギロティン'].Acc = set_combine(sets.precast.WS, sets.precast.WS.acc)
    sets.precast.WS['ダークハーベスト'].Acc = set_combine(sets.precast.WS.magic, sets.precast.WS.acc)
    sets.precast.WS['シャドーオブデス'].Acc = set_combine(sets.precast.WS.magic, sets.precast.WS.acc)
    sets.precast.WS['インファナルサイズ'].Acc = set_combine(sets.precast.WS.magic, sets.precast.WS.acc)
    -- 両手斧
    sets.precast.WS['アーマーブレイク'].Acc = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.acc)
    sets.precast.WS['ウェポンブレイク'].Acc = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.acc)
    sets.precast.WS['フルグレイク'].Acc = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.acc)
    sets.precast.WS['アップヒーバル'].Acc = set_combine(sets.precast.WS, sets.precast.WS.acc)

    sets.precast.WS.dmglim = {head={ name="スティンガヘルム+1", augments={'Path: A',}},}
    sets.precast.WS.DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    -- 両手剣
    sets.precast.WS['トアクリーバー'].DmgLim = set_combine(sets.precast.WS.vit, sets.precast.WS.dmglim)
    sets.precast.WS['レゾルーション'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS['グラウンドストライク'].DmgLim = set_combine(sets.precast.WS.str, sets.precast.WS.dmglim)
    sets.precast.WS['スピンスラッシュ'].DmgLim = set_combine(sets.precast.WS.str, sets.precast.WS.dmglim)
    sets.precast.WS['ショックウェーブ'].DmgLim = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.dmglim)
    -- 両手鎌
    sets.precast.WS['エントロピー'].DmgLim = set_combine(sets.precast.WS.scythe_multi_int, sets.precast.WS.dmglim)
    sets.precast.WS['クワイタス'].DmgLim = set_combine(sets.precast.WS.scythe_wsd, sets.precast.WS.dmglim)
    sets.precast.WS['インサージェンシー'].DmgLim = set_combine(sets.precast.WS.scythe_mythic, sets.precast.WS.dmglim)
    sets.precast.WS['クロスリーパー'].DmgLim = set_combine(sets.precast.WS.scythe_wsd, sets.precast.WS.dmglim)
    sets.precast.WS['ギロティン'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS['ダークハーベスト'].DmgLim = set_combine(sets.precast.WS.magic, sets.precast.WS.dmglim)
    sets.precast.WS['シャドーオブデス'].DmgLim = set_combine(sets.precast.WS.magic, sets.precast.WS.dmglim)
    sets.precast.WS['インファナルサイズ'].DmgLim = set_combine(sets.precast.WS.magic, sets.precast.WS.dmglim)
    -- 両手斧
    sets.precast.WS['アーマーブレイク'].DmgLim = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.dmglim)
    sets.precast.WS['ウェポンブレイク'].DmgLim = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.dmglim)
    sets.precast.WS['フルグレイク'].DmgLim = set_combine(sets.precast.WS.magic_acc, sets.precast.WS.dmglim)
    sets.precast.WS['アップヒーバル'].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)

    sets.precast.JA['ラストリゾート'] = {feet="ＦＬソルレット+3", back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},}
    sets.precast.JA['ウェポンバッシュ'] = {hands="ＩＧガントレ+3",}
    sets.precast.JA['ネザーヴォイド'] = {legs="ＨＴフランチャ+1",}
    sets.precast.JA['アルケインサークル'] = {feet='ＩＧソルレット+3',}
    sets.precast.JA['ブラッドウェポン'] = {body={ name="ＦＬキュイラス+3", augments={'Enhances "Blood Weapon" effect',}},}

    sets.midcast.drk_mgc_skill = {
        ammo="ペムフレドタスラム",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs="ＨＴフランチャ+1",
        feet="ラトリソルレット",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="エンチャンピアス+1",
        right_ear="ディグニタリピアス",
        left_ring="エバネセンスリング",
        right_ring="スティキニリング+1",
        back={ name="デオルクネスマント", augments={'Attack+14','Dark magic skill +9','"Drain" and "Aspir" potency +25',}},
    }

    sets.midcast.Endark = sets.midcast.drk_mgc_skill

    sets.midcast['ドレッドスパイク'] = {
        ammo="ストンチタスラム+1",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="ＨＴキュイラス+1",
        hands={ name="ＥＭガントレ+1", augments={'HP+65','DEX+12','Accuracy+20',}},
        legs="ラトリクウィス",
        feet="ラトリソルレット",
        neck="サンクトネックレス",
        waist="ゴールドモグベルト",
        left_ear="オノワイヤリング+1",
        right_ear="トゥイストピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back="月光の羽衣",
    }

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="ラトリソルレット",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="昏黄の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    sets.midcast.magic_atk = {
        ammo="ペムフレドタスラム",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="ＦＬキュイラス+3", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet='ＩＧソルレット+3',
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="ノーヴィオピアス",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast['弱体魔法'] = sets.midcast.magic_acc
    sets.midcast['暗黒魔法'] = sets.midcast.magic_acc
    sets.midcast['精霊魔法'] = sets.midcast.magic_atk

    sets.midcast.Drain = set_combine(sets.midcast.drk_mgc_skill, {
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        right_ring="メフィタスリング+1",
    })

    sets.drain_nether_void = {legs="ＨＴフランチャ+1",}

    sets.midcast.Absorb = set_combine(sets.midcast.magic_acc, {
        -- main={ name="リベレーター", augments={'Path: A',}},
        -- sub="コーンスー",
        head='ＩＧバゴネット+3',
        hands="パーヴァガントレ",
        back="チュパローサマント",})

    sets.absorb_dark_seal = {head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},}

    sets.midcast['インパクト'] = {
        ammo="ストンチタスラム+1",
        head=empty,
        body="トワイライトプリス",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="ＨＴソルレット+1",
        neck="ロリケートトルク+1",
        waist="オネイロスロープ",
        left_ear="昏黄の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="ラトリサリット+1",
        body="サクロブレスト",
        hands="スレビアガントレ+2",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet="サクパタレギンス",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged = {
        sub="ウトゥグリップ",
        ammo="オゲルミルオーブ+1",
        head="フラマツッケット+2",
        body={ name="ＥＭオーベール+1", augments={'HP+65','DEX+12','Accuracy+20',}},
        hands={ name="ＥＭガントレ+1", augments={'HP+65','DEX+12','Accuracy+20',}},
        legs="ＩＧフランチャ+3",
        feet="フラマガンビエラ+2",
        neck="暗黒の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- 攻撃間隔短縮 820/1024
    -- 魔法 448/1024
    -- アビリティ 256/1024
    -- 八双 102/1024, ラスリゾ+デスペレ (102 + 153)/1024
    -- 八双 + ラスリゾ (820-(448+256))/1024 = 116/1024 = 0.113 (装備ヘイスト 12%)
    -- ラスリゾ (820-(448+255))/1024 = 115/1024 (装備ヘイスト 12%)
    sets.engaged['ラストリゾート'] = set_combine(sets.engaged, {
        body="デーゴンブレスト",
        hands="スレビアガントレ+2",
    })

    sets.engaged.DT = {
        sub="コーンスー",
        ammo="オゲルミルオーブ+1",
        head="フラマツッケット+2",
        body="フロプトブレスト",
        -- hands="フラママノポラ+2",
        hands="サクパタガントレ",
        legs="ＩＧフランチャ+3",
        feet="フラマガンビエラ+2",
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="ブルタルピアス",
        -- left_ring="守りの指輪",
        -- right_ring="月光の指輪",
        left_ring={name="シーリチリング+1", bag="Wardrobe 3"},
        right_ring={name="シーリチリング+1", bag="Wardrobe 4"},
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged['ラストリゾート'].DT = set_combine(sets.engaged.DT,{
        head="フロプトヘルム",
        body="デーゴンブレスト",
        feet={ name="ＦＬソルレット+3", augments={'Enhances "Desperate Blows" effect',}},
        -- waist="サリサフロイベルト",
    })

    sets.engaged.Stp = {
        sub="ウトゥグリップ",
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        head="フラマツッケット+2",
        body="フロプトブレスト",
        hands={ name="ガズブレスレット+1", augments={'Path: A',}},
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="テロスピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged['ラストリゾート'].Stp = set_combine(sets.engaged.Stp, {
        ammo="オゲルミルオーブ+1",
        hands="フラママノポラ+2",
    })

    sets.engaged.Stp.DT = {
        sub="コーンスー",
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        head="フロプトヘルム",
        body="フロプトブレスト",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged['ラストリゾート'].Stp.DT = set_combine(sets.engaged.Stp.DT, {
        ammo="オゲルミルオーブ+1",
        waist="ウィンバフベルト+1",
    })

    sets.engaged.Gaol = {
        sub="コーンスー",
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        head="フロプトヘルム",
        body="フラマコラジン+2",
        hands="サクパタガントレ",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        waist="イオスケハベルト+1",
        left_ear="昏黄の耳飾り",
        right_ear="シェレピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged['ラストリゾート'].Gaol = set_combine(sets.engaged.Gaol, {
        ammo="オゲルミルオーブ+1",
        body="デーゴンブレスト",
        feet={ name="ＦＬソルレット+3", augments={'Enhances "Desperate Blows" effect',}},
        waist="サリサフロイベルト",
    })
end

function job_precast(spell, action, spellMap, eventArgs)
    custom_aftermath_timers_precast(spell)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if spellMap == 'Absorb' and state.Buff['ダークシール'] then
        equip(sets.absorb_dark_seal)
    elseif spellMap == 'Drain' and state.Buff['ネザーヴォイド'] then
        -- equip(sets.drain_nether_void)
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    update_combat_form()
    custom_aftermath_timers_aftercast(spell)
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
    if buff == 'ラストリゾート' then
        update_combat_form()

        if not S{'precast', 'midcast'}:contains(_global.current_event) then
            handle_equipping_gear(player.status)
        end
    end
    if state.DisplayMode.value then update_job_states() end
end

function update_combat_form()
    if state.Buff['ラストリゾート'] then
        state.CombatForm:set('ラストリゾート')
    else
        state.CombatForm:reset()
    end
end

function job_update(cmdParams, eventArgs)
    update_combat_form()
    if state.DisplayMode.value then update_job_states() end
end

function select_default_macro_book()
    set_macro_page(10, 16)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end