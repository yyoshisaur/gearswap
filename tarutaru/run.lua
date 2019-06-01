local function get_fc_rate(equip_set)
    local equip_fc = 0
    for i,v in pairs(equip_set) do
        local fc = 0
        if v and type(v)=='table' and v.fc and type(v.fc)=='number' then
            fc = v.fc
        end
        equip_fc = equip_fc + fc
    end
    return equip_fc
end

function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_melee = false
    is_sird = false
    is_th = false

    delay_time = 0.3

    magic_ba = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ'}

    sets.enmity = {
        ammo="サピエンスオーブ",
        head={ name="ハリタスヘルム", hp=88,},
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

    sets.th = {
        head="白ララブキャップ+1",
        body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.fc_80 = {
        ammo={ name="サピエンスオーブ", fc=0.02,},
        head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}, fc=0.09, hp=59},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}, fc=0.08, hp=25,},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, fc=0.15, hp=107},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, fc=0.08, hp=95,},
        neck={ name="ボルトサージトルク", fc=0.04,},
        waist={ name="ジーゲルサッシュ", fc=0.08,},
        left_ear={ name="オノワイヤリング", hp=100,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring={ name="キシャールリング", fc=0.04},
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }
    sets.precast.fc_80.fc = get_fc_rate(sets.precast.fc_80)

    sets.precast.fc_20 = {
        head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }
    sets.precast.fc_20.fc = get_fc_rate(sets.precast.fc_20)
    
    sets.precast.ability['ヴァレション'] = set_combine(sets.enmity, {body={ name="ＲＮコート+3", hp=218,}, legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, hp=107,}, back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60},})
    sets.precast.ability['ヴァリエンス'] = sets.precast.ability['ヴァレション']
    sets.precast.ability['リエモン'] = set_combine(sets.precast.ability['ヴァレション'], {body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},})
    sets.precast.ability['エンボルド'] = {back={ name="ディバートケープ", augments={'Enmity+3','"Embolden"+15','Damage taken-4%',}},}
    sets.precast.ability['ビベイシャス'] = {head={ name="ＥＲガレア+1", hp=91,}}
    sets.precast.ability['ガンビット'] = set_combine(sets.enmity, {hands={ name="ＲＮミトン+3", hp=85,}})
    sets.precast.ability['レイク'] = set_combine(sets.enmity, {feet={ name="ＦＵブーツ+1", augments={'Enhances "Rayke" effect',}, hp=13,}})
    sets.precast.ability['バットゥタ'] = set_combine(sets.enmity, {head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}, hp=56,}})
    sets.precast.ability['ワンフォアオール'] = {
        ammo="ストンチタスラム+1",
        head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        body={ name="ＲＮコート+3", hp=218,},
        hands={ name="ＲＮミトン+3", hp=85,},
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}, hp=130},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, fc=0.08, hp=95,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist={ name="ゴールドモグベルト", hp=80,},
        left_ear={ name="オノワイヤリング", hp=100,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="月光の羽衣", hp=275,},
    }
    sets.precast.ability['フルーグ'] = set_combine(sets.enmity, {feet={ name="ＲＮブーツ+3", hp=74,}})
    sets.precast.ability['ソードプレイ'] = sets.enmity
    sets.precast.ability['E.スフォルツォ'] = set_combine(sets.enmity, {body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},})

    -- sub war
    sets.precast.ability['挑発'] = sets.enmity
    sets.precast.ability['ウォークライ'] = sets.enmity

    -- sub pld
    sets.precast.ability['センチネル'] = sets.enmity

    -- sub drk
    sets.precast.ability['ラストリゾート'] = sets.enmity
    
    sets.precast.ws.dex = {
        ammo="ノブキエリ",
        head={ name="メガナダバイザー+2", hp=25,},
        body={ name="ヘルクリアベスト", augments={'Accuracy+21 Attack+21','DEX+14','Accuracy+14','Attack+10',}, hp=61,},
        hands={ name="メガナダグローブ+2", hp=30,},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}, hp=41,},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','DEX+10','Accuracy+2',}, hp=9},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="シェリダピアス",
        left_ring="守りの指輪",
        right_ring={ name="イラブラットリング", hp=60,},
        back={ name="オーグマケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.ws.multi = {
        ammo="ノブキエリ",
        head={ name="アヤモツッケット+2", hp=45,},
        body={ name="アヤモコラッツァ+2", hp=57,},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}, hp=22},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}, hp=41,},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','DEX+10','Accuracy+2',}, hp=9},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="シェリダピアス",
        left_ring="守りの指輪",
        right_ring="ニックマドゥリング",
        back={ name="オーグマケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.precast.ws.acc = {
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
        back={ name="オーグマケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- 両手剣
    sets.precast.ws['デミディエーション'] = sets.precast.ws.dex
    sets.precast.ws['レゾルーション'] = sets.precast.ws.multi
    sets.precast.ws['ショックウェーブ'] = sets.precast.ws.acc
    -- 両手斧
    sets.precast.ws['アーマーブレイク'] = sets.precast.ws.acc
    sets.precast.ws['ウェポンブレイク'] = sets.precast.ws.acc
    sets.precast.ws['フルグレイク'] = sets.precast.ws.acc
    
    sets.midcast.enhance_skill = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}, hp=38,},
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        hands={ name="ＲＮミトン+3", hp=85,},
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}, hp=130},
        feet={ name="ＥＲグリーヴ+1", hp=18,},
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear={ name="オノワイヤリング", hp=100,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }

    sets.midcast.phalanx = {
        ammo="ストンチタスラム+1",
        head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}, hp=56,},
        body={ name="ヘルクリアベスト", augments={'Magic dmg. taken -2%','Rng.Atk.+13','Phalanx +5','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}, hp=61,},
        hands={ name="ヘルクリアグローブ", augments={'INT+9','AGI+4','Phalanx +4','Accuracy+1 Attack+1','Mag. Acc.+8 "Mag.Atk.Bns."+8',}, hp=20,},
        legs={ name="ヘルクリアトラウザ", augments={'Accuracy+1 Attack+1','"Mag.Atk.Bns."+11','Phalanx +4','Mag. Acc.+11 "Mag.Atk.Bns."+11',}, hp=38,},
        feet={ name="ヘルクリアブーツ", augments={'STR+6','AGI+6','Phalanx +5','Accuracy+17 Attack+17',}, hp=9,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="オリンポスサッシュ",
        left_ear={ name="オノワイヤリング", hp=100,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast.sird = {
        ammo="ストンチタスラム+1",
        head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}, hp=56,},
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        hands={ name="ローハイドグローブ", augments={'HP+50','Accuracy+15','Evasion+20',}, hp=75,},
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}, hp=130},
        feet={ name="テーオンブーツ", augments={'DEF+20','Spell interruption rate down -10%','HP+50',}, hp=63,},
        neck="月光の首飾り",
        waist="ルミネートサッシュ",
        left_ear="ハラサズピアス",
        right_ear="磁界の耳",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="月光の羽衣", hp=275,},
    }

    sets.midcast.stoneskin = {
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        neck="ストーンゴルゲット",
        waist="ジーゲルサッシュ",
        left_ear="アースクライピアス",
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }
    sets.midcast.enhance_duration = {
        head={ name="ＥＲガレア+1", hp=91,},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, hp=107},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, fc=0.1, hp=80},
    }
    
    sets.midcast.rejen = set_combine(sets.midcast.enhance_duration, {head="ＲＮバンド+3",})
    sets.midcast.refresh = set_combine(sets.midcast.enhance_duration, {waist="ギシドゥバサッシュ",})

    sets.aftercast.dt_FU = {
        sub="メンシストラップ+1",
        ammo="ストンチタスラム+1",
        head={ name="トゥルムキャップ+1", hp=94,},
        body={ name="ＦＵコート+3", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        hands={ name="トゥルムミトン+1", hp=74,},
        legs={ name="ＥＲレグガード+1", hp=80,},
        feet={ name="トゥルムレギンス+1", hp=76,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="フルームベルト+1",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Parrying rate+5%',}, hp=60,},
    }

    sets.aftercast.dt_RN ={
        sub="メンシストラップ+1",
        ammo="ストンチタスラム+1",
        head={ name="トゥルムキャップ+1", hp=94,},
        body={ name="ＲＮコート+3", hp=218,},
        hands={ name="トゥルムミトン+1", hp=74,},
        legs={ name="ＥＲレグガード+1", hp=80,},
        feet={ name="ＥＲグリーヴ+1", hp=18,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="エングレイブベルト",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear="玄冥耳飾り",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60,},
    }

    sets.aftercast.dt_ashera = {
        sub="メンシストラップ+1",
        ammo="ストンチタスラム+1",
        head={ name="トゥルムキャップ+1", hp=94,},
        body={ name="アシェーラハーネス", hp=182,},
        hands={ name="トゥルムミトン+1", hp=74,},
        legs={ name="ＥＲレグガード+1", hp=80,},
        feet={ name="トゥルムレギンス+1", hp=76,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="エングレイブベルト",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60,},
    }

    sets.aftercast.dt = sets.aftercast.dt_FU

    sets.aftercast.melee = {
        ammo="ヤメラング",
        head={ name="アヤモツッケット+2", hp=45,},
        body={ name="アシェーラハーネス", hp=182,},
        hands={ name="トゥルムミトン+1", hp=74,},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}, hp=41,},
        feet={ name="トゥルムレギンス+1", hp=76,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="シェリダピアス",
        left_ring="守りの指輪",
        right_ring={ name="月光の指輪", hp=110,},
        back={ name="オーグマケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.speed = {
        ammo="ストンチタスラム+1",
        head={ name="トゥルムキャップ+1", hp=94,},
        body={ name="ＲＮコート+3", hp=218,},
        hands={ name="ＲＮミトン+3", hp=85,},
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}, hp=130},
        feet={ name="ＥＲグリーヴ+1", hp=18,},
        neck={ name="フサルクトルク+2", hp=60,},
        waist="フルームベルト+1",
        left_ear={ name="クリプティクピアス", hp=40,},
        right_ear={ name="オノワイヤリング+1", hp=110,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}, hp=80},
    }

        -- マクロのブック, セット変更
        send_command('input /macro book 17; wait 0.5; input /macro set 1')
end

local function get_fc_equip()
    if buffactive['ファストキャスト'] then
        return sets.precast.fc_20
    else
        return sets.precast.fc_80
    end
end

function precast(spell)
    local set_equip = nil

    if string.find(spell.type, 'Magic') then
        set_equip = get_fc_equip()
    elseif spell.type == 'JobAbility' or spell.type == 'Ward' or spell.type == 'Effusion' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.multi
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc_80
    elseif spell.type == 'Ninjutsu' then
        set_equip = get_fc_equip()
    end

    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

local function get_cast_time(spell)
    if not spell.cast_time then
        return 0
    end 
    local equip_fc = sets.precast.fc_80.fc
    local inspiration_fc = 0
    if buffactive['ファストキャスト'] then
        inspiration_fc = 0.6
        equip_fc = sets.precast.fc_20.fc
    end

    local hasso_cast_time = 1
    if buffactive['八双'] then
        hasso_cast_time = 1.5
    end
    
    local total_fc = equip_fc + inspiration_fc
    if total_fc > 0.8 then
        total_fc = 0.8
    end

    local cast_time = spell.cast_time*hasso_cast_time*(1-total_fc)
    return cast_time
end

function enhances_effect_and_sird_equip(spell)
    local set_equip = nil

    if is_sird then
        local cast_time = get_cast_time(spell)
        local wait = cast_time - delay_time

        is_sird = false

        if spell.skill == '強化魔法' then
            set_equip = sets.midcast.sird
            if spell.name == 'ファランクス' then
                -- set_equip = sets.midcast.phalanx
                send_command('wait '..wait..'; input //gs c phalanx;')
            elseif spell.name == 'ストンスキン' then
                -- set_equip = set_combine(sets.aftercast.dt, sets.midcast.stoneskin)
                send_command('wait '..wait..'; input //gs c stoneskin;')
            end
        elseif spell.skill == '青魔法' then
            -- set_equip = sets.enmity
            set_equip = sets.midcast.sird
            send_command('wait '..wait..'; input //gs c bluemagic;')
        end
    else
        if spell.skill == '強化魔法' then
            set_equip = sets.aftercast.dt
            if spell.name == 'ファランクス' then
                set_equip = sets.midcast.phalanx
            elseif spell.name == 'ストンスキン' then
                set_equip = set_combine(sets.aftercast.dt, sets.midcast.stoneskin)
            else
                set_equip = set_combine(sets.aftercast.dt, sets.midcast.enhance_duration)
            end
        elseif spell.skill == '青魔法' then
            set_equip = sets.enmity
        end
    end
    return set_equip
end

-- 効果アップ　ファランクス　ストンスキン　リジェネ　リフレ　バ系　ストライ　フォイル　フラッシュ　青魔法
function midcast(spell)
    local set_equip = nil

    if spell.skill == '強化魔法' then
        set_equip = sets.aftercast.dt
        if spell.name == 'ファランクス' then
            set_equip = enhances_effect_and_sird_equip(spell)
        elseif spell.name == 'フォイル' then
            set_equip = sets.enmity
        elseif spell.name == 'ストンスキン' then
            set_equip = enhances_effect_and_sird_equip(spell)
        elseif spell.name == 'アクアベール' then
            set_equip = enhances_effect_and_sird_equip(spell)
        elseif spell.name == 'リジェネ' then
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.rejen)
        elseif spell.name == 'リフレシュ' then
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.refresh)
        elseif spell.name == 'ストライ' then
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.enhance_skill)
        elseif magic_ba:contains(spell.name) then
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.enhance_skill)
        else
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.enhance_duration)
        end
    elseif spell.skill == '神聖魔法' then
        set_equip = sets.aftercast.dt
        if spell.name == 'フラッシュ' then
            set_equip = sets.enmity
        end
    elseif spell.skill == '青魔法' then
        set_equip = enhances_effect_and_sird_equip(spell)
    elseif spell.skill == '暗黒魔法' then
        set_equip = sets.aftercast.dt
        if spell.name == 'スタン' then
            set_equip = sets.enmity
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.aftercast.dt
    end

    if is_th then
        set_equip = set_combine(set_equip, sets.th)
        is_th = false
    end

    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        if is_melee then
            set_equip = sets.aftercast.melee
        else
            set_equip = sets.aftercast.dt
        end
    else
        set_equip = sets.aftercast.dt
    end
    
    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

function status_change(new, old)
    local set_equip = nil
    
    if new == 'Idle' then
        set_equip = sets.aftercast.dt
    elseif new == 'Engaged' then
        if is_melee then
            set_equip = sets.aftercast.melee
        else
            set_equip = sets.aftercast.dt
        end
    end
    
    if set_equip then
        equip(set_equip)
        set_priorities_by_hp()
    end
end

function self_command(command)
    if command == 'sird' then
        is_sird = not is_sird
        windower.add_to_chat(122,'---> 詠唱中断率ダウン装備: '..tostring(is_sird))
    elseif command == 'phalanx' then
        equip(sets.midcast.phalanx)
        set_priorities_by_hp()
    elseif command == 'bluemagic' then
        equip(sets.enmity)
        set_priorities_by_hp()
    elseif command == 'stoneskin' then
        equip(set_combine(sets.aftercast.dt, sets.midcast.stoneskin))
        set_priorities_by_hp()
    elseif command == 'rn' then
        sets.aftercast.dt = sets.aftercast.dt_RN
        equip(sets.aftercast.dt)
        set_priorities_by_hp()
        windower.add_to_chat(122,'---> DT装備(ＲＮコート)')
    elseif command == 'fu' then
        sets.aftercast.dt = sets.aftercast.dt_FU
        equip(sets.aftercast.dt)
        set_priorities_by_hp()
        windower.add_to_chat(122,'---> DT装備(ＦＵコート)')
    elseif command == 'ashe' then
        sets.aftercast.dt = sets.aftercast.dt_ashera
        equip(sets.aftercast.dt)
        set_priorities_by_hp()
        windower.add_to_chat(122,'---> DT装備(アシェーラハーネス)')
    elseif command == 'melee' then
        is_melee = not is_melee
        windower.add_to_chat(122,'---> アタッカー装備: '..tostring(is_melee))
    elseif command == 'th' then
        is_th = not is_th
        windower.add_to_chat(122,'---> トレハン装備: '..tostring(is_th))
    elseif command == 'speed' then
        equip(sets.aftercast.speed)
        set_priorities_by_hp()
        windower.add_to_chat(122,'---> 移動速度UP装備')
    end
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