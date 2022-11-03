include('myexport')
function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    is_cp = false

    magic_ba = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ'}
    magic_geo = T{'ジオリジェネ', 'ジオポイズン', 'ジオリフレシュ', 'ジオヘイスト', 'ジオスト', 'ジオデック', 'ジオバイト', 'ジオアジル', 'ジオイン', 'ジオマイン', 'ジオカリス',
            'ジオフューリー', 'ジオバリア', 'ジオアキュメン', 'ジオフェンド', 'ジオプレサイス', 'ジオヴォイダンス', 'ジオフォーカス', 'ジオアトゥーン', 'ジオウィルト',
            'ジオフレイル', 'ジオフェイド', 'ジオマレーズ', 'ジオスリップ', 'ジオトーパー', 'ジオヴェックス', 'ジオランゴール', 'ジオスロウ', 'ジオパライズ', 'ジオグラビデ'}
    sets.aspir = T{"アスピル", "アスピルII", "アスピルIII"}

    sets.cp = {back="アピトマント+1"}
    
    sets.th = {
        head="白ララブキャップ+1",
        legs={ name="マーリンシャルワ", augments={'CHR+9','MND+2','"Treasure Hunter"+2',}},
        waist="チャークベルト",
    }
    
    sets.precast.fc = {
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＧＯパンツ+3",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="龍脈の外套", augments={'Geomancy Skill +8','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
    }
    
    sets.precast.cure_fc = {
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＧＯパンツ+3",
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        waist="エンブラサッシュ",
        left_ear="ロケイシャスピアス",
        right_ear="メンデカントピアス",
        right_ring="プロリクスリング",
        back={ name="龍脈の外套", augments={'Geomancy Skill +8','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
    }
    
    sets.midcast.geo_skill = {
        main="イドリス",
        head="ＡＺフード+2",
        body="ＡＺコート+1",
        hands="ＧＯミテーヌ+3",
        legs={ name="ＢＡパンツ+3", augments={'Enhances "Mending Halation" effect',}},
        feet="ＡＺゲートル+2",
        neck="バグアチャーム+2",
        left_ring="守りの指輪",
        right_ring="ゼラチナスリング+1",
        back={ name="龍脈の外套", augments={'Geomancy Skill +8','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
    }
    
    sets.midcast.cure = {
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ヴリコダラジュポン",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="ヴァニヤクロッグ", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
        right_ear="メンデカントピアス",
        back="ソレムニティケープ",
    }
    
    sets.midcast.enhance_duration = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        waist="エンブラサッシュ",
    }
    
    sets.midcast.enhance_skill = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="アムラピシールド",
        head="ビファウルクラウン",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="ミミルピアス",
        right_ear="アンドアーピアス",
        left_ring={name="スティキニリング+1", bag="Wardrobe 2"},
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back="フィフォレケープ+1",
    }

    sets.midcast.magic_acc = {
        main="マクセンチアス",
        sub="アムラピシールド",
        head="ＧＯガレーロ+3",
        body="ＧＯチュニック+3",
        hands="ＧＯミテーヌ+3",
        legs="ＧＯパンツ+3",
        feet={ name="ＢＡサンダル+3", augments={'Enhances "Radial Arcana" effect',}},
        neck="バグアチャーム+2",
        waist="サクロコード",
        left_ear="マリグナスピアス",
        right_ear="王将の耳飾り",
        left_ring="キシャールリング",
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }
    
    sets.midcast.aspir = {
        main="マクセンチアス",
        sub="アムラピシールド",
        head="妖蟲の髪飾り+1",
        body="ＧＯチュニック+3",
        hands="ＧＯミテーヌ+3",
        legs="ＧＯパンツ+3",
        feet="ＧＯサンダル+3",
        neck="エーラペンダント",
        waist="風鳥の帯",
        left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="アルコンリング",
        right_ring="エバネセンスリング",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }

    sets.midcast.magic_atk = {
        main="パルーグハンマー",
        sub="アムラピシールド",
        head="エアハット+1",
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+8%','INT+15','Mag. Acc.+5','"Mag.Atk.Bns."+3',}},
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="サクロコード",
        left_ear="マリグナスピアス",
        right_ear="バーカロルピアス",
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }
    
    sets.aftercast.idle = {
        main="イドリス",
        sub="玄冥盾",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="ＡＺフード+2",
        body="シャマシュローブ",
        hands={ name="ＢＡミテーヌ+3", augments={'Enhances "Curative Recantation" effect',}},
        legs={ name="ニャメフランチャ", augments={'Path: B',}},
        feet="ＧＯサンダル+3",
        neck="ロリケートトルク+1",
        -- neck="バグアチャーム+2",
        waist="キャリアーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ルガルバンダピアス",
        left_ring="守りの指輪",
        -- right_ring="ゼラチナスリング+1",
        right_ring={name="スティキニリング+1", bag="Wardrobe 3"},
        back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }
    
    sets.aftercast.idle_luopan = {
        main="イドリス",
        sub="玄冥盾",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="ＡＺフード+2",
        body="シャマシュローブ",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -3%',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        feet={ name="ＢＡサンダル+3", augments={'Enhances "Radial Arcana" effect',}},
        -- neck="ロリケートトルク+1",
        neck="バグアチャーム+2",
        -- waist="イーサベルト",
        waist="キャリアーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ルガルバンダピアス",
        left_ring="守りの指輪",
        right_ring="ゼラチナスリング+1",
        back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 3; wait 0.5; input /macro set 10; wait 0.5; input /si geo; wait 0.5; input /lockstyleset 5 echo;')

end

function pretarget(spell)
    local set_equip = nil

    if spell.name == 'ディスペガ' then
        set_equip = {main="デイブレイクワンド"}
    end

    if set_equip then
        equip(set_equip)
    end
end

function precast(spell)
    local set_equip = nil
    -- windower.add_to_chat(123, spell.name)
    
    if spell.type == 'Geomancy' then
        set_equip = sets.precast.fc
    elseif spell.type == 'WhiteMagic' then
        if string.find(spell.name, 'ケアル') then
            set_equip = sets.precast.cure_fc
        else
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'BlackMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'JobAbility' then
        if spell.name == 'フルサークル' then
            set_equip = {head="ＡＺフード+2",}
        elseif spell.name == 'ライフサイクル' then
            set_equip = {body="ＧＯチュニック+3", back = "ナントセルタケープ",}
        elseif spell.name == 'レイディアルアルカナ' then
            set_equip = {head={ name="ＢＡガレーロ+3", augments={'Enhances "Primeval Zeal" effect',}}, feet="ＢＡサンダル+3",}
        elseif spell.name == 'メンドハレイション' then
            set_equip = {head={ name="ＢＡガレーロ+3", augments={'Enhances "Primeval Zeal" effect',}}, legs="ＢＡパンツ+3",}
        elseif spell.name == 'ボルスター' then
            set_equip = {body="ＢＡチュニック+3",}
        end
    end
    
    if spell.name == 'ディスペガ' then
        set_equip = set_combine(set_equip, {main="デイブレイクワンド"})
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
    
    if spell.skill == '風水魔法' then
        set_equip = sets.midcast.geo_skill
        if buffactive['エントラスト'] then
            set_equip = set_combine(set_equip, {main={ name="ソールスティス", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},})
        end
    elseif string.find(spell.name, 'ケアル') then
        set_equip = sets.midcast.cure
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = set_combine(sets.midcast.enhance_duration, {legs="シェダルサラウィル", neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
        elseif magic_ba:contains(spell.name) then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.enhance_skill, {legs="シェダルサラウィル",})
        else
            set_equip = sets.midcast.enhance_duration
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '暗黒魔法' then
        if sets.aspir:contains(spell.name) then
            set_equip = sets.midcast.aspir
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '精霊魔法' then
        set_equip = sets.midcast.magic_atk
    end
    
    if spell.name == 'ディスペガ' then
        set_equip = set_combine(set_equip, {main="デイブレイクワンド"})
    end

    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    -- if player.status == 'Engaged' then
    --     set_equip = sets.aftercast.idle
    -- else
    --     set_equip = sets.aftercast.idle
    -- end

    if pet.name then
        if spell.name == 'フルサークル' or spell.name == 'レイディアルアルカナ' or spell.name == 'メンドハレイション' then
            send_command('wait 4; gs c idle')
        else
            set_equip = sets.aftercast.idle_luopan
        end
    else
        if magic_geo:contains(spell.name) then
            if spell.interrupted then
                set_equip = sets.aftercast.idle
            else
                set_equip = sets.aftercast.idle_luopan
            end
        else
            set_equip = sets.aftercast.idle
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function status_change(new, old)
    local set_equip = nil
    
    if pet.name then
        set_equip = sets.aftercast.idle_luopan
    else
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'idle' then
        if pet.name then
            windower.add_to_chat(123, '---> 羅盤維持装備')
            equip(sets.aftercast.idle_luopan)
        else
            windower.add_to_chat(123, '---> リフレ, カット装備')
            equip(sets.aftercast.idle)
        end
    elseif command == 'aspir' then
        local recasts = windower.ffxi.get_spell_recasts()
        local recast_time_a3 = recasts[881]/60
        local recast_time_a2 = recasts[248]/60
        local recast_time_a = recasts[247]/60

        if recast_time_a3 == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピルIII')..' <stnpc>')
        elseif recast_time_a2 == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピルII')..' <stnpc>')
        elseif recast_time_a == 0 then
            send_command('input /magic '..windower.to_shift_jis('アスピル')..' <stnpc>')
        else
            windower.add_to_chat(30, 'アスピル リキャスト---> III: %.1fs, II: %.1fs, I: %.1fs':format(recast_time_a3, recast_time_a2, recast_time_a))
        end
    end
end