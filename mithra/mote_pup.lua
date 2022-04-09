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
    include('pup_maneuvers')
    include('mystyle')
    include('myexport')
end

function user_setup()
    state.OffenseMode:options('Normal', 'Critical')
    state.HybridMode:options('Normal', 'MA')
    state.WeaponskillMode:options('Normal', 'DmgLim')
    state.IdleMode:options('Normal')
    state.PetMode = M{['description']='Pet Mode', 'None', 'Tank', 'Melee', 'Ranged', 'Magic', 'Heal', 'Nuke',}
    state.PetSubMode = M{['desctiption']='Pet Sub Mode'}
    state.PetTankMode = M{['desctiption']='Pet Sub Mode', 'Enmity', 'HPDT', 'HP', 'DT'}
    state.PetMeleeMode = M{['desctiption']='Pet Sub Mode', 'Multi', 'Stp'}
    state.ManeuverMode = M{['description']='Maneuver Mode', 'Mid', 'Low', 'High', 'Status'}
    state.Weapons = M{['description']='Use Weapons', 'Kenkonken', 'Xiucoatl', 'Gnafron', 'Verethragna', 'Karambit',}
    state.Animator = M{['description']='Use Animator', 'I', 'II'}

    bool_state = {
        {label='Auto', mode='AutoManuevers', alys_disp=false}
    }
    mode_state = {
        {label='Off', mode='OffenseMode'},
        {label='Hybr', mode='HybridMode'},
        -- {label='WS', mode='WeaponskillMode'},
        {label='W', mode='Weapons'},
        {label='P', mode='PetMode'},
        {label='Ps', mode='PetSubMode'},
        {label='M', mode='ManeuverMode'},
        {label='A', mode='Animator'},
    }
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('pup')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    send_command('bind f3 gs c cycle Petmode')
    -- send_command('bind f3 gs c cycle IdleMode')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')
    send_command('bind f5 gs c cycle PetMode')
    send_command('bind ^f5 gs c cycle PetSubMode')
    send_command('bind f6 gs c cycle ManeuverMode')
    send_command('bind ^f6 gs c cycle Animator')
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
    send_command('unbind f5')
    send_command('unbind ^f5')
    send_command('unbind f6')
    send_command('unbind ^f6')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    sets.weapons.Kenkonken = {main="乾坤圏", ammo="ルブリカント+3",}
    sets.weapons.Xiucoatl = {main="シュコアトル", ammo="ルブリカント+3",}
    sets.weapons.Gnafron = {main="ニャフロンアダーガ", ammo="ルブリカント+3",}
    sets.weapons.Verethragna = {main="ウルスラグナ", ammo="ルブリカント+3",}
    sets.weapons.Karambit = {main="カランビット", ammo="ルブリカント+3",}

    sets.animator = {}
    sets.animator.I = {range="Ｐ．ストリンガー+1",}
    sets.animator.II = {range="Ｐ．ストリンガーII+1",}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        legs={ name="ヘルクリアトラウザ", augments={'MND+10','"Rapid Shot"+3','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        head={ name="ヘルクリアヘルム", augments={'Pet: "Mag.Atk.Bns."+29','Pet: INT+10',}},
        body={ name="サムヌーハコート", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+5','"Dual Wield"+5',}},
        legs={ name="ローハイドトラウザ", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        right_ring="プロリクスリング",
    }

    sets.precast.WS = { -- WSD
        head="ヘヨカキャップ+1",
        body="ＦＯトベ+3",
        hands={ name="ＰＩダスタナ+3", augments={'Enhances "Fine-Tuning" effect',}},
        legs="真膝丸膝甲",
        feet="ヘヨカレギンス+1",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェレピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="エパミノダスリング",
        right_ring="ニックマドゥリング",
        back="サクロマント",
        }

    sets.precast.WS.critical = {
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="ヘヨカハーネス+1",
        hands={ name="龍王手甲改", augments={'STR+12','DEX+12','Accuracy+20',}},
        legs="ヘヨカサブリガ+1",
        feet="ヘヨカレギンス+1",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="シェレピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="ビスシアスマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.WS.multi = {
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="タリアマンティル+2",
        hands="マリグナスグローブ",
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        neck="フォシャゴルゲット",
        waist="月虹帯+1",
        left_ear="マーケピアス+1",
        right_ear="ブルタルピアス",
        left_ring="ゲリリング",
        right_ring="ニックマドゥリング",
        back={ name="ビスシアスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS["コンボ"] = sets.precast.WS.multi
    sets.precast.WS["タックル"] = sets.precast.WS.multi
    sets.precast.WS["短勁"] = sets.precast.WS.multi
    sets.precast.WS["バックハンドブロー"] = sets.precast.WS.critical
    sets.precast.WS["乱撃"] = sets.precast.WS.multi
    sets.precast.WS["スピンアタック"] = sets.precast.WS
    sets.precast.WS["空鳴拳"] = sets.precast.WS
    sets.precast.WS["双竜脚"] = sets.precast.WS
    sets.precast.WS["夢想阿修羅拳"] = sets.precast.WS.multi
    sets.precast.WS["闘魂旋風脚"] = sets.precast.WS
    sets.precast.WS["連環六合圏"] = sets.precast.WS.critical
    sets.precast.WS["ビクトリースマイト"] = sets.precast.WS.critical
    sets.precast.WS["四神円舞"] = sets.precast.WS.multi

    sets.precast.JA.Maneuver = {
        body="ＫＧファルセト+1",
        hands="ＦＯダスタナ+3",
        neck="バフーンカラー+1",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.precast.JA.Maneuver.Mid = sets.precast.JA.Maneuver
    sets.precast.JA.Maneuver.Low = {
        neck="バフーンカラー+1",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.precast.JA.Maneuver.High = {
        main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        body="ＫＧファルセト+1",
        hands="ＦＯダスタナ+3",
        neck="バフーンカラー+1",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.precast.JA.Maneuver.Status = {
        main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        hands="ＦＯダスタナ+3",
        left_ear="ブラーナピアス",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.precast.JA['リペアー'] = {
        legs={ name="デサルタタセッツ", augments={'"Sic" and "Ready" ability delay -5','"Repair" potency +10%',}},
        feet="ＦＯバブーシュ+3",
        left_ear="ギニョルピアス",
        right_ear="プラティクピアス",
    }
    
    sets.precast.JA['オーバードライヴ'] = {body={ name="ＰＩトベ+3", augments={'Enhances "Overdrive" effect',}},}
    sets.precast.JA['腹話術'] = {legs={ name="ＰＩチュリダル+3", augments={'Enhances "Ventriloquy" effect',}},}
    sets.precast.JA['黒衣チェンジ'] = {feet={ name="ＰＩバブーシュ+3", augments={'Enhances "Role Reversal" effect',}},}


    sets.midcast.Pet['精霊魔法'] = {
        head={ name="ヘルクリアヘルム", augments={'Pet: "Mag.Atk.Bns."+29','Pet: INT+10',}},
        body={ name="ヘルクリアベスト", augments={'Pet: "Mag.Atk.Bns."+30','Pet: "Subtle Blow"+10','Pet: INT+5','Pet: Attack+14 Pet: Rng.Atk.+14',}},
        hands={ name="ヘルクリアグローブ", augments={'Pet: "Mag.Atk.Bns."+24','Pet: Phys. dmg. taken -1%','Pet: INT+12','Pet: Attack+14 Pet: Rng.Atk.+14',}},
        legs={ name="ＰＩチュリダル+3", augments={'Enhances "Ventriloquy" effect',}},
        feet={ name="ＰＩバブーシュ+3", augments={'Enhances "Role Reversal" effect',}},
        neck="絡繰士の首輪+2",
        waist="ウッコサッシュ",
        left_ear="ブラーナピアス",
        right_ear="エンメルカルピアス",
        left_ring="タリアリング",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.midcast.Pet['弱体魔法'] = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs={ name="ＰＩチュリダル+3", augments={'Enhances "Ventriloquy" effect',}},
        feet="ＦＯバブーシュ+3",
        neck="絡繰士の首輪+2",
        waist="ウッコサッシュ",
        left_ear="昏黄の耳飾り",
        right_ear="エンメルカルピアス",
        left_ring="タリアリング",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    
    sets.midcast.Pet.Cure = {
        head={ name="那伽総面", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        body={ name="那伽作務衣", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        hands={ name="那伽手甲", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        legs="ＦＯチュリダル+3",
        feet={ name="那伽脚絆", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
    }

    sets.idle = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="月虹帯+1",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.engaged = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="絡繰士の首輪+2",
        waist="月虹帯+1",
        left_ear="昏黄の耳飾り",
        right_ear="デディションピアス",
        left_ring="シーリチリング+1",
        right_ring="シーリチリング+1",
        back={ name="ビスシアスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.engaged.MA = set_combine(sets.engaged, {left_ear="マーケピアス+1"})

    sets.engaged.Critical = {
        head="ヘヨカキャップ+1",
        body="ヘヨカハーネス+1",
        hands="ヘヨカミトン+1",
        legs="ヘヨカサブリガ+1",
        feet="ヘヨカレギンス+1",
        neck="シュルマヌカラー",
        waist="月虹帯+1",
        left_ear="セサンスピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="ビスシアスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.engaged.Critical.MA = set_combine(sets.engaged.Critical, {left_ear="マーケピアス+1"})

-- state.PetMode = M{['description']='Pet Mode', 'None', 'Tank', 'Melee', 'Ranged', 'Magic', 'Heal', 'Nuke',}
    sets.idle.Pet = {
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="月虹帯+1",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.idle.Pet.Engaged = {
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="月虹帯+1",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.idle.Pet.Tank = {
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="月虹帯+1",
        left_ear={ name="オノワイヤリング+1", augments={'Path: A',}},
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.idle.Pet.Engaged.Tank = {}
    sets.idle.Pet.Engaged.Tank.Enmity = {
        head="ヘヨカキャップ+1",
        body="ＦＯトベ+3",
        hands="ヘヨカミトン+1",
        legs="ヘヨカサブリガ+1",
        feet="ヘヨカレギンス+1",
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.idle.Pet.Engaged.Tank.HP = {
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body="ＦＯトベ+3",
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.idle.Pet.Engaged.Tank.DT = {
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }
    sets.idle.Pet.Engaged.Tank.HPDT = {
        head="ヘヨカキャップ+1",
        body="ＦＯトベ+3",
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs="ヘヨカサブリガ+1",
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.idle.Pet.Melee = sets.idle.Pet
    sets.idle.Pet.Engaged.Melee = {}
    sets.idle.Pet.Engaged.Melee.Multi =  {
        head={ name="テーオンシャポー", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        body={ name="ＰＩトベ+3", augments={'Enhances "Overdrive" effect',}},
        hands={ name="テーオングローブ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        legs={ name="テーオンタイツ", augments={'Pet: Accuracy+25 Pet: Rng.Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        feet={ name="テーオンブーツ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Haste+5',}},
        neck="シュルマヌカラー",
        waist="クルスカサッシュ+1",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="ヴァラールリング+1",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.idle.Pet.Engaged.Melee.Stp =  {
        head={ name="ヘルクリアヘルム", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Store TP"+11','Pet: DEX+3','Pet: Attack+7 Pet: Rng.Atk.+7',}},
        body={ name="ＰＩトベ+3", augments={'Enhances "Overdrive" effect',}},
        hands={ name="ヘルクリアグローブ", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Pet: "Store TP"+10','Pet: DEX+7','Pet: Attack+12 Pet: Rng.Atk.+12','Pet: "Mag.Atk.Bns."+4',}},
        legs={ name="ヘルクリアトラウザ", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: "Store TP"+10','Pet: DEX+10','Pet: "Mag.Atk.Bns."+1',}},
        -- feet={ name="ヘルクリアブーツ", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Store TP"+11','Pet: DEX+9',}},
        feet={ name="テーオンブーツ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Haste+5',}},
        neck="シュルマヌカラー",
        waist="クルスカサッシュ+1",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="ヴァラールリング+1",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.idle.Pet.Ranged = sets.idle.Pet.Melee
    sets.idle.Pet.Engaged.Ranged = sets.idle.Pet.Engaged.Melee

    sets.idle.Pet.Magic = sets.idle.Pet
    sets.idle.Pet.Engaged.Magic = {
        head={ name="那伽総面", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        body={ name="那伽作務衣", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        hands={ name="那伽手甲", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        legs={ name="ＰＩチュリダル+3", augments={'Enhances "Ventriloquy" effect',}},
        feet={ name="那伽脚絆", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
        neck="ロリケートトルク+1",
        waist="ウッコサッシュ",
        left_ear="ライムアイスピアス",
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="パルーグリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.idle.Pet.Heal = sets.idle.Pet.Magic
    sets.idle.Pet.Engaged.Heal = sets.idle.Pet.Engaged.Magic

    sets.idle.Pet.Nuke = sets.idle.Pet.Magic
    sets.idle.Pet.Engaged.Nuke = sets.idle.Pet.Engaged.Magic

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
    if spellMap == 'Maneuver' then
        classes.JAMode = state.ManeuverMode.value
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
    idleSet = set_combine(idleSet, weapons[state.Weapons.value], sets.animator[state.Animator.value])
    return idleSet
end

function customize_melee_set(meleeSet)
    local weapons = sets.weapons
    meleeSet = set_combine(meleeSet, weapons[state.Weapons.value], sets.animator[state.Animator.value])
    return meleeSet
end

function job_pet_status_change(newStatus, oldStatus, eventArgs)
    handle_equipping_gear(player.status)
end

function job_buff_change(buff, gain)
end

function job_state_change(stateField, newValue, oldValue)

    if stateField == state.PetMode.description then
        if state.PetMode.value == 'Tank' then
            state.PetSubMode = state.PetTankMode
        elseif state.PetMode.value == 'Melee' then
            state.PetSubMode = state.PetMeleeMode
        else
            state.PetSubMode = M{['desctiption']='Pet Sub Mode'}
        end
    end
end

function job_update(cmdParams, eventArgs)
    update_pet_mode()
    if state.DisplayMode.value then update_job_states() end
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_equip_by_sub_job(newSubjob)
end

function job_pet_change(pet, gain)
    update_pet_mode()
end

function update_pet_mode()
    update_custom_groups()
end
function update_custom_groups()
    classes.CustomIdleGroups:clear()
    if pet.isvalid then
        classes.CustomIdleGroups:append(state.PetMode.value)
        classes.CustomIdleGroups:append(state.PetSubMode.value)
    end
end

--[[
    ・自動マニューバを有効
    //gs c am 炎 光 土　or //gs c am ファイアマニューバ ライトマニューバ アースマニューバ
    "炎"や"ファイアマニューバ"は定型文も有効
    ・自動マニューバを無効
    //gs c am off
]]
function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'am' then
        if cmdParams[2] == 'off' then
            set_maneuvers()
            windower.add_to_chat(122,'Auto Maneuvers off')
        else
            local maneuver_1, maneuver_2, maneuver_3 = nil
            if cmdParams[2] then
                maneuver_1 = windower.convert_auto_trans(cmdParams[2])
            else
                windower.add_to_chat(122,'No Maneuver 1 given.')
                return
            end

            if cmdParams[3] then
                maneuver_2 = windower.convert_auto_trans(cmdParams[3])
            else
                windower.add_to_chat(122,'No Maneuver 2 given.')
                return
            end

            if cmdParams[4] then
                maneuver_3 = windower.convert_auto_trans(cmdParams[4])
            else
                windower.add_to_chat(122,'No Maneuver 3 given.')
                return
            end
            set_maneuvers(maneuver_1, maneuver_2, maneuver_3)
        end
    elseif cmdParams[1] == 'lockstyle' or cmdParams[1] == 'ls' then
        mystyle('か', player.sub_job)
    end
end

function select_default_macro_book()
    set_macro_page(1, 3)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function set_equip_by_sub_job(subJob)
    if state.DisplayMode.value then update_job_states() end

    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end