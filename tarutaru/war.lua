function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.aftercast.melee = {}
    sets.weapon = {}

    sets.weapon.ukon = {main="ウコンバサラ", sub="ウトゥグリップ",}
    sets.weapon.chango = {main="シャンゴル", sub="ウトゥグリップ",}
    sets.weapon.sword = {main="ネイグリング", sub="ブラーシールド+1",}
    sets.weapon.shining = {main="シャイニングワン", sub="ウトゥグリップ",}

    sets.precast.ws.str_critical = {
        ammo="イェットシーラ+1",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands="フラママノポラ+2",
        legs="ＰＭクウィス+3",
        feet={ name="バロラスグリーヴ", augments={'Accuracy+27','Crit. hit damage +5%','Attack+1',}},
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.str_wsd = {
        ammo="ノブキエリ",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands="スレビアガントレ+2",
        legs="ＰＭクウィス+3",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.vit_wsd = {
        ammo="ノブキエリ",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands="スレビアガントレ+2",
        legs="ＰＭクウィス+3",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.str_sword = {
        ammo="ノブキエリ",
        head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},
        body="ＰＭロリカ+3",
        hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},
        legs={ name="バロラスホーズ", augments={'Accuracy+19 Attack+19','Weapon skill damage +5%','Accuracy+12',}},
        feet="スレビアレギンス+2",
        neck="戦士の数珠+2",
        waist="エングレイブベルト",
        left_ear="イシュヴァラピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ルフェセントリング",
        right_ring="王将の指輪",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.magic_acc = {
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
    sets.precast.ws['シールドブレイク'] = sets.precast.ws.magic_acc
    sets.precast.ws['アーマーブレイク'] = sets.precast.ws.magic_acc
    sets.precast.ws['ウェポンブレイク'] = sets.precast.ws.magic_acc
    sets.precast.ws['フルブレイク'] = sets.precast.ws.magic_acc
    sets.precast.ws['レイジングラッシュ'] = sets.precast.ws.str_critical
    sets.precast.ws['ウッコフューリー'] = sets.precast.ws.str_critical
    sets.precast.ws['アップヒーバル'] = sets.precast.ws.vit_wsd
    -- 片手剣
    sets.precast.ws['サベッジブレード'] = sets.precast.ws.str_sword
    -- 両手槍
    sets.precast.ws['インパルスドライヴ'] = sets.precast.ws.str_critical

    sets.precast.ability['バーサク'] = {
        body="ＰＭロリカ+3",
        feet={ name="ＡＧカリガ+3", augments={'Enhances "Tomahawk" effect',}},
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    sets.precast.ability['ディフェンダー'] = {hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},}
    sets.precast.ability['アグレッサー'] = {head="ＰＭマスク+3", body={ name="ＡＧロリカ+3", augments={'Enhances "Aggressive Aim" effect',}},}
    sets.precast.ability['ウォークライ'] = {head={ name="ＡＧマスク+3", augments={'Enhances "Savagery" effect',}},}
    sets.precast.ability['ブラッドレイジ'] = {body="ＢＩロリカ+1",}
    sets.precast.ability['トマホーク'] = {feet={ name="ＡＧカリガ+3", augments={'Enhances "Tomahawk" effect',}},}
    sets.precast.ability['マイティストライク'] = {hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},}
    sets.precast.ability['挑発'] = {
        ammo="サピエンスオーブ",
        head="ハリタスヘルム",
        body="タルタロスプレート",
        hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},
        legs="ＰＭクウィス+3",
        feet="ヴォルトソルレ",
        neck="月光の首飾り",
        waist="フルームベルト+1",
        left_ear="オノワイヤリング",
        right_ear="オノワイヤリング+1",
        left_ring="アイワツリング",
        right_ring="ペトロフリング",
        back="月光の羽衣",
    }

    sets.precast.waltz = {
        legs="ダッシングサブリガ",
        left_ring="アスクレピアリング",
        right_ring="ヴァルスールリング",
        back={ name="シコルマント", augments={'DEX+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Waltz" potency +10%','Damage taken-5%',}},
    }

    sets.precast.fc = {
        ammo="サピエンスオーブ",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        right_ring="ラハブリング",
    }

    sets.aftercast.melee.ukon = {
        ammo="イェットシーラ+1",
        head="フラマツッケット+2",
        -- body={ name="ＡＧロリカ+3", augments={'Enhances "Aggressive Aim" effect',}},
        -- body="デーゴンブレスト",
        body="フロプトブレスト",
        hands="フラママノポラ+2",
        legs={ name="ＡＧクウィス+3", augments={'Enhances "Warrior\'s Charge" effect',}}, --ACC 1220
        -- legs="ＰＭクウィス+3", -- ACC 1250
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.melee.chango = {
        ammo="銀銭",
        head="フラマツッケット+2",
        body={ name="バロラスメイル", augments={'Accuracy+27','"Dbl.Atk."+5','VIT+4','Attack+15',}},
        hands="スレビアガントレ+2",
        legs="ＰＭクウィス+3",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="セサンスピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="ＰＭマスク+3",
        body={ name="ＡＧロリカ+3", augments={'Enhances "Aggressive Aim" effect',}},
        hands={ name="ＡＧマフラ+3", augments={'Enhances "Mighty Strikes" effect',}},
        legs="ＰＭクウィス+3",
        feet="ヴォルトソルレ",
        neck="ロリケートトルク+1",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="セサンスピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    -- マクロのブック, セット変更
    send_command('input /macro book 18; wait 0.5; input /macro set 1')
end

function precast(spell)
    local set_equip = nil
    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)
    -- windower.add_to_chat(123, spell.skill)
    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            local ws_weapon_type = gearswap.res.weapon_skills:with('ja', spell.name).skill
            if ws_weapon_type == gearswap.res.skills:with('ja', '片手剣').id then -- 片手剣WS
                set_equip = sets.precast.ws.str_sword
            else
               set_equip = sets.precast.ws.str_wsd
            end
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'Waltz' then
        set_equip = sets.precast.waltz
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
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        if spell.type == 'WeaponSkill' and spell.interrupted == false then
            windower.add_to_chat(30, 'TP: ' .. player.tp .. ' after ' .. spell.name)
        end

        if player.equipment.main == sets.weapon.ukon.main then
            set_equip = sets.aftercast.melee.ukon
        elseif player.equipment.main == sets.weapon.chango.main then
            set_equip = sets.aftercast.melee.chango
        else
            set_equip = sets.aftercast.melee.chango
        end
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
        if player.equipment.main == sets.weapon.ukon.main then
            set_equip = sets.aftercast.melee.ukon
        elseif player.equipment.main == sets.weapon.chango.main then
            set_equip = sets.aftercast.melee.chango
        else
            set_equip = sets.aftercast.melee.chango
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'melee' then
        if player.equipment.main == sets.weapon.ukon.main then
            windower.send_command('gs equip sets.aftercast.melee.ukon')
        elseif player.equipment.main == sets.weapon.chango.main then
            windower.send_command('gs equip sets.aftercast.melee.chango')
        else
            windower.send_command('gs equip sets.aftercast.melee.chango')
        end
    end
end

function buff_change(name, gain, buff_details)
    if name == '睡眠' then
        if player.status == 'Engaged' then
            if gain and player.hpp > 25 then
                equip({neck="ヴィムトルク+1",})
            else
                if player.equipment.main == sets.weapon.ukon.main then
                    equip(sets.aftercast.melee.ukon)
                elseif player.equipment.main == sets.weapon.chango.main then
                    equip(sets.aftercast.melee.chango)
                else
                    equip(sets.aftercast.melee.chango)
                end
            end
         end
    end
end