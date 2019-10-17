function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.weapon = {}

    init_blue_magic()

    is_th = false

    sword_cycle = 1
    sets.weapon.almace = {main="アルマス", sub="斬鉄剣",}
    sets.weapon.tizona = {main="ティソーナ", sub="アルマス",}
    sets.weapon.sequence = {main="セクエンス", sub="アルマス",}
    sets.weapon.magic = {main="ネイグリング", sub="マクセンチアス"}

    sets.th = {
        head="白ララブキャップ+1",
        body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.enmity = {
        ammo="ストンチタスラム+1",
        head="ラビッドバイザー",
        body="エメットハーネス+1",
        hands="ＡＳバズバンド+3",
        legs="アヤモコッシャレ+2",
        feet="アホシレギンス",
        neck="ロリケートトルク+1",
        waist="カシリベルト",
        left_ear="フリオミシピアス",
        right_ear="クリプティクピアス",
        left_ring="アイワツリング",
        right_ring="守りの指輪",
        back="月光の羽衣",
    }

    sets.precast.fc = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="ピンガチュニック",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.critical = {
        ammo="ファルコンアイ",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="アヤモガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="マーケピアス+1",
        right_ear="マーケピアス+1",
        left_ring="イラブラットリング",
        right_ring="エポナリング",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.ws.wsd = {
        ammo="マントテラアイ",
        head="ジャリコロナル+2",
        body="ＡＳジュバ+3",
        hands="ジャリカフス+2",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','DEX+10','Accuracy+2',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="イラブラットリング",
        right_ring="ルフェセントリング",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.expi = {
        ammo="マントテラアイ",
        head="ジャリコロナル+2",
        body="ＡＳジュバ+3",
        hands="ジャリカフス+2",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet="ジャリピガッシュ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="イラブラットリング",
        right_ring="ルフェセントリング",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.magic = {
        ammo="ペムフレドタスラム",
        head="ＡＳケフィエ+3",
        body="ＡＳジュバ+3",
        hands="ジャリカフス+2",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet="ジャリピガッシュ+2",
        neck="サンクトネックレス",
        waist="フォシャベルト",
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="アルコンリング",
        right_ring="女王の指輪+1",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="ボルトサージトルク",
        waist="エスカンストーン",
        left_ear="ディグニタリピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.magic_drk = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body="ＡＳジュバ+3",
        hands="ジャリカフス+2",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet="ジャリピガッシュ+2",
        neck="サンクトネックレス",
        waist="フォシャベルト",
        left_ear="王将の耳飾り",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="アルコンリング",
        right_ring="女王の指輪+1",
        back={ name="ロスメルタケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws['ファストブレード'] = sets.precast.ws.wsd
    sets.precast.ws['バーニングブレード'] = sets.precast.ws.magic
    sets.precast.ws['レッドロータス'] = sets.precast.ws.magic
    sets.precast.ws['フラットブレード'] = sets.precast.ws.magic_acc
    sets.precast.ws['シャインブレード'] = sets.precast.ws.magic
    sets.precast.ws['セラフブレード'] = sets.precast.ws.magic 
    sets.precast.ws['サークルブレード'] = sets.precast.ws.wsd
    sets.precast.ws['スピリッツウィズイン'] = sets.precast.ws.wsd
    sets.precast.ws['ボーパルブレード'] = sets.precast.ws.critical
    sets.precast.ws['スウィフトブレード'] = sets.precast.ws.critical
    sets.precast.ws['サベッジブレード'] = sets.precast.ws.wsd
    sets.precast.ws['サンギンブレード'] = sets.precast.ws.magic_drk
    sets.precast.ws['エクスピアシオン'] = sets.precast.ws.expi
    sets.precast.ws['シャンデュシニュ'] = sets.precast.ws.critical
    sets.precast.ws['レクイエスカット'] = sets.precast.ws.critical
    
    -- sub war
    sets.precast.ability['挑発'] = sets.enmity
    sets.precast.ability['ウォークライ'] = sets.enmity

    -- sub pld
    sets.precast.ability['センチネル'] = sets.enmity

    sets.midcast.cure = {
        ammo="ストンチタスラム+1",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        body="ピンガチュニック",
        hands="ＨＳバズバンド+1",
        legs="ギーヴトラウザ",
        feet={ name="ミディアムサボ", augments={'MP+45','MND+9','"Conserve MP"+5','"Cure" potency +4%',}},
        neck="ファライナロケット",
        waist="ギシドゥバサッシュ",
        left_ear="オノワイヤリング+1",
        right_ear="メンデカントピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back="月光の羽衣",
    }

    sets.midcast.refresh = {
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="ギシドゥバサッシュ",
    }

    sets.midcast.magic_acc_and_physical_acc = {
        ammo="ペムフレドタスラム",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ボルトサージトルク",
        waist="エスカンストーン",
        left_ear="エンチャンピアス+1",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head="ＡＳケフィエ+3",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="王将の袖飾り",
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet="ジャリピガッシュ+2",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="王将の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic = {
        ammo="ペムフレドタスラム",
        head="ＡＳケフィエ+3",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＡＭスロップス+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="サンクトネックレス",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.magic_drk = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="ＬＬシャルワー+3", augments={'Enhances "Assimilation" effect',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="サンクトネックレス",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="フリオミシピアス",
        left_ring="アルコンリング",
        right_ring="女王の指輪+1",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.blue_magic_skill = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="ＡＳジュバ+3",
        hands="ＨＳバズバンド+1",
        legs="ＨＳタイト+1",
        feet={ name="ＬＬチャルク+3", augments={'Enhances "Diffusion" effect',}},
        neck="インカンタートルク",
        waist="フルームベルト+1",
        left_ear="ロケイシャスピアス",
        right_ear="エンチャンピアス+1",
        left_ring="スティキニリング+1",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.enhance_duration = {
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
    }

    sets.midcast.phalanx = {
        body={ name="ヘルクリアベスト", augments={'Magic dmg. taken -2%','Rng.Atk.+13','Phalanx +5','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',},},
        hands={ name="ヘルクリアグローブ", augments={'INT+9','AGI+4','Phalanx +4','Accuracy+1 Attack+1','Mag. Acc.+8 "Mag.Atk.Bns."+8',},},
        legs={ name="ヘルクリアトラウザ", augments={'Accuracy+1 Attack+1','"Mag.Atk.Bns."+11','Phalanx +4','Mag. Acc.+11 "Mag.Atk.Bns."+11',},},
        feet={ name="ヘルクリアブーツ", augments={'STR+6','AGI+6','Phalanx +5','Accuracy+17 Attack+17',},},
    }

    sets.aftercast.evasion = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エアバニピアス",
        right_ear="エテオレートピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_multi = {
        ammo="銀銭",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="アイニアカラー",
        waist="霊亀腰帯",
        left_ear="デディションピアス",
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_ambus = {
        ammo="ストンチタスラム+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands="レテクバングル",
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="ロリケートトルク+1",
        waist="霊亀腰帯",
        left_ear="デディションピアス",
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_dt = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
    }

    sets.aftercast.melee = sets.aftercast.melee_multi

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="シャマシュローブ",
        hands="マリグナスグローブ",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet="マリグナスブーツ",
        neck="デュアルカラー+1",
        waist="フルームベルト+1",
        left_ear="王将の耳飾り",
        right_ear="エテオレートピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="ロスメルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 10; wait 0.5; input /macro set 1')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.critical
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif string.find(spell.type, 'Magic') then
        set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type == 'BlueMagic' then
        if blue_magic[spell.name].type == "pysical_atk" then
            set_equip = sets.aftercast.melee
        elseif blue_magic[spell.name].type == "pysical_acc" then
            set_equip = sets.midcast.magic_acc_and_physical_acc
        elseif blue_magic[spell.name].type == "magic_atk" then
            set_equip = sets.midcast.magic
        elseif blue_magic[spell.name].type == "magic_acc" then
            set_equip = sets.midcast.magic_acc
        elseif blue_magic[spell.name].type == "pysical_and_magic" then
            set_equip = sets.midcast.magic_acc_and_physical_acc
        elseif blue_magic[spell.name].type == "skill" then
            set_equip = sets.midcast.blue_magic_skill
        elseif blue_magic[spell.name].type == "cure" then
            set_equip = sets.midcast.cure
        elseif blue_magic[spell.name].type == "refresh" then
            set_equip = sets.midcast.refresh
        elseif blue_magic[spell.name].type == "magic_atk_drk" then
            set_equip = sets.midcast.magic_drk
        elseif blue_magic[spell.name].type == "enmity" then
            set_equip = sets.enmity
        end
    elseif spell.skill == '神聖魔法' then
        if spell.name == 'フラッシュ' then
            set_equip = sets.enmity
        end
    end

    if buffactive["ディフュージョン"] then
        set_equip = set_combine(set_equip, {feet={ name="ＬＬチャルク+3", augments={'Enhances "Diffusion" effect',}},})
    end

    if buffactive["エフラックス"] then 
        set_equip = set_combine(set_equip, {legs="ＨＳタイト+1",})
    end

    if is_th then
        set_equip = set_combine(set_equip, sets.th)
        is_th = false
    end

    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        set_equip = sets.aftercast.melee
    else
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function status_change(new, old)
    local set_equip = nil
    
    if new == 'Idle' then
        set_equip = sets.aftercast.idle
    elseif new == 'Engaged' then
        set_equip = sets.aftercast.melee
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'almace' then
        send_command('gs c empty_weapon;wait 0.5;gs equip sets.weapon.almace')
    elseif command == 'tizona' then
        send_command('gs c empty_weapon;wait 0.5;gs equip sets.weapon.tizona')
    elseif command == 'sequence' then
        send_command('gs c empty_weapon;wait 0.5;gs equip sets.weapon.sequence')
    elseif command == 'sword' then
        sword_cycle = sword_cycle + 1
        if sword_cycle % 3 == 0 then
            send_command('gs c empty_weapon;wait 0.5;gs equip sets.weapon.almace')
        elseif sword_cycle % 3 == 1 then
            send_command('gs c empty_weapon;wait 0.5;gs equip sets.weapon.tizona')
        elseif sword_cycle % 3 == 2 then
            send_command('gs c empty_weapon;wait 0.5;gs equip sets.weapon.sequence')
        end
    elseif command == 'empty_weapon' then
        equip({main=empty,sub=empty})
    elseif command == 'th' then
        is_th = not is_th
        windower.add_to_chat(122,'---> トレハン装備: '..tostring(is_th))
    elseif command == 'dt' then
        sets.aftercast.melee = sets.aftercast.melee_dt
        windower.add_to_chat(122,'---> MELEE カット装備')
    elseif command == 'multi' then
        sets.aftercast.melee= sets.aftercast.melee_multi
        windower.add_to_chat(122,'---> MELEE マルチ装備')
    elseif command == 'phalanx' then
        equip(sets.midcast.phalanx)
        windower.add_to_chat(122,'---> 被ファランクス用装備')
    end
end

function init_blue_magic()
    blue_magic_type = {
        [1] = "pysical_atk",
        [2] = "pysical_acc",
        [3] = "magic_atk",
        [4] = "magic_acc",
        [5] = "pysical_and_magic",
        [6] = "skill",
        [7] = "cure",
        [8] = "refresh",
        [9] = "magic_atk_drk",
        [10] = "enmity",
    }

    blue_magic = {}
    blue_magic["ベノムシェル"] = {type=blue_magic_type[4]}
    blue_magic["メイルシュトロム"] = {type=blue_magic_type[4]}
    blue_magic["メタルボディ"] = {type=blue_magic_type[6]}
    blue_magic["S.ドライバー"] = {type=blue_magic_type[1]}
    blue_magic["MP吸収キッス"] = {type=blue_magic_type[4]}
    blue_magic["デスレイ"] = {type=blue_magic_type[3]}
    blue_magic["土竜巻"] = {type=blue_magic_type[4]}
    blue_magic["怒りの一撃"] = {type=blue_magic_type[1]}
    blue_magic["メッタ打ち"] = {type=blue_magic_type[1]}
    blue_magic["リフュエリング"] = {type=nil}
    blue_magic["アイスブレイク"] = {type=blue_magic_type[4]}
    blue_magic["B.シュトラール"] = {type=blue_magic_type[4]}
    blue_magic["自爆"] = {type=blue_magic_type[3]}
    blue_magic["神秘の光"] = {type=blue_magic_type[4]}
    blue_magic["コールドウェーブ"] = {type=blue_magic_type[4]}
    blue_magic["ポイズンブレス"] = {type=blue_magic_type[4]}
    blue_magic["スティンキングガス"] = {type=blue_magic_type[4]}
    blue_magic["メメントモーリ"] = {type=nil}
    blue_magic["テラータッチ"] = {type=blue_magic_type[4]}
    blue_magic["スパイナルクリーブ"] = {type=blue_magic_type[1]}
    blue_magic["ブラッドセイバー"] = {type=blue_magic_type[4]}
    blue_magic["消化"] = {type=blue_magic_type[4]}
    blue_magic["M.バイト"] = {type=blue_magic_type[1]}
    blue_magic["カースドスフィア"] = {type=blue_magic_type[3]}
    blue_magic["シックルスラッシュ"] = {type=blue_magic_type[1]}
    blue_magic["コクーン"] = {type=nil}
    blue_magic["F.ホールド"] = {type=blue_magic_type[4]}
    blue_magic["花粉"] = {type=blue_magic_type[7]}
    blue_magic["パワーアタック"] = {type=blue_magic_type[1]}
    blue_magic["デスシザース"] = {type=blue_magic_type[1]}
    blue_magic["磁鉄粉"] = {type=blue_magic_type[4]}
    blue_magic["アイズオンミー"] = {type=blue_magic_type[3]}
    blue_magic["F.リップ"] = {type=blue_magic_type[1]}
    blue_magic["フライトフルロア"] = {type=blue_magic_type[4]}
    blue_magic["ヘカトンウェーブ"] = {type=blue_magic_type[4]}
    blue_magic["ボディプレス"] = {type=blue_magic_type[1]}
    blue_magic["R.ブレス"] = {type=blue_magic_type[4]}
    blue_magic["ヘルダイブ"] = {type=blue_magic_type[1]}
    blue_magic["ジェットストリーム"] = {type=blue_magic_type[1]}
    blue_magic["吸血"] = {type=blue_magic_type[4]}
    blue_magic["サウンドブラスト"] = {type=blue_magic_type[4]}
    blue_magic["フェザーティックル"] = {type=blue_magic_type[4]}
    blue_magic["フェザーバリア"] = {type=nil}
    blue_magic["ジェタチュラ"] = {type=blue_magic_type[4]}
    blue_magic["ヤーン"] = {type=blue_magic_type[4]}
    blue_magic["フットキック"] = {type=blue_magic_type[1]}
    blue_magic["ワイルドカロット"] = {type=blue_magic_type[7]}
    blue_magic["吸印"] = {type=blue_magic_type[4]}
    blue_magic["いやしの風"] = {type=blue_magic_type[7]}
    blue_magic["カオティックアイ"] = {type=blue_magic_type[4]}
    blue_magic["シープソング"] = {type=blue_magic_type[4]}
    blue_magic["ラムチャージ"] = {type=blue_magic_type[1]}
    blue_magic["クローサイクロン"] = {type=blue_magic_type[1]}
    blue_magic["ロウイン"] = {type=blue_magic_type[4]}
    blue_magic["次元殺"] = {type=blue_magic_type[1]}
    blue_magic["火炎の息"] = {type=blue_magic_type[3]}
    blue_magic["ブランクゲイズ"] = {type=blue_magic_type[4]}
    blue_magic["マジックフルーツ"] = {type=blue_magic_type[7]}
    blue_magic["アッパーカット"] = {type=blue_magic_type[1]}
    blue_magic["針千本"] = {type=blue_magic_type[1]}
    blue_magic["まつぼっくり爆弾"] = {type=blue_magic_type[5]}
    blue_magic["スプラウトスマック"] = {type=blue_magic_type[5]}
    blue_magic["サペリフィック"] = {type=blue_magic_type[4]}
    blue_magic["マヨイタケ"] = {type=blue_magic_type[5]}
    blue_magic["種まき"] = {type=blue_magic_type[5]}
    blue_magic["臭い息"] = {type=blue_magic_type[4]}
    blue_magic["ガイストウォール"] = {type=blue_magic_type[4]}
    blue_magic["アーフルアイ"] = {type=blue_magic_type[4]}
    blue_magic["フロストブレス"] = {type=blue_magic_type[4]}
    blue_magic["超低周波"] = {type=blue_magic_type[4]}
    blue_magic["ディセバーメント"] = {type=blue_magic_type[5]}
    blue_magic["A.バースト"] = {type=blue_magic_type[4]}
    blue_magic["反応炉冷却"] = {type=nil}
    blue_magic["セイリーンコート"] = {type=nil}
    blue_magic["プラズマチャージ"] = {type=nil}
    blue_magic["テンポラルシフト"] = {type=blue_magic_type[4]}
    blue_magic["バーチカルクリーヴ"] = {type=blue_magic_type[1]}
    blue_magic["炸裂弾"] = {type=blue_magic_type[4]}
    blue_magic["バトルダンス"] = {type=blue_magic_type[5]}
    blue_magic["サンドスプレー"] = {type=blue_magic_type[4]}
    blue_magic["グランドスラム"] = {type=blue_magic_type[1]}
    blue_magic["ヘッドバット"] = {type=blue_magic_type[5]}
    blue_magic["爆弾投げ"] = {type=blue_magic_type[3]}
    blue_magic["フライパン"] = {type=blue_magic_type[5]}
    blue_magic["F.ヒッププレス"] = {type=blue_magic_type[3]}
    blue_magic["ハイドロショット"] = {type=blue_magic_type[5]}
    blue_magic["金剛身"] = {type=blue_magic_type[6]}
    blue_magic["吶喊"] = {type=blue_magic_type[4]}
    blue_magic["贖罪の光"] = {type=blue_magic_type[4]}
    blue_magic["ワームアップ"] = {type=nil}
    blue_magic["ファイアースピット"] = {type=blue_magic_type[3]}
    blue_magic["羽根吹雪"] = {type=blue_magic_type[5]}
    blue_magic["テールスラップ"] = {type=blue_magic_type[5]}
    blue_magic["H.バラージ"] = {type=blue_magic_type[1]}
    blue_magic["ねたみ種"] = {type=nil}
    blue_magic["キャノンボール"] = {type=blue_magic_type[1]}
    blue_magic["マインドブラスト"] = {type=blue_magic_type[4]}
    blue_magic["イグジュビエーション"] = {type=blue_magic_type[7]}
    blue_magic["マジックハンマー"] = {type=blue_magic_type[4]}
    blue_magic["ゼファーマント"] = {type=nil}
    blue_magic["リガージテーション"] = {type=blue_magic_type[4]}
    blue_magic["シードスプレー"] = {type=blue_magic_type[5]}
    blue_magic["コローシブウーズ"] = {type=blue_magic_type[4]}
    blue_magic["スパイラルスピン"] = {type=blue_magic_type[5]}
    blue_magic["アシュラクロー"] = {type=blue_magic_type[1]}
    blue_magic["サブゼロスマッシュ"] = {type=blue_magic_type[5]}
    blue_magic["共鳴"] = {type=nil}
    blue_magic["アクリッドストリーム"] = {type=blue_magic_type[4]}
    blue_magic["ブレーズバウンド"] = {type=blue_magic_type[1]}
    blue_magic["P.エンブレイス"] = {type=blue_magic_type[7]}
    blue_magic["D.ロア"] = {type=blue_magic_type[4]}
    blue_magic["C.ディスチャージ"] = {type=blue_magic_type[4]}
    blue_magic["鯨波"] = {type=nil}
    blue_magic["バッテリーチャージ"] = {type=blue_magic_type[8]}
    blue_magic["リーフストーム"] = {type=blue_magic_type[3]}
    blue_magic["リジェネレーション"] = {type=nil}
    blue_magic["ファイナルスピア"] = {type=blue_magic_type[1]}
    blue_magic["ゴブリンラッシュ"] = {type=blue_magic_type[1]}
    blue_magic["バニティダイブ"] = {type=blue_magic_type[1]}
    blue_magic["マジックバリア"] = {type=blue_magic_type[6]}
    blue_magic["怒りの旋風"] = {type=blue_magic_type[5]}
    blue_magic["ベンシクタイフーン"] = {type=blue_magic_type[5]}
    blue_magic["オーロラルドレープ"] = {type=blue_magic_type[4]}
    blue_magic["オスモーシス"] = {type=blue_magic_type[4]}
    blue_magic["四連突"] = {type=blue_magic_type[1]}
    blue_magic["ファンタッド"] = {type=blue_magic_type[10]}
    blue_magic["サーマルパルス"] = {type=blue_magic_type[5]}
    blue_magic["エンプティスラッシュ"] = {type=blue_magic_type[1]}
    blue_magic["夢想花"] = {type=blue_magic_type[4]}
    blue_magic["オカルテーション"] = {type=blue_magic_type[6]}
    blue_magic["チャージドホイスカー"] = {type=blue_magic_type[3]}
    blue_magic["虚無の風"] = {type=nil}
    blue_magic["デルタスラスト"] = {type=blue_magic_type[5]}
    blue_magic["みんなの怨み"] = {type=blue_magic_type[3]}
    blue_magic["リービンウィンド"] = {type=blue_magic_type[4]}
    blue_magic["牙門"] = {type=nil}
    blue_magic["モータルレイ"] = {type=blue_magic_type[4]}
    blue_magic["水風船爆弾"] = {type=blue_magic_type[4]}
    blue_magic["重い一撃"] = {type=blue_magic_type[2]}
    blue_magic["ダークオーブ"] = {type=blue_magic_type[3]}
    blue_magic["ホワイトウィンド"] = {type=blue_magic_type[7]}
    blue_magic["サドンランジ"] = {type=blue_magic_type[5]}
    blue_magic["クアドラストライク"] = {type=blue_magic_type[1]}
    blue_magic["ヴェイパースプレー"] = {type=blue_magic_type[3]}
    blue_magic["サンダーブレス"] = {type=blue_magic_type[3]}
    blue_magic["カウンタースタンス"] = {type=nil}
    blue_magic["槍玉"] = {type=blue_magic_type[1]}
    blue_magic["ウィンドブレス"] = {type=blue_magic_type[3]}
    blue_magic["偃月刃"] = {type=blue_magic_type[5]}
    blue_magic["N.メディテイト"] = {type=nil}
    blue_magic["T.アップヒーヴ"] = {type=blue_magic_type[1]}
    blue_magic["R.デルージュ"] = {type=blue_magic_type[4]}
    blue_magic["エンバームアース"] = {type=blue_magic_type[4]}
    blue_magic["パラライズトライアド"] = {type=blue_magic_type[5]}
    blue_magic["ファウルウォーター"] = {type=blue_magic_type[4]}
    blue_magic["グルーティナスダート"] = {type=blue_magic_type[1]}
    blue_magic["レテナグレア"] = {type=blue_magic_type[3]}
    blue_magic["サブダックション"] = {type=blue_magic_type[3]}
    blue_magic["T.アッサルト"] = {type=blue_magic_type[1]}
    blue_magic["エラチックフラッター"] = {type=nil}
    blue_magic["レストラル"] = {type=blue_magic_type[7]}
    blue_magic["レールキャノン"] = {type=blue_magic_type[3]}
    blue_magic["ディフュージョンレイ"] = {type=blue_magic_type[3]}
    blue_magic["シンカードリル"] = {type=blue_magic_type[1]}
    blue_magic["モルトプルメイジ"] = {type=blue_magic_type[3]}
    blue_magic["ネクターデルージュ"] = {type=blue_magic_type[4]}
    blue_magic["スイープガウジ"] = {type=blue_magic_type[5]}
    blue_magic["A.ライベーション"] = {type=blue_magic_type[4]}
    blue_magic["シアリングテンペスト"] = {type=blue_magic_type[3]}
    blue_magic["スペクトラルフロー"] = {type=blue_magic_type[3]}
    blue_magic["アンビルライトニング"] = {type=blue_magic_type[3]}
    blue_magic["エントゥーム"] = {type=blue_magic_type[3]}
    blue_magic["サウリアンスライド"] = {type=blue_magic_type[5]}
    blue_magic["ポーリングサルヴォ"] = {type=blue_magic_type[4]}
    blue_magic["B.フルゴア"] = {type=blue_magic_type[3]}
    blue_magic["スカウリングスペイト"] = {type=blue_magic_type[3]}
    blue_magic["サイレントストーム"] = {type=blue_magic_type[4]}
    blue_magic["テネブラルクラッシュ"] = {type=blue_magic_type[9]}
    blue_magic["サンダーボルト"] = {type=blue_magic_type[5]}
    blue_magic["甲羅強化"] = {type=nil}
    blue_magic["アブソルートテラー"] = {type=blue_magic_type[4]}
    blue_magic["ゲーツオブハデス"] = {type=blue_magic_type[4]}
    blue_magic["トゥールビヨン"] = {type=blue_magic_type[4]}
    blue_magic["ポーラーブルワーク"] = {type=nil}
    blue_magic["ビルジストーム"] = {type=blue_magic_type[5]}
    blue_magic["ブラッドレイク"] = {type=blue_magic_type[5]}
    blue_magic["D.ワールウィンド"] = {type=blue_magic_type[4]}
    blue_magic["カルカリアンヴァーヴ"] = {type=blue_magic_type[6]}
    blue_magic["ブリスターローア"] = {type=blue_magic_type[4]}
    blue_magic["アップルート"] = {type=nil}
    blue_magic["クラッシュサンダー"] = {type=blue_magic_type[3]}
    blue_magic["ポラーロア"] = {type=blue_magic_type[3]}
    blue_magic["マイティガード"] = {type=nil}
    blue_magic["クルエルジョーク"] = {type=blue_magic_type[4]}
    blue_magic["セスプール"] = {type=blue_magic_type[4]}
    blue_magic["テーリングガスト"] = {type=blue_magic_type[4]}
end