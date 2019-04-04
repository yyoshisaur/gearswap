function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    is_cp = false

    sets.ba = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ'}

    sets.cp = {back="アピトマント+1"}
    
    sets.precast.fc = {
        main={ name="ソールスティス", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＧＯパンツ+2",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        neck="ボルトサージトルク",
        waist="チャネラーストーン",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="龍脈の外套", augments={'Geomancy Skill +8','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
    }
    
    sets.precast.cure_fc = {
        main={ name="ソールスティス", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        sub="ソーズシールド",
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＧＯパンツ+2",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        waist="チャネラーストーン",
        left_ear="ロケイシャスピアス",
        right_ear="メンデカントピアス",
        right_ring="プロリクスリング",
        back={ name="龍脈の外套", augments={'Geomancy Skill +8','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
    }
    
    sets.midcast.geo_skill = {
        main={ name="ソールスティス", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        head="ＡＺフード+1",
        body={ name="ＢＡチュニック+1", augments={'Enhances "Bolster" effect',}},
        hands="ＧＯミテーヌ+2",
        legs={ name="ＢＡパンツ+1", augments={'Enhances "Mending Halation" effect',}},
        feet="ＡＺゲートル+1",
        neck="インカンタートルク",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="龍脈の外套", augments={'Geomancy Skill +8','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
    }
    
    sets.midcast.cure = {
        main="タマシチ",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        right_ear="メンデカントピアス",
    }
    
    sets.midcast.enhance_duration = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        waist="ニヌルタサッシュ",
    }
    
    sets.midcast.enhance_skill = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="アムラピシールド",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="オーグメントピアス",
        right_ear="アンドアーピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back="フィフォレケープ+1",
    }

    sets.midcast.magic_acc = {
        sub="アムラピシールド",
        head="ＧＯガレーロ+2",
        body="ＧＯチュニック+2",
        hands="ＧＯミテーヌ+2",
        legs="ＧＯパンツ+2",
        feet="ＧＯサンダル+2",
        neck="インカンタートルク",
        waist="エスカンストーン",
        left_ear="バーカロルピアス",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
    }
    
    sets.midcast.magic_atk = {
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+6',}},
        hands="アマリクゲージ",
        legs="マルクィトルーズ+2",
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="チャネラーストーン",
        left_ear="バーカロルピアス",
        right_ear="電界の耳",
        left_ring="ジャリリング",
        right_ring="マルクィリング",
        -- back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }
    
    sets.aftercast.idle = {
        main={ name="ソールスティス", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
        sub="玄冥盾",
        range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head={ name="テルキネキャップ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        hands="ＧＯミテーヌ+2",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','Pet: "Regen"+3','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="スリポーサッシュ",
        left_ear="エテオレートピアス",
        -- right_ear="ハンドラーピアス+1",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        -- right_ring="ゼラチナスリング+1",
        right_ring="ピュリティーリング",
        back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
    }
    
    -- マクロのブック, セット変更
    send_command('input /macro book 3; wait 0.5; input /macro set 10')
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
            set_equip = {head="ＡＺフード+1",}
        elseif spell.name == 'ライフサイクル' then
            set_equip = {body="ＧＯチュニック+2", back = "ナントセルタケープ",}
        elseif spell.name == 'レイディアルアルカナ' then
            set_equip = {feet="ＢＡサンダル+1",}
        elseif spell.name == 'メンドハレイション' then
            set_equip = {legs="ＢＡパンツ+1",}
        elseif spell.name == 'ボルスター' then
            set_equip = {body="ＢＡチュニック+1",}
        end
    end
    
    if set_equip ~= nill then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
    
    if spell.skill == '風水魔法' then
        set_equip = sets.midcast.geo_skill
    elseif string.find(spell.name, 'ケアル') then
        set_equip = sets.midcast.cure
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = set_combine(sets.midcast.enhance_duration, {neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
        elseif sets.ba:contains(spell.name) then
            set_equip = set_combine(sets.midcast.enhance_duration, sets.midcast.enhance_skill)
        else
            set_equip = sets.midcast.enhance_duration
        end
    elseif spell.skill == '弱体魔法' or spell.skill == '暗黒魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '精霊魔法' then
        set_equip = sets.midcast.magic_atk
    end
    
    if set_equip ~= nill then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        set_equip = sets.aftercast.idle
    else
        set_equip = sets.aftercast.idle
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
        set_equip = sets.aftercast.idle
    end
    
    if set_equip ~= nil then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'cp' then
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
    end
end