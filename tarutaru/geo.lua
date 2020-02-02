function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    

    magic_ba = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ'}
    magic_geo = T{'ジオリジェネ', 'ジオポイズン', 'ジオリフレシュ', 'ジオヘイスト', 'ジオスト', 'ジオデック', 'ジオバイト', 'ジオアジル', 'ジオイン', 'ジオマイン', 'ジオカリス',
            'ジオフューリー', 'ジオバリア', 'ジオアキュメン', 'ジオフェンド', 'ジオプレサイス', 'ジオヴォイダンス', 'ジオフォーカス', 'ジオアトゥーン', 'ジオウィルト',
            'ジオフレイル', 'ジオフェイド', 'ジオマレーズ', 'ジオスリップ', 'ジオトーパー', 'ジオヴェックス', 'ジオランゴール', 'ジオスロウ', 'ジオパライズ', 'ジオグラビデ'}
    aspir = T{"アスピル", "アスピルII", "アスピルIII"}

    sets.precast.fc = {
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        body="シャンゴローブ",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="マーリンクラッコー", augments={'CHR+4','Pet: INT+7','"Fast Cast"+7','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.precast.fc_impact = {
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        body="トワイライトプリス",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }

    sets.midcast.geo_skill = {
        main="イドリス",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="ＡＺフード+1",
        body="ＡＺコート+1",
        hands="ＧＯミテーヌ+3",
        legs={ name="ＢＡパンツ+1", augments={'Enhances "Mending Halation" effect',}},
        feet="ＡＺゲートル+1",
        neck="インカンタートルク",
        waist="イーサベルト",
        left_ear="エテオレートピアス",
        right_ear="ルガルバンダピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="龍脈の外套", augments={'Geomancy Skill +10','Indi. eff. dur. +19','Pet: Damage taken -2%','Damage taken-3%',}},
    }
    
    sets.midcast.cure = {
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ヴリコダラジュポン",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ギーヴトラウザ",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="ロリケートトルク+1",
        waist="ニヌルタサッシュ",
        left_ear="メンデカントピアス",
        right_ear="ルガルバンダピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }
    
    sets.midcast.enhance_duration = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +6','VIT+6','"Mag.Atk.Bns."+19','DMG:+13',}},
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        waist="エンブラサッシュ",
        
    }
    
    sets.midcast.enhance_skill = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +6','VIT+6','"Mag.Atk.Bns."+19','DMG:+13',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="オーグメントピアス",
        right_ear="アンドアーピアス",
        left_ring="スティキニリング+1",
        back="フィフォレケープ+1",
    }

    sets.midcast.refresh = {
        head={ name="ＡＭコイフ+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        waist="ギシドゥバサッシュ",
    }

    sets.midcast.magic_acc = {
        main="イドリス",
        sub="アムラピシールド",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head={ name="マーリンフード", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+10',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Mag. crit. hit dmg. +1%','INT+5','Mag. Acc.+13','"Mag.Atk.Bns."+14',}},
        hands="ＧＯミテーヌ+3",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+5%','INT+5','Mag. Acc.+14',}},
        feet={ name="ＢＡサンダル+3", augments={'Enhances "Radial Arcana" effect',}},
        neck="エーラペンダント",
        waist="ルミネートサッシュ",
        left_ear="王将の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.midcast.magic_atk = {
        main="イドリス",
        sub="アムラピシールド",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="エアハット+1",
        body="エアウプランド+1",
        hands="ＧＯミテーヌ+3",
        legs="エアスロップス+1",
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="フレキリング",
        right_ring="女王の指輪+1",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.midcast.aspir = {
        main="イドリス",
        sub="アムラピシールド",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="妖蟲の髪飾り+1",
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Mag. crit. hit dmg. +1%','INT+5','Mag. Acc.+13','"Mag.Atk.Bns."+14',}},
        hands="ＧＯミテーヌ+3",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+5%','INT+5','Mag. Acc.+14',}},
        feet={ name="ＢＡサンダル+3", augments={'Enhances "Radial Arcana" effect',}},
        neck="エーラペンダント",
        waist="風鳥の帯",
        left_ear="王将の耳飾り",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="エバネセンスリング",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }

    sets.midcast.impact = {
        main="イドリス",
        sub="アムラピシールド",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        body="トワイライトプリス",
        hands="ＧＯミテーヌ+3",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+5%','INT+5','Mag. Acc.+14',}},
        feet="ジャリピガッシュ+2",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="王将の耳飾り",
        right_ear="バーカロルピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }

    sets.aftercast.idle = {
        main="イドリス",
        sub="玄冥盾",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="ＡＺフード+1",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        feet={ name="ＢＡサンダル+3", augments={'Enhances "Radial Arcana" effect',}},
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="エテオレートピアス",
        right_ear="ルガルバンダピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }
    
    sets.aftercast.idle_luopan = {
        main="イドリス",
        sub="玄冥盾",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="ＡＺフード+1",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        feet={ name="ＢＡサンダル+3", augments={'Enhances "Radial Arcana" effect',}},
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="エテオレートピアス",
        right_ear="ルガルバンダピアス",
        left_ring="ＶＣリング+1",
        right_ring="守りの指輪",
        back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }

    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 2; wait 0.5; input /macro set 10; wait 0.5; input /si geo;')

end

function pretarget(spell)
    local set_equip = nil

    if spell.name == 'インパクト' then
        set_equip = {body="トワイライトプリス",}
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
        set_equip = sets.precast.fc
    elseif spell.type == 'BlackMagic' then
        if spell.name == 'インパクト' then
            set_equip = sets.precast.fc_impact
        else 
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'JobAbility' then
        if spell.name == 'フルサークル' then
            set_equip = {head="ＡＺフード+1",}
        elseif spell.name == 'ライフサイクル' then
            set_equip = {body="ＧＯチュニック+1", back = "ナントセルタケープ",}
        elseif spell.name == 'レイディアルアルカナ' then
            set_equip = {feet="ＢＡサンダル+3",}
        elseif spell.name == 'メンドハレイション' then
            set_equip = {legs="ＢＡパンツ+1",}
        elseif spell.name == 'ボルスター' then
            set_equip = {body="ＢＡチュニック+1",}
        end
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
            set_equip = set_combine(sets.midcast.enhance_duration, {neck='ストーンゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
        elseif spell.name == 'リフレシュ' then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.refresh)
        elseif magic_ba:contains(spell.name) then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.enhance_skill)
        else
            set_equip = sets.midcast.enhance_duration
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif  spell.skill == '暗黒魔法' then
        if aspir:contains(spell.name) then
            set_equip = sets.midcast.aspir
        else
            set_equip = sets.midcast.magic_acc
        end
    elseif spell.skill == '精霊魔法' then
        if spell.name == 'インパクト' then
            set_equip = sets.midcast.impact
        else
            set_equip = sets.midcast.magic_atk
        end
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
        set_equip = sets.aftercast.idle_luopan
    else
        if magic_geo:contains(spell.name) then
            if spell.interrupted == true then
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
    
    if new == 'Idle' then
        set_equip = sets.aftercast.idle
    elseif new == 'Engaged' then
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'aspir' then
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