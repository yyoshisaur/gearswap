function get_sets()
    set_language('japanese')

    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()
    state.Buff['アンリーシュ'] = buffactive['アンリーシュ'] or false

    init_ready_spell_map()

    include('Mote-TreasureHunter')
    include('Mote-Display')
    include('mystyle')
end

function user_setup()
    state.OffenseMode:options('Normal', 'SubtleBlow')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal', 'DmgLim')
    state.Weapons = M{['description']='Use Weapons', 'Dolichenus', 'Agwu'}

    bool_state = {}
    mode_state = {
        {label='Offense', mode='OffenseMode'},
        {label='Hydrid', mode='HybridMode'},
        {label='WS', mode='WeaponskillMode'},
        {label='Weapon', mode='Weapons'},
    }
    init_job_states(bool_state, mode_state)
    select_default_macro_book()
    mogmaster('bst')
end

function binds_on_load()
    send_command('bind f1 gs c cycle OffenseMode')
    send_command('bind ^f1 gs c cycle HybridMode')
    send_command('bind f2 gs c cycle WeaponskillMode')
    send_command('bind ^f2 gs c cycle Weapons')
    -- send_command('bind f3 gs c cycle CastingMode')
    -- send_command('bind f3 gs c cycle IdleMode')
    send_command('bind f4 gs c update user')
    send_command('bind ^f4 gs c cycle TreasureMode')

    -- send_command('bind !f4 gs c reset DefenseMode')
    -- send_command('bind f2 gs c set DefenseMode Physical')
    -- send_command('bind ^f2 gs c cycle PhysicalDefenseMode')
    -- send_command('bind !f2 gs c toggle Kiting')
    -- send_command('bind f3 gs c set DefenseMode Magical')

    -- send_command('bind ^- gs c toggle selectnpctargets')
    -- send_command('bind ^= gs c cycle pctargetmode')
end

function binds_on_unload()
    send_command('unbind f1')
    send_command('unbind ^f1')
    send_command('unbind f2')
    send_command('unbind ^f2')
    -- send_command('unbind f3')
    -- send_command('unbind ^f3')
    send_command('unbind f4')
    send_command('unbind ^f4')

    -- send_command('unbind ^-')
    -- send_command('unbind ^=')
end

function user_unload()
end

function init_gear_sets()
    sets.weapons = {}
    dolichenus = { main={name="ドリケナス"}, sub={name="デリベレンス+1"}}
    dolichenus_dw =  { main={name="ドリケナス"}, sub={name="ターニオンダガー+1"}}
    agwu = { main={name="アグゥアクス"}, sub={name="デリベレンス+1"}}
    agwu_dw = { main={name="アグゥアクス"}, sub={name="ターニオンダガー+1"}}

    sets.TreasureHunter = {
        head="白ララブキャップ+1",
        -- legs={ name="ヘルクリアトラウザ", augments={'MND+10','"Rapid Shot"+3','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }

    sets.precast.FC = {
        ammo="サピエンスオーブ",
        body="サクロブレスト",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="エテオレートピアス",
        right_ring="プロリクスリング",
    }

    sets.precast.WS = { -- wsd
        ammo="オゲルミルオーブ+1",
        head={ name="ＡＫヘルム+3", augments={'Enhances "Killer Instinct" effect',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands="ＴＯグローブ+3",
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck={ name="獣使いの首輪+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="スラッドピアス",
        left_ring="王将の指輪",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.multi = {
        ammo="オゲルミルオーブ+1",
        head={ name="ＡＫヘルム+3", augments={'Enhances "Killer Instinct" effect',}},
        body="グレティキュイラス",
        hands="ＴＯグローブ+3",
        legs="メガナダショウス+2",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck={ name="獣使いの首輪+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="エポナリング",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.WS.critical = {
        ammo="オゲルミルオーブ+1",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="メガナダクウィリ+2",
        hands="ヘヨカミトン+1",
        legs="ヘヨカサブリガ+1",
        feet="ヘヨカレギンス+1",
        neck={ name="獣使いの首輪+2", augments={'Path: A',}},
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="エポナリング",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.WS.magic = {
        ammo="ペムフレドタスラム",
        head={ name="ニャメヘルム", augments={'Path: B',}},
        body={ name="ニャメメイル", augments={'Path: B',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="フリオミシピアス",
        left_ring="王将の指輪",
        right_ring="エパミノダスリング",
        back="サクロマント",
    }
    
    sets.precast.WS["スマッシュ"] = sets.precast.WS
    sets.precast.WS["ランページ"] = sets.precast.WS.critical
    sets.precast.WS["デシメーション"] = sets.precast.WS.multi
    sets.precast.WS["ルイネーター"] = sets.precast.WS.multi
    sets.precast.WS["クラウドスプリッタ"] = sets.precast.WS.magic
    sets.precast.WS["プライマルレンド"] = sets.precast.WS.magic

    sets.precast.WS['エヴィサレーション'] = sets.precast.WS.critical
    sets.precast.WS['エクゼンテレター'] = sets.precast.WS.multi

    sets.precast.WS['サベッジブレード'] = sets.precast.WS

    sets.precast.ready_delay = {
        -- hands="ＮＫマノプラス+1",
        legs="グレティブリーチズ",
    }
    
    sets.precast.call_beast = {hands={ name="ＡＫグローブ+3", augments={'Enhances "Beast Affinity" effect',}},}

    sets.precast.reward = {
        ammo="ペットシータ",
        body="ＴＯジャック+3",
        legs={ name="ＡＫトラウザ+3", augments={'Enhances "Familiar" effect',}},
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precast.JA.Monster = sets.precast.ready_delay
    sets.precast.JA['よびだす'] = sets.precast.call_beast
    sets.precast.JA['しょうしゅう'] = sets.precast.call_beast
    sets.precast.JA['いたわる'] = sets.precast.reward
    sets.precast.JA['使い魔'] = {legs={ name="ＡＫトラウザ+3", augments={'Enhances "Familiar" effect',}},}
    sets.precast.JA['K.インスティンクト'] = {head={ name="ＡＫヘルム+3", augments={'Enhances "Killer Instinct" effect',}},}

    sets.midcast.Pet.TP = {
        hands="ＮＫマノプラス+1",
    }

    sets.midcast.Pet.Physical = {
        ammo="ボルスパタスラム",
        head={ name="テーオンシャポー", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        body={ name="テーオンタバード", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        hands={ name="テーオングローブ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        legs={ name="テーオンタイツ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
        feet={ name="テーオンブーツ", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Haste+5',}},
        neck="獣使いの首輪+2",
        waist="インカーネトサッシュ",
        left_ear="エンメルカルピアス",
        right_ear="昏黄の耳飾り",
        left_ring="ヴァラールリング+1",
        right_ring="パルーグリング",
        back={ name="パストラルマント", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20',}},
    }

    sets.midcast.Pet.PhysicalAcc = {
        ammo="ボルスパタスラム",
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="グレティガントレ",
        legs="タリアサラウィル+2",
        feet="グレティブーツ",
        neck="獣使いの首輪+2",
        waist="インカーネトサッシュ",
        left_ear="エンメルカルピアス",
        right_ear="昏黄の耳飾り",
        left_ring="タリアリング",
        right_ring="パルーグリング",
        back={ name="パストラルマント", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20',}},
    }

    sets.midcast.Pet.Magical = {
        ammo="ボルスパタスラム",
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="グレティガントレ",
        legs="タリアサラウィル+2",
        feet="グレティブーツ",
        neck="獣使いの首輪+2",
        waist="インカーネトサッシュ",
        left_ear="エンメルカルピアス",
        right_ear="昏黄の耳飾り",
        left_ring="タリアリング",
        right_ring="パルーグリング",
        back={ name="パストラルマント", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20',}},
    }

    sets.midcast.Pet.MagicalAcc = {
        ammo="ボルスパタスラム",
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="グレティガントレ",
        legs="タリアサラウィル+2",
        feet="グレティブーツ",
        neck="獣使いの首輪+2",
        waist="インカーネトサッシュ",
        left_ear="エンメルカルピアス",
        right_ear="昏黄の耳飾り",
        left_ring="タリアリング",
        right_ring="パルーグリング",
        back={ name="パストラルマント", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20',}},
    }

    sets.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="グレティガントレ",
        legs="グレティブリーチズ",
        feet="マリグナスブーツ",
        neck="ロリケートトルク+1",
        waist="キャリアーサッシュ",
        left_ear="エンメルカルピアス",
        right_ear="エアバニピアス",
        left_ring="守りの指輪",
        right_ring="パルーグリング",
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    engaged_normal = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="グレティブリーチズ",
        feet="マリグナスブーツ",
        neck="アヌートルク",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="シェリダピアス",
        right_ear="昏黄の耳飾り",
        left_ring="エポナリング",
        right_ring="ゲリリング",
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    engaged_normal.SubtleBlow = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="サクロブレスト",
        hands="マリグナスグローブ",
        legs="グレティブリーチズ",
        feet="マリグナスブーツ",
        neck="アヌートルク",
        waist="サリサフロイベルト",
        left_ear="シェリダピアス",
        right_ear="ディグニタリピアス",
        left_ring={name="シーリチリング+1", bag="Wardrobe 3"},
        right_ring={name="シーリチリング+1", bag="Wardrobe 4"},
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    engaged_dw = {
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

    engaged_dw.SubtleBlow = {
        ammo="オゲルミルオーブ+1",
        head="マリグナスシャポー",
        body="サクロブレスト",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck={ name="バーシチョーカー+1", augments={'Path: A',}},
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="エアバニピアス",
        left_ring={name="シーリチリング+1", bag="Wardrobe 3"},
        right_ring={name="シーリチリング+1", bag="Wardrobe 4"},
        back={ name="アルティオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    set_equip_by_sub_job(player.sub_job)
end

function job_precast(spell, action, spellMap, eventArgs)
end

function job_midcast(spell, action, spellMap, eventArgs)
    if spell.type == 'Monster' then
        local equip_set = get_pet_midcast_set(spell, spellMap)
        if not state.Buff["アンリーシュ"] then
            equip_set = set_combine(equip_set, sets.midcast.Pet.TP)
        end
        equip(equip_set)
        eventArgs.handled = true
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
end

function job_aftercast(spell, action, spellMap, eventArgs)
    if spell.type == 'Monster' then
        -- equip(get_pet_midcast_set(spell, spellMap))
        eventArgs.handled = true
    end
end

function job_post_aftercast(spell, action, spellMap, eventArgs)
    if spell.type == 'Monster' and state.Buff["アンリーシュ"] then
        -- gearswap.log(spell.name)
        local command = 'wait 4; input /pet ' .. windower.to_shift_jis(spell.name) .. ' <me>;'
        send_command(command)
    end
end

function get_custom_wsmode(spell, spellMap, default_wsmode)
end

function customize_idle_set(idleSet)
    local weapon = sets.weapons[state.Weapons.value]
    if player.equipment.sub == weapon.main.name then
        weapon.sub.priority = 1
        weapon.main.priority = 0
    end

    idleSet = set_combine(idleSet, weapon)
    return idleSet
end

function customize_melee_set(meleeSet)
    local weapon = sets.weapons[state.Weapons.value]
    if player.equipment.sub == weapon.main.name then
        weapon.sub.priority = 1
        weapon.main.priority = 0
    end
    meleeSet = set_combine(meleeSet, weapon)
    return meleeSet
end

function job_pet_status_change(newStatus, oldStatus, eventArgs)
    handle_equipping_gear(player.status)
end

function job_buff_change(buff, gain)
    if state.DisplayMode.value then update_job_states() end
end

function update_combat_form()
end

function job_update(cmdParams, eventArgs)
    if state.DisplayMode.value then update_job_states() end
end

function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'lockstyle' or cmdParams[1] == 'ls' then
        mystyle('獣', player.sub_job)
    end
end

function set_equip_by_sub_job(subJob)
    state.Weapons:reset()    
    if S{'忍', '踊'}:contains(subJob) then
        sets.weapons.Dolichenus = dolichenus_dw
        sets.weapons.Agwu = agwu_dw
        sets.engaged = engaged_dw
    else
        sets.weapons.Dolichenus = dolichenus
        sets.weapons.Agwu = agwu
        sets.engaged = engaged_normal
    end
    if state.DisplayMode.value then update_job_states() end
    send_command('wait 1; input /lockstyle on; wait 1; gs c ls;')
end

function job_sub_job_change(newSubjob, oldSubjob)
    set_equip_by_sub_job(newSubjob)
end

function job_get_spell_map(spell, default_spell_map)
    local new_spell_map = default_spell_map
    if spell.type == 'MonsterSkill' or spell.type == 'Monster'then
        new_spell_map = ready_spell_maps[spell.name]
    end

    return new_spell_map
end

function select_default_macro_book()
    set_macro_page(1, 7)
end

function mogmaster(job)
    send_command('input /si '..job..';')
end

function init_ready_spell_map()
    ready_spell_maps = {
        ['バブルカーテン'] = 'TP',
        ['シザーガード'] = 'TP',
        ['メタルボディ'] = 'TP',
        ['ベノムシャワー'] = 'Magical',
        ['メガシザース'] = 'Physical',

        ['バブルシャワー'] = 'Magical',
        ['ビッグシザー'] = 'Physical',

        ['カオティックアイ'] = 'MagicalAcc',
        ['ブラスター'] = 'MagicalAcc',
        ['チャージドホイスカー'] = 'Magical',
        ['怒髪'] = 'TP',

        ['パワーアタック'] = 'Physical',
        ['高周波フィールド'] = 'MagicalAcc',
        ['ライノアタック'] = 'Physical',
        ['ライノガード'] = 'TP',
        ['スポイル'] = 'MagicalAcc',
        ['ライノレッカー'] = 'Physical',

        ['フルイドスルー'] = 'Physical',
        ['フルイドスプレッド'] = 'Physical',
        ['消化'] = 'MagicalAcc',

        ['バックヒール'] = 'Physical',
        ['ジェタチュラ'] = 'MagicalAcc',
        ['チョークブレス'] = 'PhysicalAcc',
        ['ファンタッド'] = 'TP',
        ['フーフボレー'] = 'Physical',
        ['ニヒリティソング'] = 'MagicalAcc',

        ['ディスエンバウエル'] = 'PhysicalAcc',
        ['E.サルヴォ'] = 'PhysicalAcc',

        ['ヘッドバット'] = 'Physical',
        ['種まき'] = 'Physical',
        ['リーフダガー'] = 'Physical',
        ['スクリーム'] = 'MagicalAcc',

        ['ウィングスラップ'] = 'PhysicalAcc',
        ['ビークランジ'] = 'Physical',

        ['I.サッカー'] = 'MagicalAcc',
        ['グルームスプレー'] = 'Magical',

        ['ガイストウォール'] = 'MagicalAcc',
        ['ナビングノイズ'] = 'PhysicalAcc',
        ['ニンブルスナップ'] = 'Physical',
        ['サイクロテール'] = 'Physical',
        ['トクシックスピット'] = 'MagicalAcc',

        ['サイズテール'] = 'Physical',
        ['リッパーファング'] = 'Physical',
        ['噛みつきラッシュ'] = 'Physical',

        ['ダブルクロー'] = 'Physical',
        ['グラップル'] = 'Physical',
        ['スピニングトップ'] = 'Physical',
        ['F.ホールド'] = 'MagicalAcc',

        ['サンドブラスト'] = 'MagicalAcc',
        ['サンドピット'] = 'MagicalAcc',
        ['ベノムスプレー'] = 'MagicalAcc',
        ['M.バイト'] = 'Physical',

        ['ペッキングフラリー'] = 'Physical',

        ['ファウルウォーター'] = 'MagicalAcc',
        ['ペステレントプルーム'] = 'MagicalAcc',

        ['シックルスラッシュ'] = 'Physical',
        ['アシッドスプレー'] = 'MagicalAcc',
        ['スパイダーウェブ'] = 'MagicalAcc',

        ['ティックルテンドリル'] = 'Physical',
        ['スティンクボム'] = 'Magical',
        ['ネクターデルージュ'] = 'Magical',
        ['ネペンシックプランジ'] = 'MagicalAcc',

        ['サドンランジ'] = 'Physical',
        ['スパイラルスピン'] = 'Physical',
        ['ノイサムパウダー'] = 'MagicalAcc',

        ['咆哮'] = 'MagicalAcc',
        ['レイザーファング'] = 'Physical',
        ['クローサイクロン'] = 'Physical',
        ['クロススラッシュ'] = 'Physical',
        ['プレダトリグレア'] = 'MagicalAcc',

        ['カースドスフィア'] = 'Magical',
        ['毒液'] = 'Magical',
        ['サマーソルト'] = 'Physical',

        ['ピュルラントウーズ'] = 'MagicalAcc',
        ['コローシブウーズ'] = 'MagicalAcc',

        ['フロッグキック'] = 'Physical',
        ['スポア'] = 'MagicalAcc',
        ['マヨイタケ'] = 'MagicalAcc',
        ['シビレタケ'] = 'MagicalAcc',
        ['オドリタケ'] = 'MagicalAcc',
        ['サイレスガス'] = 'Magical',
        ['ダークスポア'] = 'Magical',

        ['威嚇'] = 'MagicalAcc',
        ['リコイルダイブ'] = 'Physical',
        ['ウォーターウォール'] = 'TP',

        ['頭突き'] = 'Physical',
        ['レイジ'] = 'TP',
        ['シープチャージ'] = 'Physical',
        ['シープソング'] = 'MagicalAcc',

        ['テイルブロー'] = 'Physical',
        ['ファイアボール'] = 'Magical',
        ['ブロックヘッド'] = 'Physical',
        ['ブレインクラッシュ'] = 'Physical',
        ['超低周波'] = 'MagicalAcc',
        ['体液分泌'] = 'TP',

        ['モルトプルメイジ'] = 'Magical',
        ['スワープフレンジー'] = 'PhysicalAcc',
        ['ペンタペック'] = 'Physical',

        ['スイープガウジ'] = 'PhysicalAcc',
        ['ゼラススノート'] = 'TP',

        ['センシラブレード'] = 'Physical',
        ['テグミナバフェット'] = 'Physical',

        ['フットキック'] = 'Physical',
        ['土煙'] = 'Magical',
        ['爪旋風脚'] = 'Physical',
        ['ワイルドカロット'] = 'TP',

        ['吸着'] = 'Physical',
        ['ドレインキッス'] = 'MagicalAcc',
        ['アシッドミスト'] = 'Magical',
        ['TP吸収キッス'] = 'MagicalAcc',
    } 
end