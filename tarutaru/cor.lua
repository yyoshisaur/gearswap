function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    -- self_command用フラグ
    is_melee = false
    is_luzaf = false

    sets.rolls = {
        ['コルセアズロール'] = {enhance='得経験値量アップ', lucky = 5, unlucky = 9,},
        ['ニンジャロール'] = {enhance='回避アップ', lucky = 4, unlucky = 8,},
        ['ハンターズロール'] = {enhance='命中・飛命アップ', lucky = 4, unlucky = 8,},
        ['カオスロール'] = {enhance='攻撃力・飛攻アップ', lucky = 4, unlucky = 8,},
        ['メガスズロール'] = {enhance='魔法防御力アップ', lucky = 2, unlucky = 6,},
        ['ヒーラーズロール'] = {enhance='被ケアル回復量アップ', lucky = 3, unlucky = 7,},
        ['ドラケンロール'] = {enhance='ペットの命中・飛命アップ', lucky = 4, unlucky = 8,},
        ['コーラルロール'] = {enhance='詠唱中断率ダウン', lucky = 2, unlucky = 6,},
        ['モンクスロール'] = {enhance='モクシャアップ', lucky = 3, unlucky = 7,},
        ['ビーストロール'] = {enhance='ペットの攻・飛攻アップ', lucky = 4, unlucky = 8,},
        ['サムライロール'] = {enhance='ストアTPアップ', lucky = 2, unlucky = 6,},
        ['エボカーズロール'] = {enhance='リフレシュ', lucky = 5, unlucky = 9,},
        ['ローグズロール'] = {enhance='クリティカルヒット確率アップ', lucky = 5, unlucky = 9,},
        ['ワーロックスロール'] = {enhance='魔法命中率アップ', lucky = 4, unlucky = 8,},
        ['ファイターズロール'] = {enhance='ダブルアタック効果アップ', lucky = 5, unlucky = 9,},
        ['パペットロール'] = {enhance='ペットの魔法攻撃力・魔法命中率アップ', lucky = 3, unlucky = 7,},
        ['ガランツロール'] = {enhance='防御力アップ', lucky = 3, unlucky = 7,},
        ['ウィザーズロール'] = {enhance='魔法攻撃力アップ', lucky = 5, unlucky = 9,},
        ['ダンサーロール'] = {enhance='リジェネ', lucky = 3, unlucky = 7,},
        ['スカラーロール'] = {enhance='コンサーブMP効果アップ', lucky = 2, unlucky = 6,},
        ['ナチュラリストロール'] = {enhance='被強化魔法延長', lucky = 3, unlucky = 7,},
        ['ルーニストロール'] = {enhance='魔法回避率アップ', lucky = 4, unlucky = 8,},
        ['ボルターズロール'] = {enhance='移動速度アップ', lucky = 3, unlucky = 9,},
        ['キャスターズロール'] = {enhance='ファストキャスト効果アップ', lucky = 2, unlucky = 7,},
        ['コアサーズロール'] = {enhance='スナップショット効果アップ', lucky = 3, unlucky = 9,},
        ['ブリッツァロール'] = {enhance='攻撃間隔短縮', lucky = 4, unlucky = 9,},
        ['タクティックロール'] = {enhance='リゲイン', lucky = 5, unlucky = 8,},
        ['アライズロール'] = {enhance='連携ダメージ、連携命中率アップ', lucky = 3, unlucky = 10,},
        ['マイザーロール'] = {enhance='セーブTP', lucky = 5, unlucky = 7,},
        ['コンパニオンロール'] = {enhance='ペットにリゲイン・リジェネ', lucky = 2, unlucky = 10,},
        ['カウンターロール'] = {enhance='カウンター', lucky = 4, unlucky = 8,},
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
        ammo="アニミキーブレット",
        head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Mag. Acc.+10','"Mag.Atk.Bns."+15',}},
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
        head="メガナダバイザー+2",
        body="ＬＫフラック+3",
        hands="メガナダグローブ+2",
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet="メガナダジャンボ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="カコエシクリング+1",
        back={ name="カムラスマント", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
    }

    sets.precast.ws.melee_phisical = {
        head="メガナダバイザー+2",
        body="ＬＫフラック+3",
        hands="メガナダグローブ+2",
        legs="メガナダショウス+2",
        feet={ name="ＬＡブーツ+3", augments={'Enhances "Wild Card" effect',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="王将の指輪",
        back="ルーパインケープ",
    }

    sets.precast.ws.leaden = {
        ammo="デベステトブレット",
        head="妖蟲の髪飾り+1",
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Mag. Acc.+10','"Mag.Atk.Bns."+15',}},
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
        ammo="デベステトブレット",
        head={ name="ヘルクリアヘルム", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+2','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="カマインフィンガ+1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
        legs={ name="ヘルクリアトラウザ", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Mag. Acc.+10','"Mag.Atk.Bns."+15',}},
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

    sets.precast.ability["ランダムディール"] ={}
    sets.precast.ability["フォールド"] = {}
    sets.precast.ability["スネークアイ"] = {}
    sets.precast.ability["ワイドカード"] = {}

    sets.midcast.ra = {
        ammo="クロノブレット",
        head="メガナダバイザー+2",
        body="ＬＫフラック+3",
        hands={ name="アデマリスト+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        legs={ name="アデマケックス+1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
        feet="メガナダジャンボ+2",
        neck="イスクルゴルゲット",
        waist="イェマヤベルト",
        left_ear="エナベートピアス",
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="カコエシクリング+1",
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
        back="ソレムニティケープ",
    }

    sets.aftercast.melee = {
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="コンバタントトルク",
        waist="霊亀腰帯",
        left_ear="セサンスピアス",
        right_ear="テロスピアス",
        left_ring="イラブラットリング",
        right_ring="シーリチリング+1",
        back="ルーパインケープ",
    }

    sets.aftercast.idle = {
        head="メガナダバイザー+2",
        body="メガナダクウィリ+2",
        hands="メガナダグローブ+2",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }
end

function pretarget(spell)
    if spell.type == 'CorsairRoll' then
        local enhance = sets.rolls[spell.name].enhance
        local lucky = sets.rolls[spell.name].lucky
        local unlucky = sets.rolls[spell.name].unlucky
        windower.add_to_chat(2, spell.name .. ' [' ..enhance ..'] ')
        windower.add_to_chat(2, 'Lucky = ' .. lucky .. ' '.. 'Unluck = '.. unlucky)
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
    elseif string.find(spell.type, 'Magic') then
        set_equip =sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    end

    if set_equip ~= nill then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.name == '飛び道具' then
        set_equip = sets.midcast.ra
    end

    if set_equip ~= nill then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil

    if player.status == 'Engaged' then
        if spell.type == 'WeaponSkill' and spell.interrupted == false then
            windower.add_to_chat(30, 'TP: ' .. player.tp .. ' after ' .. spell.name)
        end
        set_equip = get_aftercast_equip()
    else
        set_equip = sets.aftercast.idle
    end
    
    -- アニミキーブレット誤射防止
    if spell.type == 'CorsairShot' then
        set_equip = set_combine(set_equip, {ammo="クロノブレット",})
    end

    if set_equip ~= nill then
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
    
    if set_equip ~= nil then
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
    elseif commnad == 'luzaf' then
        if is_luzaf then
            is_luzaf = false
            windower.add_to_chat(122,'--- ルザフリングなし ---')
        else
            is_luzaf = true
            windower.add_to_chat(122,'+++ ルザフリングあり +++')
        end
    end
end