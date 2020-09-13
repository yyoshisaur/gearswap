include('bst_itemizer')
function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    sets.precast.ready_delay = {
        hands="ＮＫマノプラス+1",
        legs={ name="デサルタタセッツ", augments={'"Sic" and "Ready" ability delay -5','"Repair" potency +10%',}},
    }
    
    sets.precast.call_beast = {hands={ name="ＡＫグローブ+1", augments={'Enhances "Beast Affinity" effect',}},}
    sets.precast.reward = {
        body="ＴＯジャック+3",
        legs={ name="ＡＫトラウザ+3", augments={'Enhances "Familiar" effect',}},
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.ability['よびだす'] = sets.precast.call_beast
    sets.precast.ability['しょうしゅう'] = sets.precast.call_beast
    sets.precast.ability['いたわる'] = sets.precast.reward
    sets.precast.ability['使い魔'] = {legs={ name="ＡＫトラウザ+3", augments={'Enhances "Familiar" effect',}},}
    sets.precast.ability['K.インスティンクト'] = {head={ name="ＡＫヘルム+3", augments={'Enhances "Killer Instinct" effect',}},}

    sets.precast.ws.str_wsd = {
        ammo="オゲルミルオーブ+1",
        head={ name="ＡＫヘルム+3", augments={'Enhances "Killer Instinct" effect',}},
        body={ name="ルストラハーネス+1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
        hands="ＴＯグローブ+3",
        legs="メガナダショウス+2",
        feet={ name="ルストラレギンス+1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="スラッドピアス",
        left_ring="王将の指輪",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws.str_multi = {
        ammo="オゲルミルオーブ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body={ name="アゴシホーバーク+1", augments={'STR+12','Attack+20','"Store TP"+6',}},
        hands={ name="アゴシマフラ+1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
        legs="メガナダショウス+2",
        feet={ name="アゴシソルレット+1", augments={'HP+65','"Dbl.Atk."+3','"Store TP"+5',}},
        neck={ name="獣使いの首輪+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="エポナリング",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws.magic = {
        ammo="ペムフレドタスラム",
        head={ name="ＡＫヘルム+3", augments={'Enhances "Killer Instinct" effect',}},
        body="サクロブレスト",
        hands="ＴＯグローブ+3",
        legs={ name="オーグリクウィス+1", augments={'Path: A',}},
        feet="マリグナスブーツ",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="フリオミシピアス",
        left_ring="王将の指輪",
        right_ring="エパミノダスリング",
        back="サクロマント",
    }

    sets.precast.ws["スマッシュ"] = sets.precast.ws.str_wsd
    sets.precast.ws["ランページ"] = sets.precast.ws.str_multi
    sets.precast.ws["デシメーション"] = sets.precast.ws.str_multi
    sets.precast.ws["ルイネーター"] = sets.precast.ws.str_multi
    sets.precast.ws["クラウドスプリッタ"] = sets.precast.ws.magic
    sets.precast.ws["プライマルレンド"] = sets.precast.ws.magic

    sets.midcast.pet_acc = {
        ammo="ボルスパタスラム",
        head="タリアターバン+2",
        body="タリアマンティル+2",
        hands="ＮＫマノプラス+1",
        legs="タリアサラウィル+2",
        feet="タリアクラッコー+2",
        neck="獣使いの首輪+2",
        waist="インカーネトサッシュ",
        left_ear="カイリーンピアス",
        right_ear="エンメルカルピアス",
        left_ring="タリアリング",
        right_ring="パルーグリング",
        back={ name="パストラルマント", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20',}},
    }

    sets.midcast.pet_atk = {
        ammo="ボルスパタスラム",
        head={ name="テーオンシャポー", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        body={ name="テーオンタバード", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        hands="ＮＫマノプラス+1",
        legs={ name="テーオンタイツ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        feet={ name="テーオンブーツ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Haste+5',}},
        neck="獣使いの首輪+2",
        waist="インカーネトサッシュ",
        left_ear="カイリーンピアス",
        right_ear="エンメルカルピアス",
        left_ring="ヴァラールリング+1",
        right_ring="パルーグリング",
        back={ name="パストラルマント", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20',}},
    }

    sets.aftercast.melee = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="アヌートルク",
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="エアバニピアス",
        left_ring="エポナリング",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear="シェリダピアス",
        right_ear="エアバニピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 7; wait 0.5; input /macro set 1; wait 0.5; input /lockstyleset 2 echo;')
end

function precast(spell)
    local set_equip = nil

    -- windower.add_to_chat(122,'spell.type: '..spell.type)
    -- windower.add_to_chat(122,'spell.name: '..spell.name)

    if spell.type == 'Monster' then
        set_equip = sets.precast.ready_delay
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.str_wsd
        end
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
    
    if spell.type == 'Monster' then
        return
    end

    if player.status == 'Engaged' then
        set_equip = sets.aftercast.melee
    else
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function pet_midcast(spell)
    -- windower.add_to_chat(122,'spell.type: '..spell.type)
    -- windower.add_to_chat(122,'spell.name: '..spell.name)
    local set_equip = nil
    if spell.type == 'MonsterSkill' then
        set_equip = sets.midcast.pet_atk
    end

    if set_equip then
        equip(set_equip)
    end
end

function pet_aftercast(spell)
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
    if command == 'petfood' then
        itemizer_get_petfood()
        send_command(windower.to_shift_jis('wait 1; gs c petfoodequip; wait 1; input /ja いたわる <me>'))
    elseif command == 'petfoodequip' then
        equip({ammo="ペットシータ"})
    elseif command == 'getpet' then
        itemizer_get_pet()
    elseif command == 'putpet' then
        itemizer_put_pet()
    elseif command == 'slug' then
        equip({ammo="褐色の麦汁"})
    elseif command == 'sheep' then
        equip({ammo="奏でる草汁"})
    elseif command == 'raaz' then
        equip({ammo="猛進する穀物汁"})
    end
end