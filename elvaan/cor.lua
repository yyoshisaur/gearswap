include('myexport')
function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    -- self_command用フラグ
    is_melee = false
    is_luzaf = true
    is_cp = false

    sets.cp = {back="アピトマント+1"}
    
    rolls = {
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

    -- エンピリアン装束 効果アップ
    sets.rolls_emp = {
        ['キャスターズロール'] = {}, -- {legs="ＣＳトルーズ+1"}
        ['コアサーズロール'] = {feet="ＣＳブーツ+1"},
        ['ブリッツァロール'] = {}, -- {head="ＣＳトリコルヌ+1"}
        ['タクティックロール'] = {body="ＣＳフラック+1",}, 
        ['アライズロール'] = {hands="ＣＳガントリー+2",},
    }

    sets.precast.snap = {
        -- ammo="クロノブレット",
        head={ name="テーオンシャポー", augments={'"Snapshot"+5','"Snapshot"+5',}},
        body="オショシベスト",
        hands={ name="テーオングローブ", augments={'"Snapshot"+5','"Snapshot"+5',}},
        legs={ name="ＬＡトルーズ+3", augments={'Enhances "Snake Eye" effect',}},
        -- legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet="メガナダジャンボ+2",
        -- back={ name="カムラスマント", augments={'"Snapshot"+10',}},
    }

    sets.precast.fc = {
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="プロリクスリング",
        right_ring="キシャールリング",
    }

    sets.precast.quick_draw = {
        -- ammo="アニミキーブレット",
        -- head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        -- body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        -- hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        -- legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Weapon skill damage +3%','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        feet="ＣＳブーツ+1",
        -- neck="サンクトネックレス",
        -- waist="エスカンストーン",
        -- left_ear="ノーヴィオピアス",
        -- right_ear="フリオミシピアス",
        -- left_ring="アルビナリング+1",
        -- right_ring="ディンジルリング",
        -- back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.ws.ra_phisical = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="メガナダグローブ+2",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="エナベートピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back="ソコルソキーマント",
    }

    sets.precast.ws.melee_phisical = {
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="メガナダグローブ+2",
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="フォシャゴルゲット",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="マーケピアス+1",
        left_ring="王将の指輪",
        right_ring={ name="カコエシクリング+1", augments={'Path: A',}},
        back={ name="カムラスマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.leaden = {
        -- ammo="デベステトブレット",
        -- head="妖蟲の髪飾り+1",
        -- body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        -- hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        -- legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Weapon skill damage +3%','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        -- feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        -- neck="サンクトネックレス",
        -- waist="闇輪の帯", -- waist="エスカンストーン",
        -- left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        -- right_ear="フリオミシピアス",
        -- left_ring="アルコンリング",
        -- right_ring="ディンジルリング",
        -- back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.magic = {
        -- ammo="デベステトブレット",
        -- head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        -- body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        -- hands={ name="カマインフィンガ+1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        -- legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+12 "Mag.Atk.Bns."+12','Weapon skill damage +3%','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        -- feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        -- neck="サンクトネックレス",
        -- waist="エスカンストーン",
        -- left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        -- right_ear="フリオミシピアス",
        -- left_ring="アルビナリング+1",
        -- right_ring="ディンジルリング",
        -- back={ name="カムラスマント", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
    }

    -- sets.precast.ws["ラストスタンド"] = sets.precast.ws.ra_phisical
    -- sets.precast.ws["レデンサリュート"] = sets.precast.ws.leaden
    -- sets.precast.ws["ワイルドファイア"] = sets.precast.ws.magic
    sets.precast.ws["サベッジブレード"] = sets.precast.ws.melee_phisical

    sets.precast.ability["ランダムディール"] ={body={ name="ＬＡフラック+1", augments={'Enhances "Loaded Deck" effect',}},}
    sets.precast.ability["フォールド"] = {hands={ name="ＬＡガントリー+1", augments={'Enhances "Fold" effect',}},}
    sets.precast.ability["スネークアイ"] = {legs={ name="ＬＡトルーズ+3", augments={'Enhances "Snake Eye" effect',}},}
    sets.precast.ability["ワイドカード"] = {feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},}

    sets.midcast.ra = {
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="イスクルゴルゲット",
        waist="エスカンストーン",
        left_ear="セサンスピアス",
        right_ear="エナベートピアス",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back="ソコルソキーマント",
    }

    sets.midcast.roll = {
        main={ name="ロスタム", augments={'Path: C',}},
        range="コンペンセーター",
        head={ name="ＬＡトリコルヌ+1", augments={'Enhances "Winning Streak" effect',}},
        hands="ＣＳガントリー+2",
        neck="王将の首飾り",
        back="カムラスマント",
    }

    sets.midcast.roll_luzaf = {right_ring="ルザフリング",}

    sets.midcast.cure = {
        -- neck="ファライナロケット",
        -- right_ear="メンデカントピアス",
        -- back="ソレムニティケープ",
    }

    sets.aftercast.melee = {
        main="ネイグリング",
        range={ name="アナーキー+2", augments={'Delay:+60','TP Bonus +1000',}},
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="クロタリウストルク",
        waist="霊亀腰帯",
        left_ear="ブルタルピアス",
        right_ear="エアバニピアス",
        left_ring="守りの指輪",
        right_ring="シーリチリング+1",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.aftercast.idle = {
        main="ネイグリング",
        range={ name="アナーキー+2", augments={'Delay:+60','TP Bonus +1000',}},
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="カムラスマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 6; wait 0.5; input /macro set 1; wait 0.5; input /si cor; wait 0.5; input /lockstyleset 4 echo;')

    -- autocor
    send_command('lua load autocor')
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
            set_equip = sets.precast.ws[spell.name]
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
                set_equip = sets.midcast.roll_luzaf
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
            send_command('wait 0.5; input //gs c double-up-aftercast')
        end
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
    -- if spell.type == 'CorsairShot' then
    --     set_equip = set_combine(set_equip, {ammo="クロノブレット",})
    -- end

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
    if is_melee then
        return sets.aftercast.melee
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
    elseif command == 'cp' then
        if is_cp then
            is_cp = false
            enable('back')
            windower.add_to_chat(122,'+++ キャパポ装備 OFF +++')
        else
            is_cp = true
            equip(sets.cp)
            disable('back')
            windower.add_to_chat(122,'+++ キャパポ装備 ON +++')
        end
    elseif command == 'double-up-aftercast' then
        if player.status == 'Engaged' then
            equip(get_aftercast_equip())
        else
            equip(sets.aftercast.idle)
        end
    end
end

function file_unload(file_name)
    send_command('lua unload autocor')
end