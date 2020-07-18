include('weather_obi')

local rolls = {
    ['コルセアズロール'] = {enhances='得経験値量アップ', lucky = 5, unlucky = 9,},
    ['ニンジャロール'] = {enhances='回避アップ', lucky = 4, unlucky = 8,},
    ['ハンターズロール'] = {enhances='命中・飛命アップ', lucky = 4, unlucky = 8,},
    ['カオスロール'] = {enhances='攻撃力・飛攻アップ', lucky = 4, unlucky = 8,},
    ['メガスズロール'] = {enhances='魔法防御力アップ', lucky = 2, unlucky = 6,},
    ['ヒーラーズロール'] = {enhances='被ケアル回復量アップ', lucky = 3, unlucky = 7,},
    ['ドラケンロール'] = {enhances='ペットの命中・飛命アップ', lucky = 4, unlucky = 8,},
    ['コーラルロール'] = {enhances='詠唱中断率ダウン', lucky = 2, unlucky = 6,},
    ['モンクスロール'] = {enhances='モクシャアップ', lucky = 3, unlucky = 7,},
    ['ビーストロール'] = {enhances='ペットの攻・飛攻アップ', lucky = 4, unlucky = 8,},
    ['サムライロール'] = {enhances='ストアTPアップ', lucky = 2, unlucky = 6,},
    ['エボカーズロール'] = {enhances='リフレシュ', lucky = 5, unlucky = 9,},
    ['ローグズロール'] = {enhances='クリティカルヒット確率アップ', lucky = 5, unlucky = 9,},
    ['ワーロックスロール'] = {enhances='魔法命中率アップ', lucky = 4, unlucky = 8,},
    ['ファイターズロール'] = {enhances='ダブルアタック効果アップ', lucky = 5, unlucky = 9,},
    ['パペットロール'] = {enhances='ペットの魔法攻撃力・魔法命中率アップ', lucky = 3, unlucky = 7,},
    ['ガランツロール'] = {enhances='防御力アップ', lucky = 3, unlucky = 7,},
    ['ウィザーズロール'] = {enhances='魔法攻撃力アップ', lucky = 5, unlucky = 9,},
    ['ダンサーロール'] = {enhances='リジェネ', lucky = 3, unlucky = 7,},
    ['スカラーロール'] = {enhances='コンサーブMP効果アップ', lucky = 2, unlucky = 6,},
    ['ナチュラリストロール'] = {enhances='被強化魔法延長', lucky = 3, unlucky = 7,},
    ['ルーニストロール'] = {enhances='魔法回避率アップ', lucky = 4, unlucky = 8,},
    ['ボルターズロール'] = {enhances='移動速度アップ', lucky = 3, unlucky = 9,},
    ['キャスターズロール'] = {enhances='ファストキャスト効果アップ', lucky = 2, unlucky = 7,},
    ['コアサーズロール'] = {enhances='スナップショット効果アップ', lucky = 3, unlucky = 9,},
    ['ブリッツァロール'] = {enhances='攻撃間隔短縮', lucky = 4, unlucky = 9,},
    ['タクティックロール'] = {enhances='リゲイン', lucky = 5, unlucky = 8,},
    ['アライズロール'] = {enhances='連携ダメージ、連携命中率アップ', lucky = 3, unlucky = 10,},
    ['マイザーロール'] = {enhances='セーブTP', lucky = 5, unlucky = 7,},
    ['コンパニオンロール'] = {enhances='ペットにリゲイン・リジェネ', lucky = 2, unlucky = 10,},
    ['カウンターロール'] = {enhances='カウンター', lucky = 4, unlucky = 8,},
}

function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.weapon = {}

    init_elemental_obi()
    set_elemental_obi("闇輪の帯")

    -- self_command用フラグ
    is_melee = false
    is_luzaf = false
    is_th = false

    sets.obi_dark = {waist="闇輪の帯",}
    
    sets.weapon.magic = {
        main={ name="ロスタム", augments={'Path: C',}},
        sub="トーレット",
        range={ name="デスペナルティ", augments={'Path: A',}},
    }

    sets.weapon.phisical = {
        main="ネイグリング",
        sub="トーレット",
        range={ name="アナーキー+3", augments={'Delay:+60','TP Bonus +1000',}},
    }

    sets.th = {
        head="白ララブキャップ+1",
        body={ name="ヘルクリアベスト", augments={'Spell interruption rate down -6%','Pet: "Mag.Atk.Bns."+15','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    -- エンピリアン装束 効果アップ
    sets.rolls_emp = {
        ['キャスターズロール'] = {}, -- {legs="ＣＳトルーズ+1"}
        ['コアサーズロール'] = {feet="ＣＳブーツ+1"},
        ['ブリッツァロール'] = {}, -- {head="ＣＳトリコルヌ+1"}
        ['タクティックロール'] = {body="ＣＳフラック+1",}, 
        ['アライズロール'] = {hands="ＣＳガントリー+1",},
    }

    sets.precast.snap = {
        ammo="クロノブレット",
        head={ name="テーオンシャポー", augments={'"Mag.Atk.Bns."+20','"Snapshot"+5','"Snapshot"+5',}},
        body="オショシベスト",
        hands={ name="テーオングローブ", augments={'"Snapshot"+5','"Snapshot"+5',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet="メガナダジャンボ+2",
        back={ name="カムラスマント", augments={'"Snapshot"+10',}},
    }

    sets.precast.fc = {
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ローハイドトラウザ", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="ロケイシャスピアス",
        right_ear="エンチャンピアス+1",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back="月光の羽衣",
    }

    sets.precast.quick_draw = {
        ammo="ライヴブレット",
        head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Mag.Atk.Bns."+25','Accuracy+17 Attack+17',}},
        feet="ＣＳブーツ+1",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="ノーヴィオピアス",
        right_ear="フリオミシピアス",
        left_ring="アルビナリング+1",
        right_ring="ディンジルリング",
        back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.ws.ra_phisical = {
        ammo="クロノブレット",
        head="マリグナスシャポー",
        body="ＬＫフラック+3",
        hands="メガナダグローブ+2",
        legs="マリグナスタイツ",
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.ws.melee_phisical = {
        head="メガナダバイザー+2",
        body="ＬＫフラック+3",
        hands="メガナダグローブ+2",
        legs="メガナダショウス+2",
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="フォシャゴルゲット",
        waist="メタルシングベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="ルフェセントリング",
        right_ring="王将の指輪",
        back={ name="カムラスマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }

    sets.precast.ws.leaden = {
        ammo="ライヴブレット",
        head="妖蟲の髪飾り+1",
        body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},
        hands={ name="カマインフィンガ+1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Mag.Atk.Bns."+25','Accuracy+17 Attack+17',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="フリオミシピアス",
        left_ring="アルコンリング",
        right_ring="ディンジルリング",
        back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.magic = {
        ammo="ライヴブレット",
        head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},
        hands={ name="カマインフィンガ+1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Mag.Atk.Bns."+25','Accuracy+17 Attack+17',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="フリオミシピアス",
        left_ring="アルビナリング+1",
        right_ring="ディンジルリング",
        back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.ws["ラストスタンド"] = sets.precast.ws.ra_phisical
    sets.precast.ws["レデンサリュート"] = sets.precast.ws.leaden
    sets.precast.ws["ワイルドファイア"] = sets.precast.ws.magic

    sets.precast.ws["サベッジブレード"] = sets.precast.ws.melee_phisical

    sets.precast.ws['ガストスラッシュ'] = set_combine(sets.precast.ws.magic, {waist="オルペウスサッシュ"})
    sets.precast.ws['サイクロン'] = set_combine(sets.precast.ws.magic, {waist="オルペウスサッシュ"})
    sets.precast.ws['エナジースティール'] = set_combine(sets.precast.ws.magic, {waist="オルペウスサッシュ"})
    sets.precast.ws['エナジードレイン'] = set_combine(sets.precast.ws.magic, {waist="オルペウスサッシュ"})
    sets.precast.ws['イオリアンエッジ'] = set_combine(sets.precast.ws.magic, {waist="オルペウスサッシュ"})
    sets.precast.ws['エヴィサレーション'] = sets.precast.ws.melee_phisical

    sets.precast.ability["ランダムディール"] ={body={ name="ＬＡフラック+3", augments={'Enhances "Loaded Deck" effect',}},}
    sets.precast.ability["フォールド"] = {hands={ name="ＬＡガントリー+1", augments={'Enhances "Fold" effect',}},}
    sets.precast.ability["スネークアイ"] = {legs={ name="ＬＡトルーズ+1", augments={'Enhances "Snake Eye" effect',}},}
    sets.precast.ability["ワイドカード"] = {feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},}

    sets.midcast.ra = {
        ammo="クロノブレット",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands={ name="アデマリスト+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet="マリグナスブーツ",
        neck="イスクルゴルゲット",
        waist="イェマヤベルト",
        left_ear="エナベートピアス",
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','"Store TP"+10',}},
    }

    sets.midcast.roll = {
        head={ name="ＬＡトリコルヌ+1", augments={'Enhances "Winning Streak" effect',}},
        hands="ＣＳガントリー+1",
        legs={ name="デサルタタセッツ", augments={'"Sic" and "Ready" ability delay -5','"Phantom Roll" ability delay -5',}},
        neck="王将の首飾り",
        back={ name="カムラスマント", augments={'"Snapshot"+10',}},
    }

    sets.midcast.roll_luzaf = {right_ring="ルザフリング",}

    sets.midcast.cure = {
        neck="ファライナロケット",
        right_ear="メンデカントピアス",
        -- back="ソレムニティケープ",
    }

    sets.aftercast.melee_multi = {
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="コンバタントトルク",
        waist="ケンタークベルト+1",
        left_ear="素破の耳",
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="シーリチリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }

    sets.aftercast.melee_dt = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="コンバタントトルク",
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee = sets.aftercast.melee_dt
    sets.aftercast.idle = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="霊亀腰帯",
        left_ear="エアバニピアス",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 8; wait 0.5; input /macro set 1; wait 0.5; input /si cor;')
end

function pretarget(spell)
    local set_equip = nil
    if spell.type == 'CorsairRoll' then
        local enhances = rolls[spell.name].enhances
        local lucky = rolls[spell.name].lucky
        local unlucky = rolls[spell.name].unlucky
        windower.add_to_chat(2, spell.name .. ' [' ..enhances ..'] ')
        windower.add_to_chat(2, 'Lucky = ' .. lucky .. ' '.. 'Unluck = '.. unlucky)
        if is_luzaf then
            set_equip = sets.midcast.roll_luzaf
        end
    elseif spell.type == 'JobAbility' then
        if spell.name == 'ダブルアップ' then
            if is_luzaf then
                set_equip = sets.midcast.roll_luzaf
            end
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function precast(spell)
    local set_equip = nil
    -- todo: ファントムロール、クイックドロー、ケアル
    -- type CorsairRoll CorsairShot
    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)
    -- windower.add_to_chat(123, spell.skill)

    if spell.name == '飛び道具' then
        set_equip = sets.precast.snap
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            if spell.name == "レデンサリュート" then
                set_equip = set_combine(sets.precast.ws[spell.name], get_hachirin('闇'))
            else
                set_equip = sets.precast.ws[spell.name]
            end
        else
            set_equip = sets.precast.ws.ra_phisical
        end
    elseif spell.type == 'CorsairRoll' then
        if is_luzaf then
            set_equip = set_combine(sets.midcast.roll, sets.midcast.roll_luzaf)
        else
            set_equip = sets.midcast.roll
        end

        if sets.rolls_emp[spell.name] then
            set_equip = set_combine(set_equip, sets.rolls_emp[spell.name])
        end
    elseif spell.type == 'CorsairShot' then
        set_equip = sets.precast.quick_draw
    elseif spell.type == 'JobAbility' then
        if spell.name == 'ダブルアップ' then
            if is_luzaf then
                set_equip = set_combine(sets.midcast.roll, sets.midcast.roll_luzaf)
            else
                set_equip = sets.midcast.roll
            end
        elseif sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end

        if sets.rolls_emp[spell.name] then
            set_equip = set_combine(set_equip, sets.rolls_emp[spell.name])
        end
    elseif string.find(spell.type, 'Magic') then
        set_equip =sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.name == '飛び道具' then
        set_equip = sets.midcast.ra
    elseif string.find(spell.name, 'ケアル') then
        set_equip = sets.midcast.cure
    elseif spell.type == 'JobAbility' then
        if spell.name == 'ダブルアップ' then
            send_command('wait 0.3; gs c double-up-aftercast')
        end
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
        if spell.type == 'WeaponSkill' and spell.interrupted == false then
            windower.add_to_chat(30, 'TP: [' .. player.tp .. '] after ' .. spell.name)
        end
        set_equip = get_aftercast_equip()
    else
        set_equip = sets.aftercast.idle
    end
    
    -- アニミキーブレット誤射防止
    if spell.type == 'CorsairShot' then
        set_equip = set_combine(set_equip, {ammo="クロノブレット",})
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
        set_equip = get_aftercast_equip()
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function get_aftercast_equip()
    if player.status == 'Engaged' then
        if is_melee then
            return sets.aftercast.melee
        else
            return sets.aftercast.idle
        end
    else
        return sets.aftercast.idle
    end
end

function self_command(command)

    if command == 'melee' then
        if not is_melee then
            is_melee = true
            windower.add_to_chat(122,'+++ 近接装備 +++')
        else
            is_melee = false
            windower.add_to_chat(122,'+++ 遠隔装備 +++')
        end
    elseif command == 'luzaf' then
        if is_luzaf then
            is_luzaf = false
            windower.add_to_chat(122,'--- ルザフリングなし ---')
        else
            is_luzaf = true
            windower.add_to_chat(122,'+++ ルザフリングあり +++')
        end
    elseif command == 'double-up-aftercast' then
        equip(get_aftercast_equip())
    elseif command == 'th' then
        is_th = not is_th
        windower.add_to_chat(122, '---> トレハン装備')
    elseif command == 'magic' then
        equip(sets.weapon.magic)
        windower.add_to_chat(122, '---> Weapon:Magic')
    elseif command == 'phisical' then
        equip(sets.weapon.phisical)
        windower.add_to_chat(122, '---> Weapon:Phisical')
    end
end