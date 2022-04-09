include('smn_avatar')
include('myexport')
function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    is_autobp = false
    is_favor = false

    sets.smn_skill = {
        ammo="サンカスサシェ+1",
        head={ name="ＣＮホーン+3", hp=56, mp=98,},
        body={ name="バヤミローブ", hp=68, mp=103,},
        hands={ name="ラマスミトン+1", hp=18, mp=44,},
        legs={ name="ＢＣスパッツ+1", hp=41, mp=116,},
        feet={ name="バヤミサボ+1", hp=30, mp=49,},
        neck="インカンタートルク",
        waist="ルセデティサッシュ",
        left_ear={ name="アンドアーピアス", mp=30,},
        right_ear="エンメルカルピアス",
        left_ring={ name="エボカーリング", mp=25,},
        right_ring="スティキニリング+1",
        back={ name="コンベイケープ", augments={'Summoning magic skill +5','Pet: Enmity+7',}, mp=100,},
    }

    sets.precast.fc = {
        ammo="サンカスサシェ+1",
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, hp=27, mp=141},
        body={ name="バヤミローブ", hp=68, mp=103,},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, hp=52, mp=44,},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}, hp=43, mp=109,},
        feet={ name="マーリンクラッコー", augments={'CHR+4','Pet: INT+7','"Fast Cast"+7','Mag. Acc.+11 "Mag.Atk.Bns."+11',}, hp=4, mp=20,},
        neck={ name="ボルトサージトルク", mp=20,},
        waist="エンブラサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear={ name="ロケイシャスピアス", mp=30,},
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="カンペストレケープ", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','"Fast Cast"+10',}},
    }

    sets.precast.bpad = {
        ammo="サンカスサシェ+1",
        head={ name="ＢＣホーン+1", hp=31, mp=134,},
        body={ name="ＣＮダブレット+3", hp=85, mp=211,},
    }

    sets.precast.ability['エレメントサイフォン'] = sets.smn_skill
    sets.precast.ability['アストラルフロウ'] = {head={ name="ＧＬホーン+1", augments={'Enhances "Astral Flow" effect',}, hp=31, mp=95,},}

    sets.midcast.bp_physical = {
        ammo="サンカスサシェ+1",
        head={ name="ＡＰクラウン+1", augments={'Pet: Attack+25','Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+8',}, hp=-110, mp=59,},
        body={ name="ＣＮダブレット+3", hp=85, mp=211,},
        hands={ name="マーリンダスタナ", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','Blood Pact Dmg.+10','Pet: STR+8','Pet: Mag. Acc.+2','Pet: "Mag.Atk.Bns."+4',}, hp=9, mp=20,},
        legs={ name="ＡＰズボン+1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}, hp=-110, mp=56,},
        feet={ name="ＣＮピガッシュ+3", hp=23, mp=71,},
        neck={ name="召喚士の首輪+2", hp=50,},
        waist={ name="王将の帯", hp=88,},
        left_ear={ name="ゲロスピアス", mp=35,},
        right_ear="ルガルバンダピアス",
        left_ring="ヴァラールリング+1",
        right_ring="ヴァラールリング+1",
        back={ name="カンペストレケープ", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.midcast.bp_magical = {
        ammo="サンカスサシェ+1",
        head={ name="ＡＰクラウン+1", augments={'Pet: Attack+25','Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+8',}, hp=-110, mp=59,},
        body={ name="ＣＮダブレット+3", hp=85, mp=211,},
        hands={ name="マーリンダスタナ", augments={'Pet: Mag. Acc.+12 Pet: "Mag.Atk.Bns."+12','Blood Pact Dmg.+10','Pet: Mag. Acc.+9',}, hp=9, mp=20,},
        legs={ name="ＡＰズボン+1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}, hp=-110, mp=56,},
        feet={ name="ＡＰパンプス+1", augments={'Pet: Attack+25','Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+8',}, hp=-90, mp=41,},
        neck={ name="アダドアミュレット", hp=25,},
        waist={ name="王将の帯", hp=88,},
        left_ear={ name="ゲロスピアス", mp=35,},
        right_ear="ルガルバンダピアス",
        left_ring="ヴァラールリング+1",
        right_ring="ヴァラールリング+1",
        back={ name="カンペストレケープ", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Mag. Acc+20 /Mag. Dmg.+20','Pet: Magic Damage+10','"Mag.Atk.Bns."+10',}},
    }

    sets.midcast.bp_hybrid = {
        ammo="サンカスサシェ+1",
        head={ name="ＡＰクラウン+1", augments={'Pet: Attack+25','Pet: "Mag.Atk.Bns."+25','Blood Pact Dmg.+8',}, hp=-110, mp=59,},
        body={ name="ＣＮダブレット+3", hp=85, mp=211,},
        hands={ name="マーリンダスタナ", augments={'Pet: Mag. Acc.+12 Pet: "Mag.Atk.Bns."+12','Blood Pact Dmg.+10','Pet: Mag. Acc.+9',}, hp=9, mp=20,},
        legs={ name="ＡＰズボン+1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}, hp=-110, mp=56,},
        feet={ name="ＣＮピガッシュ+3", hp=23, mp=71,},
        neck={ name="召喚士の首輪+2", hp=50,},
        waist={ name="王将の帯", hp=88,},
        left_ear={ name="ゲロスピアス", mp=35,},
        right_ear="ルガルバンダピアス",
        left_ring="ヴァラールリング+1",
        right_ring="ヴァラールリング+1",
        back={ name="カンペストレケープ", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Mag. Acc+20 /Mag. Dmg.+20','Pet: Magic Damage+10','"Mag.Atk.Bns."+10',}},
    }

    sets.midcast.cure = {
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}, hp=36, mp=82},
        body={ name="ヴリコダラジュポン", hp=54, mp=59},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, hp=52, mp=44},
        legs={ name="ギーヴトラウザ", hp=22, mp=32},
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}, hp=13, mp=14},
        left_ear={ name="メンデカントピアス", mp=30},
        back={ name="コンベイケープ", augments={'Summoning magic skill +5','Pet: Enmity+7',}, mp=100,},
    }

    sets.midcast.enhance_duration = {
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}, hp=36, mp=32},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, hp=54, mp=56},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, hp=52, mp=44},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, hp=43, mp=29},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}, hp=13, mp=44},
        waist="エンブラサッシュ",
        left_ear={ name="エテオレートピアス", mp=50},
        right_ring={name="メフィタスリング+1", hp=-110, mp=110},
        back={ name="コンベイケープ", augments={'Summoning magic skill +5','Pet: Enmity+7',}, mp=100,},
    }

    sets.midcast.skin = {neck='ストーンゴルゲット', right_ear='アースクライピアス', waist="ジーゲルサッシュ",}
    sets.midcast.aquaveil = {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, hp=27, mp=141}, hands={ name="王将の袖飾り", hp=91, mp=88},}
    sets.midcast.refresh = {head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}, hp=27, mp=141}, waist="ギシドゥバサッシュ",}

    sets.aftercast.idle_dt = {
        ammo="サンカスサシェ+1",
        head={ name="ＣＮホーン+3", hp=56, mp=98,},
        -- body={ name="ＡＰダルマティカ+1", augments={'Summoning magic skill +20','Enmity-6','Pet: Damage taken -4%',}, hp=-160, mp=85,},
        -- hands={ name="アステリアミトン+1", hp=18, mp=44,},
        -- legs={ name="アシドゥイズボン+1", hp=43, mp=29,},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="バヤミサボ+1", hp=30, mp=49,},
        neck={ name="召喚士の首輪+2", hp=50,},
        -- waist="ルセデティサッシュ",
        waist="キャリアーサッシュ",
        left_ear={ name="エヴァンズピアス", mp=50,},
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="カンペストレケープ", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%',}, mp=60,},
    }

    sets.aftercast.idle_favor = {
        ammo="サンカスサシェ+1",
        head={ name="ＢＣホーン+1", hp=31, mp=134,},
        body={ name="ＡＰダルマティカ+1", augments={'Summoning magic skill +20','Enmity-6','Pet: Damage taken -4%',}, hp=-160, mp=85,},
        hands={ name="アステリアミトン+1", hp=18, mp=44,},
        legs={ name="アシドゥイズボン+1", hp=43, mp=29,},
        feet={ name="バヤミサボ+1", hp=30, mp=49,},
        neck={ name="召喚士の首輪+2", hp=50,},
        waist="ルセデティサッシュ",
        left_ear={ name="エヴァンズピアス", mp=50,},
        right_ear="エンメルカルピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="カンペストレケープ", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%',}, mp=60,},
    }
    
    sets.aftercast.idle = sets.aftercast.idle_dt

    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 4; wait 0.5; input /macro set 1; wait 0.5; input /si smn;')
end

function precast(spell)
    local set_equip = nil

    if buffactive['アストラルパッセージ'] then
        return
    end

    if spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard' then
        set_equip = sets.precast.bpad
    elseif spell.type == 'SummonerPact' then
        set_equip = sets.precast.fc
    elseif spell.type == 'WhiteMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'BlackMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    end

    if set_equip then
        equip(set_equip)
        set_priorities('mp','hp')
    end
end

function midcast(spell)
    local set_equip = nil
    
    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') then
        return
    end

    if string.find(spell.name, 'ケアル') then
        set_equip = sets.midcast.cure
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.skin)
        elseif spell.name == 'アクアベール' then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.aquaveil)
        elseif spell.name == 'リフレシュ' then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.refresh)
        else
            set_equip = sets.midcast.enhance_duration
        end
    end

    if set_equip then
        equip(set_equip)
        set_priorities('mp','hp')
    end
end

function get_idle_equip(spell)

    if player.status == 'Engaged' then
        return sets.aftercast.idle
    else
        return sets.aftercast.idle
    end
end

function aftercast(spell)
    local set_equip = nil

    if buffactive['アストラルパッセージ'] then
        return
    end

    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') then
        return
    end

    set_equip = get_idle_equip(spell)
    
    if set_equip then
        equip(set_equip)
        set_priorities('mp','hp')
    end
end

function pet_midcast(spell)
    local set_equip = nil

    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') then
        if bp_physical:contains(spell.name) then
            set_equip = sets.midcast.bp_physical
        elseif bp_hybrid:contains(spell.name) then
            set_equip = sets.midcast.bp_hybrid
        elseif bp_magical:contains(spell.name) then
            set_equip = sets.midcast.bp_magical
        elseif bp_debuff:contains(spell.name) then
            set_equip = sets.midcast.bp_magical
        elseif bp_buff:contains(spell.name) then
            set_equip = sets.smn_skill
        elseif bp_other:contains(spell.name) then
            set_equip = sets.smn_skill
        end
    end

    if set_equip then
        equip(set_equip)
        set_priorities('mp','hp')
    end
end

function pet_aftercast(spell)
    local set_equip = nil
    
    if buffactive['アストラルパッセージ'] then
        if is_autobp then
            local command = ''
            if player.mpp < 25 then -- mpが25%以下ならコンバートを使う
                command = command .. 'input /ja ' .. windower.to_shift_jis('コンバート') .. ' <me>; wait 1;'
            end
            command = command .. 'input /pet ' .. windower.to_shift_jis(spell.name) .. ' <t>;'
            send_command(command)
        end
        return
    end

    set_equip = get_idle_equip(spell)
    
    if set_equip then
        equip(set_equip)
        set_priorities('mp','hp')
    end
end

function status_change(new, old)
    local set_equip = nil
    
    set_equip = get_idle_equip(nil)
    
    if set_equip then
        equip(set_equip)
        set_priorities('mp','hp')
    end
end

function self_command(command)
    
    if command == 'favor' then
        is_favor = not is_favor
        if is_favor then
            sets.aftercast.idle = sets.aftercast.idle_favor
        else
            sets.aftercast.idle = sets.aftercast.idle_dt
        end

        equip(get_idle_equip(nil))
        set_priorities('mp','hp')
        windower.add_to_chat(122,'---> 神獣の加護+3待機装備: '..tostring(is_favor))
    elseif command == 'spirit' then
        spirit_command()
    elseif command == 'autobp' then
        is_autobp = not is_autobp
        windower.add_to_chat(122,'---> 自動パッセ: '..tostring(is_autobp))
    else
        bp_commnad(command)
    end
end

function file_unload(file_name)
    bp_destroy()
end

function set_priorities(key1,key2)
    local future,current = gearswap.equip_list,gearswap.equip_list_history
    function get_val(piece,key)
        if piece and type(piece)=='table' and piece[key] and type(piece[key])=='number' then
            return piece[key]
        end
        return 0
    end
    for i,v in pairs(future) do
        local priority = get_val(future[i],key1) - get_val(current[i],key1) + (get_val(future[i],key2) - get_val(current[i],key2))
        if type(v) == 'table' then
            future[i].priority = priority
        else
            future[i] = {name=v,priority=priority}
        end
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

function set_priorities_by_mp()
    local future, current = gearswap.equip_list, gearswap.equip_list_history
    function get_mp(piece)
        if piece and type(piece)=='table' and piece.mp and type(piece.mp)=='number' then
            return piece.mp
        end
        return 0
    end

    for i, v in pairs(future) do
        local priority = get_mp(future[i]) - get_mp(current[i])
        if type(v) == 'table' then
            future[i].priority = priority
        else
            future[i] = {name=v, priority=priority}
        end
        -- windower.add_to_chat(123,future[i].name.." priority="..future[i].priority)
    end
end