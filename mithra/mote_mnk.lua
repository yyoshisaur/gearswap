function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['インピタス'] = buffactive['インピタス'] or false
    state.Buff['ためる'] = buffactive['ためる'] or false


    include('Mote-TreasureHunter')
    include('Mote-Display')
    
    include('mystyle')
end

function user_setup()
    state.OffenseMode:options('Normal', 'DT')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal', 'DmgLim')
    state.Weapons = M{['description']='Use Weapons', 'Sagitta', 'Verethragna', 'Karambit', 'Xoanon'}

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        -- {label='Hybrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
        {label='Combat', mode='CombatForm'}}
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('mnk')
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
    sets.weapons.Sagitta = {main="サギッタ",}
    sets.weapons.Verethragna = {main="ウルスラグナ",}
    sets.weapons.Karambit = {main="カランビット",}
    sets.weapons.Xoanon = {main="ゾアノン", sub="フランジドグリップ"}

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
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="乾闥婆筒袴改",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.critical = {
        ammo="オゲルミルオーブ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="ＡＮシクラス+3",
        hands={ name="龍王手甲改", augments={'STR+12','DEX+12','Accuracy+20',}},
        legs="乾闥婆筒袴改",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="オドルピアス",
        -- right_ear="シテレアパール",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.WS.wsd = {
        ammo="ノブキエリ",
        head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},
        body="ＡＮシクラス+3",
        hands="ＡＮグローブ+3",
        legs="真膝丸膝甲",
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.wsd_vit = {
        ammo="ノブキエリ",
        head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},
        body="ＡＮシクラス+3",
        hands="ＡＮグローブ+3",
        legs="真膝丸膝甲",
        -- feet="乾闥婆脛当改",
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.WS.wsd_kick = {
        ammo="ノブキエリ",
        head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},
        body="ＡＮシクラス+3",
        hands="ＡＮグローブ+3",
        legs="真膝丸膝甲",
        -- feet="乾闥婆脛当改",
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.WS.multi_dex = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="蓐収佩楯",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.WS.acc = {
        ammo="ペムフレドタスラム",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="昏黄の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="ムンムリング",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back="サクロマント",
    }

    sets.precast.WS["コンボ"] = sets.precast.WS
    sets.precast.WS["タックル"] = sets.precast.WS.acc
    sets.precast.WS["短勁"] = sets.precast.WS
    sets.precast.WS["バックハンドブロー"] = sets.precast.WS.critical
    sets.precast.WS["乱撃"] = sets.precast.WS
    sets.precast.WS["スピンアタック"] = sets.precast.WS.wsd_vit
    sets.precast.WS["空鳴拳"] = sets.precast.WS.wsd
    sets.precast.WS["双竜脚"] = sets.precast.WS.wsd_kick
    sets.precast.WS["夢想阿修羅拳"] = sets.precast.WS.wsd
    sets.precast.WS["闘魂旋風脚"] = sets.precast.WS.wsd_kick
    sets.precast.WS["ファイナルヘヴン"] = set_combine(sets.precast.WS.wsd_vit, {right_ear="イシュヴァラピアス",})
    sets.precast.WS["アスケーテンツォルン"] = sets.precast.WS.critical
    sets.precast.WS["ビクトリースマイト"] = sets.precast.WS.critical
    sets.precast.WS["四神円舞"] = sets.precast.WS.multi_dex

    sets.precast.WS["バックハンドブロー"]['インピタス'] = set_combine(sets.precast.WS.critical, {body="ＢＫシクラス+1",})
    sets.precast.WS["アスケーテンツォルン"]['インピタス'] = set_combine(sets.precast.WS.critical, {body="ＢＫシクラス+1",})
    sets.precast.WS["ビクトリースマイト"]['インピタス'] = set_combine(sets.precast.WS.critical, {body="ＢＫシクラス+1",})

    sets.precast.WS["シェルクラッシャー"] = sets.precast.WS.acc

    sets.precast.WS.dmglim = {neck="モンクの喉輪+2",}
    sets.precast.WS.DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)

    sets.precast.WS["コンボ"].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS["タックル"].DmgLim = set_combine(sets.precast.WS.acc, sets.precast.WS.dmglim)
    sets.precast.WS["短勁"].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS["バックハンドブロー"].DmgLim = set_combine(sets.precast.WS.critical, sets.precast.WS.dmglim)
    sets.precast.WS["乱撃"].DmgLim = set_combine(sets.precast.WS, sets.precast.WS.dmglim)
    sets.precast.WS["スピンアタック"].DmgLim = set_combine(sets.precast.WS.wsd_vit, sets.precast.WS.dmglim)
    sets.precast.WS["空鳴拳"].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS["双竜脚"].DmgLim = set_combine(sets.precast.WS.wsd_kick, sets.precast.WS.dmglim)
    sets.precast.WS["夢想阿修羅拳"].DmgLim = set_combine(sets.precast.WS.wsd, sets.precast.WS.dmglim)
    sets.precast.WS["闘魂旋風脚"].DmgLim = set_combine(sets.precast.WS.wsd_kick, sets.precast.WS.dmglim)
    sets.precast.WS["ファイナルヘヴン"].DmgLim = set_combine(sets.precast.WS.wsd_vit, {right_ear="イシュヴァラピアス",}, sets.precast.WS.dmglim)
    sets.precast.WS["アスケーテンツォルン"].DmgLim = set_combine(sets.precast.WS.critical, sets.precast.WS.dmglim)
    sets.precast.WS["ビクトリースマイト"].DmgLim = set_combine(sets.precast.WS.critical, sets.precast.WS.dmglim)
    sets.precast.WS["四神円舞"].DmgLim = set_combine(sets.precast.WS.multi_dex, sets.precast.WS.dmglim)

    sets.precast.WS["バックハンドブロー"]['インピタスDmgLim'] = set_combine(sets.precast.WS.critical, sets.precast.WS.dmglim, {body="ＢＫシクラス+1",})
    sets.precast.WS["アスケーテンツォルン"]['インピタスDmgLim'] = set_combine(sets.precast.WS.critical, sets.precast.WS.dmglim, {body="ＢＫシクラス+1",})
    sets.precast.WS["ビクトリースマイト"]['インピタスDmgLim'] = set_combine(sets.precast.WS.critical, sets.precast.WS.dmglim, {body="ＢＫシクラス+1",})

    sets.precast.JA['百烈拳'] = {name={"ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},}
    sets.precast.JA['集中'] = {head="ＡＮクラウン+1"}
    sets.precast.JA['気孔弾'] = {head={ name="ＨＥクラウン+3", augments={'Enhances "Penance" effect',}},}
    sets.precast.JA['マントラ'] = {feet={ name="ＨＥゲートル+3", augments={'Enhances "Mantra" effect',}},}
    sets.precast.JA['チャクラ'] = {
        ammo="オゲルミルオーブ+1",
        body="ＡＮシクラス+3",
        hands={ name="ＨＥグローブ+3", augments={'Enhances "Invigorate" effect',}},
        legs="真膝丸膝甲",
        feet="ＡＮゲートル+3",
        neck="ロリケートトルク+1",
        waist="月虹帯+1",
        left_ear="オノワイヤリング+1",
        right_ear="トゥイストピアス",
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    sets.precast.JA['ためる'] = {
        ammo="ストンチタスラム+1",
        head="ジャナッドヘルム",
        body=empty,
        hands=empty,
        legs=empty,
        feet="マハントサンダル",
        neck="ジャステシアトルク",
        waist="アスクサッシュ",
        left_ear="シェリダピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        left_ring="守りの指輪",
        right_ring="スリョールリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear="シェリダピアス",
        right_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged['インピタス'] = set_combine(sets.engaged, {
        body="ＢＫシクラス+1",
    })

    sets.engaged.DT = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="乾闥婆筒袴改",
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged['インピタス'].DT = set_combine(sets.engaged.DT,{
        body="ＢＫシクラス+1",
    })

    sets.engaged.Sagitta = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Sagitta = set_combine(sets.engaged.Sagitta, {
        body="ＢＫシクラス+1",
    })
    sets.engaged.Sagitta.DT = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="乾闥婆筒袴改",
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="マーケピアス+1",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Sagitta.DT = set_combine(sets.engaged.Sagitta.DT, {
        body="ＢＫシクラス+1",
    })

    sets.engaged.Verethragna = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Verethragna = set_combine(sets.engaged.Verethragna, {
        body="ＢＫシクラス+1",
        left_ring="王将の指輪",
    })
    sets.engaged.Verethragna.DT = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="乾闥婆筒袴改",
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Verethragna.DT = set_combine(sets.engaged.Verethragna.DT, {
        body="ＢＫシクラス+1",
    })

    sets.engaged.Karambit = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="ＨＥホーズ+3", augments={'Enhances "Hundred Fists" effect',}},
        feet="ＡＮゲートル+3",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Karambit = set_combine(sets.engaged.Karambit, {
        body="ＢＫシクラス+1",
    })
    sets.engaged.Karambit.DT = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="乾闥婆筒袴改",
        feet="ＡＮゲートル+3",
        neck={ name="モンクの喉輪+2", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Karambit.DT = set_combine(sets.engaged.Karambit.DT, {
        body="ＢＫシクラス+1",
    })

    sets.engaged.Xoanon = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="乾闥婆筒袴改",
        feet="乾闥婆脛当改",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Xoanon = set_combine(sets.engaged.Xoanon, {})
    sets.engaged.Xoanon.DT = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="モンクの喉輪+2",
        waist="月虹帯+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="セゴモマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.engaged['インピタス'].Xoanon.DT =  set_combine(sets.engaged.Xoanon.DT, {})

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
    update_combat_form()
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
end

function get_custom_wsmode(spell, spellMap, default_wsmode)
    if state.Buff['インピタス'] then
        if not S{'バックハンドブロー', 'アスケーテンツォルン', 'ビクトリースマイト'}:contains(spell.name) then return end
        if default_wsmode ~= 'Normal' then
            return 'インピタス'..default_wsmode
        else
            return 'インピタス'
        end
    end
end

function customize_idle_set(idleSet)
    local weapon = sets.weapons[state.Weapons.value]
    idleSet = set_combine(idleSet, weapon)

    if state.Buff['ためる'] then
        idleSet = set_combine(idleSet, {waist="アスクサッシュ",})
    end

    return idleSet
end

function customize_melee_set(meleeSet)
    local weapon = sets.weapons[state.Weapons.value]
    meleeSet = set_combine(meleeSet, weapon)

    if state.Buff['ためる'] then
        meleeSet = set_combine(meleeSet, {waist="アスクサッシュ",})
    end
    
    return meleeSet
end

function job_buff_change(buff, gain)
    if buff == 'インピタス' then
        update_combat_form()

        if not S{'precast', 'midcast'}:contains(_global.current_event) then
            handle_equipping_gear(player.status)
        end
    end
    if state.DisplayMode.value then update_job_states() end
end

function update_combat_form()

    if state.Buff['インピタス'] then
        state.CombatForm:set('インピタス')
    else
        state.CombatForm:reset()
    end

    state.CombatWeapon:set(state.Weapons.value)
end

function job_update(cmdParams, eventArgs)
    update_combat_form()
    if state.DisplayMode.value then update_job_states() end
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'lockstyle' or cmdParams[1] == 'ls' then
        mystyle('モ', player.sub_job)
    end
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_equip_by_sub_job(newSubjob)
end

function select_default_macro_book()
    set_macro_page(1, 5)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function set_equip_by_sub_job(subJob)
    if state.DisplayMode.value then update_job_states() end

    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end