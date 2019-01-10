function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    is_immanence = false

    sets.magic_enhance_skill = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ', 'オーラ', 'ファランクス'}
    sets.storm = T{'熱波の陣', '吹雪の陣', '烈風の陣', '砂塵の陣', '疾雷の陣', '豪雨の陣', '極光の陣', '妖霧の陣', '熱波の陣II', '吹雪の陣II', '烈風の陣II', '砂塵の陣II', '疾雷の陣II', '豪雨の陣II', '極光の陣II', '妖霧の陣II'}
    sets.helix = T{'火門の計', '氷門の計', '風門の計', '土門の計', '雷門の計', '水門の計', '光門の計', '闇門の計', '火門の計II', '氷門の計II', '風門の計II', '土門の計II', '雷門の計II', '水門の計II', '光門の計II', '闇門の計II'}

    sets.cp = {back="アピトマント+1"}
    sets.obi = {waist="八輪の帯"}
    
    sets.precast.fc = {
        ammo="インカントストーン",
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+6',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        neck="ボルトサージトルク",
        waist="チャネラーストーン",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    sets.precast.cure_fc = {
        ammo="インカントストーン",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="ロリケートトルク+1",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="メンデカントピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    sets.precast.magic_skill_chain = {
        main="テラスタッフ",
        sub="メンシストラップ+1",
        ammo="インカントストーン",
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="サイクロスラッパ", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    sets.midcast.cure = {
        ammo="インカントストーン",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="ペダゴギパンツ", augments={'Enhances "Tabula Rasa" effect',}},
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="ノデンズゴルゲット",
        waist="ピュシアサッシュ",
        left_ear="ノーヴィアピアス",
        right_ear="メンデカントピアス",
        left_ring="守りの指輪",
        right_ring="レベッチェリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    sets.midcast.magic_mb = {
        main={ name="アカデモス", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+6',}},
        hands={ name="アマリクゲージ", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        legs="マルクィトルーズ+2",
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="チャネラーストーン",
        left_ear="バーカロルピアス",
        right_ear="電界の耳",
        left_ring="ジャリリング",
        right_ring="マルクィリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
    }
    
    sets.midcast.helix_mb = {
        main={ name="アカデモス", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body="マルクィサイオ+2",
        hands={ name="アマリクゲージ", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        legs="マルクィトルーズ+2",
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="チャネラーストーン",
        left_ear="怯懦の耳",
        right_ear="電界の耳",
        left_ring="ジャリリング",
        right_ring="マルクィリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }

    sets.midcast.magic_acc = {
        main={ name="アカデモス", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="エンキストラップ",
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12','"Mag.Atk.Bns."+6',}},
        hands="マルクィカフス+1",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Mag. Acc.+14','"Mag.Atk.Bns."+13',}},
        feet="ジャリピガッシュ+2",
        neck="インカンタートルク",
        waist="チャネラーストーン",
        left_ear="バーカロルピアス",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    -- sets.midcast.aspir
    
    sets.midcast.enhance_duration = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="玄冥盾",
        ammo="インカントストーン",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    sets.midcast.rejen = set_combine(sets.midcast.enhance_duration, {head="ＡＢボネット+1",})
    sets.midcast.skin = set_combine(sets.midcast.enhance_duration, {neck='ノデンズゴルゲット', left_ear='アースクライピアス',})
    
    sets.midcast.enhance_skill = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="玄冥盾",
        ammo="インカントストーン",
        head="ＡＢボネット+1",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="エテオレートピアス",
        right_ear="オーグメントピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back="フィフォレケープ+1",
    }
    
    sets.aftercast.idle = {
        main="テラスタッフ",
        sub="メンシストラップ+1",
        ammo="ホミリアリ",
        head="ＡＣボード+2",
        body={ name="ＰＤガウン+1", augments={'Enhances "Enlightenment" effect',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','"Regen"+2','HP+45',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Regen"+2','HP+32',}},
        neck="ロリケートトルク+1",
        waist="スリポーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
    }
    
    -- マクロのブック, セット変更
    send_command('input /macro book 4; wait 0.5; input /macro set 10')
end

function precast(spell)
    local set_equip = nil
    
    if spell.type == 'WhiteMagic' then
        if string.find(spell.name, 'ケアル') then
            set_equip = sets.precast.cure_fc
        else
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'BlackMagic' then
        if is_immanence then
            windower.add_to_chat(122,'震天pre')
            set_equip = sets.precast.magic_skill_chain
        else
            set_equip = sets.precast.fc
        end
    elseif spell.type == 'JobAbility' then
        if spell.name == '連環計' then
            set_equip = {legs={ name="ペダゴギパンツ", augments={'Enhances "Tabula Rasa" effect',}},}
        elseif spell.name == '大悟徹底' then
            set_equip = {body={ name="ＰＤガウン+1", augments={'Enhances "Enlightenment" effect',}},}
        elseif spell.name == '震天動地の章' then
            is_immanence = true
        end
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    end
    
    if set_equip ~= nill then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
    
    if string.find(spell.name, 'ケアル') then
        set_equip = sets.midcast.cure
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = sets.midcast.skin
        elseif string.find(spell.name, 'リジェネ') then
            set_equip = sets.midcast.rejen
        elseif sets.magic_enhance_skill:contains(spell.name) then
            set_equip = sets.midcast.enhance_skill
        else
            set_equip = sets.midcast.enhance_duration
        end
    elseif spell.skill == '弱体魔法' or spell.skill == '暗黒魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '精霊魔法' then
        if is_immanence then
            if spell.name == 'サンダーV' then -- オーメン課題 MBなし15,000ダメージ用
                windower.add_to_chat(122,'サンダーV')
                set_equip = sets.midcast.magic_mb
            else
                windower.add_to_chat(122,'震天mid')
                set_equip = sets.precast.magic_skill_chain
            end
            is_immanence = false
        else
            if sets.helix:contains(spell.name) then
                set_equip = sets.midcast.helix_mb
            elseif check_storm() then
                set_equip = set_combine(sets.midcast.magic_mb, sets.obi)
            else
                set_equip = sets.midcast.magic_mb
            end
        end
    end
    
    if buffactive['令狸執鼠の章'] then
        set_equip = set_combine(set_equip, {hands='ＡＢブレーサー+1',})
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
            windower.add_to_chat(122,'--- キャパポ装備 OFF ---')
        else
            is_cp = true
            equip(sets.cp)
            disable('back')
            windower.add_to_chat(122,'+++ キャパポ装備 ON +++')
        end
    elseif command == '1p' then
        send_command('input /macro book 4; wait 0.5; input /macro set 10')
    elseif command == '2p' then
        send_command('input /macro book 5; wait 0.5; input /macro set 10')
    end
end

function check_storm()
    for i, strom_name in pairs(sets.storm) do
        if buffactive[strom_name] then
            return true
        end
    end
    return false
end