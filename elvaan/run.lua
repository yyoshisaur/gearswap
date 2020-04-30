function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_melee = false
    is_th = false

    magic_ba = S{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ'}

    sets.enmity = {
        main="エピオラトリー",
        ammo="ストンチタスラム+1",
        head="ラビッドバイザー",
        body={ name="ＦＵコート+1", augments={'Enhances "Elemental Sforzo" effect',}},
        hands="クーリスグローブ",
        legs="ＥＲレグガード+1",
        feet="ＥＲグリーヴ+1",
        neck="アンムーヴカラー+1",
        waist="カシリベルト",
        left_ear="クリプティクピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="アイワツリング",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}},
    }

    sets.th = {}

    sets.precast.fc_20 = {
        head="ＲＮバンド+3",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    }

    sets.precast.fc_80 = {
        ammo="ストンチタスラム+1",
        head="ＲＮバンド+3",
        body={ name="テーオンタバード", augments={'Phalanx +3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}},
        feet={ name="カマイングリーヴ+1", augments={'Accuracy+12','DEX+12','MND+20',}},
        neck="ボルトサージトルク",
        waist="ジーゲルサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}},
    }

    sets.precast.ability['ヴァレション'] = set_combine(sets.enmity, {body={ name="ＲＮコート+3", hp=218,}, legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, hp=107,}, back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}, hp=60},})
    sets.precast.ability['ヴァリエンス'] = sets.precast.ability['ヴァレション']
    sets.precast.ability['リエモン'] = set_combine(sets.precast.ability['ヴァレション'], {body={ name="ＦＵコート+1", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},})
    sets.precast.ability['エンボルド'] = {back={ name="ディバートケープ", augments={'"Embolden"+15',},}}
    sets.precast.ability['ビベイシャス'] = {head={ name="ＥＲガレア+1", hp=91,}}
    sets.precast.ability['ガンビット'] = set_combine(sets.enmity, {hands={ name="ＲＮミトン+1", hp=85,}})
    sets.precast.ability['レイク'] = sets.enmity
    sets.precast.ability['バットゥタ'] = set_combine(sets.enmity, {head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}, hp=56,}})
    sets.precast.ability['ワンフォアオール'] = {
        ammo="ストンチタスラム+1",
        -- head={ name="ＲＮバンド+3", fc=0.14, hp=109,},
        -- body={ name="ＲＮコート+3", hp=218,},
        -- hands={ name="ＲＮミトン+3", hp=85,},
        -- legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}, hp=130},
        -- feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}, fc=0.08, hp=95,},
        -- neck={ name="フサルクトルク+2", hp=60,},
        -- waist={ name="ゴールドモグベルト", hp=80,},
        -- left_ear={ name="オノワイヤリング+1", hp=110,},
        -- right_ear={ name="トゥイストピアス", hp=150,},
        -- left_ring="守りの指輪",
        -- right_ring={ name="月光の指輪", hp=110,},
        back={ name="月光の羽衣", hp=275,},
    }
    sets.precast.ability['フルーグ'] = set_combine(sets.enmity, {feet={ name="ＲＮブーツ+1", hp=74,}})
    sets.precast.ability['ソードプレイ'] = sets.enmity
    sets.precast.ability['E.スフォルツォ'] = set_combine(sets.enmity, {body={ name="ＦＵコート+1", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},})

    -- sub war
    sets.precast.ability['挑発'] = sets.enmity
    sets.precast.ability['ウォークライ'] = sets.enmity

    -- sub pld
    sets.precast.ability['センチネル'] = sets.enmity

    -- sub drk
    sets.precast.ability['ラストリゾート'] = sets.enmity

    sets.precast.ws.dex = {
    }
    
    sets.precast.ws.multi = {
    }

    sets.precast.ws.acc = {
        ammo="ペムフレドタスラム",
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
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}},
        back={ name="オーグマケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- 両手剣
    sets.precast.ws['デミディエーション'] = sets.precast.ws.dex
    sets.precast.ws['レゾルーション'] = sets.precast.ws.multi
    sets.precast.ws['ショックウェーブ'] = sets.precast.ws.acc

    sets.midcast.enhance_skill = {
        ammo="ストンチタスラム+1",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="ＦＵコート+1", augments={'Enhances "Elemental Sforzo" effect',}},
        hands="ＲＮミトン+1",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="ＥＲグリーヴ+1",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        right_ear="ミミルピアス",
        left_ring="スティキニリング+1",
        right_ring="スティキニリング+1",
        back="慈悲の羽衣",
    }

    sets.midcast.phalanx = set_combine(sets.midcast.enhance_skill, {
        head={ name="ＦＵバンド+3", augments={'Enhances "Battuta" effect',}},
        body={ name="テーオンタバード", augments={'Phalanx +3',}},
        hands={ name="テーオングローブ", augments={'Phalanx +3',}},
        legs={ name="テーオンタイツ", augments={'Phalanx +3',}},
        feet={ name="テーオンブーツ", augments={'Phalanx +3',}},
        left_ring="守りの指輪",
    })

    sets.midcast.stoneskin = {
        body={ name="ＦＵコート+1", augments={'Enhances "Elemental Sforzo" effect',}, hp=119,},
        neck="ストーンゴルゲット",
        waist="ジーゲルサッシュ",
        left_ear="アースクライピアス",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}},
    }
    sets.midcast.enhance_duration = {
        head={ name="ＥＲガレア+1", hp=91,},
        legs={ name="ＦＵトラウザ+3", augments={'Enhances "Inspire" effect',}, hp=107},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}},
    }
    
    sets.midcast.rejen = set_combine(sets.midcast.enhance_duration, {head="ＲＮバンド+3",})
    sets.midcast.refresh = set_combine(sets.midcast.enhance_duration, {waist="ギシドゥバサッシュ",})

    sets.aftercast.dt = {
        main="エピオラトリー",
        sub="メンシストラップ+1",
        ammo="ストンチタスラム+1",
        head="ラビッドバイザー",
        body="ＲＮコート+3",
        hands="クーリスグローブ",
        legs="ＥＲレグガード+1",
        feet="ＥＲグリーヴ+1",
        neck="ロリケートトルク+1",
        waist="エングレイブベルト",
        left_ear="クリプティクピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring={ name="ゼラチナスリング+1", augments={'Path: A',}},
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}},
    }

    sets.aftercast.melee = {
    }

    sets.aftercast.speed = {
        main="エピオラトリー",
        sub="メンシストラップ+1",
        ammo="ストンチタスラム+1",
        head="ラビッドバイザー",
        body={ name="ＦＵコート+1", augments={'Enhances "Elemental Sforzo" effect',}},
        hands="クーリスグローブ",
        legs="ＥＲレグガード+1",
        feet="ＥＲグリーヴ+1",
        neck="ロリケートトルク+1",
        waist="エングレイブベルト",
        left_ear="クリプティクピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="オーグマケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Damage taken-5%',}},
    }

    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 9; wait 0.5; input /macro set 1; wait 0.5; input /si run;')
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
    elseif spell.type == 'SummonerPact' then
        set_equip = get_fc_equip()
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    local set_equip = nil

    if spell.skill == '強化魔法' then
        set_equip = sets.aftercast.dt
        if spell.name == 'ファランクス' then
            set_equip = sets.midcast.phalanx
        elseif spell.name == 'フォイル' then
            set_equip = sets.enmity
        elseif spell.name == 'ストンスキン' then
            if buffactive['ストンスキン'] then
                local stoneskil_id = 37
                windower.ffxi.cancel_buff(stoneskil_id)
            end
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.stoneskin)
        elseif spell.name == 'アクアベール' then
            set_equip = set_combine(sets.aftercast.dt, sets.midcast.enhance_duration)
        elseif string.find(spell.name, 'リジェネ') then
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
        set_equip = sets.enmity
    elseif spell.skill == '暗黒魔法' then
        set_equip = sets.aftercast.dt
        if spell.name == 'スタン' then
            set_equip = sets.enmity
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.aftercast.dt
    else
        -- set_equip = sets.aftercast.dt
    end

    if buffactive['エンボルド'] then
        set_equip = set_combine(set_equip, {back={ name="ディバートケープ", augments={'"Embolden"+15',}},})
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