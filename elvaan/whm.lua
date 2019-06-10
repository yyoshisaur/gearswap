-- hb buff <me> Firestorm
-- hb cancelbuff 
-- Windstorm
-- Barwatera

function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    is_cp = false
    is_doom = false
    
    sets.sa_na = T{'ポイゾナ', 'パラナ', 'ブライナ', 'サイレナ', 'カーズナ', 'ウィルナ', 'ストナ', 'イレース'}
    sets.addi = T{'アディバイト', 'アディマイン', 'アディカリス', 'アディアジル', 'アディスト', 'アディイン', 'アディデック'}
    sets.ba = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ','バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ'}
    
    sets.cp = {back="アピトマント+1"}

    -- 女神の愛撫
    sets.caress = {
        hands="ＥＢミトン+1",
        back={ name="メンディングケープ", augments={'Healing magic skill +9','Enha.mag. skill +9',}},
    }
    
    sets.precast.fc = {
        ammo="インカントストーン",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="インヤガジュバ+2",
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="アヤモコッシャレ+2",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="クレリクトルク",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.precast.fc_cure = {
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="ＥＢパンタロン+1",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        right_ring="プロリクスリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.na = {
        ammo="インカントストーン",
        head="ＥＢキャップ+1",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="ＥＢパンタロン+1",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="クレリクトルク",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="プロリクスリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.doom = {
        head="ＥＢキャップ+1",
        body="ＥＢブリオー+1",
        hands="ＴＥミトン+2",
        legs="ＴＥパンタロン+2",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="デビリスメダル",
        waist="ビショップサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="ハオマリング",
        right_ring="ハオマリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
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
    
    sets.midcast.cure = {
        main={ name="クェラーロッド", augments={'MP+80','"Cure" potency +15%','Enmity-5',}},
        sub="玄冥盾",
        ammo="インカントストーン",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body="ＥＢブリオー+1",
        hands="ＴＥミトン+2",
        legs="ＥＢパンタロン+1",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="クレリクトルク",
        waist="ニヌルタサッシュ",
        left_ear="朝露の耳飾",
        right_ear="ノーヴィアピアス",
        left_ring="守りの指輪",
        right_ring="レベッチェリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.protect = set_combine(sets.midcast.enhance_duration, {feet={ name="ＰＩダックビル+1", augments={'Enhances "Protectra V" effect',}},right_ear="ブラキュラピアス",})
    sets.midcast.shell = set_combine(sets.midcast.enhance_duration, {legs={ name="ＰＩパンタロン+3", augments={'Enhances "Shellra V" effect',}},right_ear="ブラキュラピアス",})
    sets.midcast.auspice = set_combine(sets.midcast.enhance_duration, {feet="ＥＢダックビル+1",})
    sets.midcast.rejen = set_combine(sets.midcast.enhance_duration, {main="ボレラブンガ", head="インヤガティアラ+2", body="ＰＩブリオー+3", hands="ＥＢミトン+1", legs="ＴＥパンタロン+2",})
    sets.midcast.skin = set_combine(sets.midcast.enhance_duration, {neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
    sets.midcast.aquaveil = set_combine(sets.midcast.enhance_duration, {main="バドースロッド",})
    
    sets.midcast.ba = {
        main="ベニフィクス",
        sub="アムラピシールド",
        ammo="インカントストーン",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body="ＥＢブリオー+1",
        hands="ダイナスティミトン",
        legs={ name="ＰＩパンタロン+3", augments={'Enhances "Shellra V" effect',}},
        feet="ＴＥダックビル+2",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="エテオレートピアス",
        right_ear="オーグメントピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.addi = {
        main={ name="ガーダ", augments={'Enh. Mag. eff. dur. +5','VIT+3','Mag. Acc.+6',}},
        sub="アムラピシールド",
        ammo="インカントストーン",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands="ダイナスティミトン",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＴＥダックビル+2",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="アンドアーピアス",
        right_ear="オーグメントピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="メンディングケープ", augments={'Healing magic skill +9','Enha.mag. skill +9',}},
    }
    
    sets.midcast.magic_acc = {
        main="マクセンチアス",
        sub="アムラピシールド",
        ammo="ペムフレドタスラム",
        head="ＴＥキャップ+2",
        body="ＴＥブリオー+2",
        hands="ＴＥミトン+2",
        legs="ＴＥパンタロン+2",
        feet="ＴＥダックビル+2",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="グアチピアス",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.aftercast.idle = {
        main="ボレラブンガ",
        sub="玄冥盾",
        ammo="ホミリアリ",
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body="ＰＩブリオー+3",
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="インヤガシャルワ+2",
        feet="インヤガクラッコ+2",
        neck="ロリケートトルク+1",
        waist="スリポーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="アラウナスケープ", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.aftercast.melee = {
        main="マクセンチアス",
        sub="カジャロッド",
        ammo="アマークラスター",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="ロリケートトルク+1",
        waist="グルンフェルロープ",
        left_ear="セサンスピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="アヤモリング",
        back={ name="アラウナスケープ", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 2; wait 0.5; input /macro set 10')
    
end

function precast(spell)
    local set_equip = nil
    
    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)
    -- windower.add_to_chat(123, spell.skill)
    
    if string.find(spell.name, 'ケアル') then
        set_equip = sets.precast.fc_cure
    elseif sets.sa_na:contains(spell.name) then
        if spell.name == 'カーズナ' and is_doom == true then
            set_equip = sets.precast.doom
            is_doom = false
        else
            if buffactive['女神の愛撫'] then
                set_equip = set_combine(sets.precast.na, sets.caress)
            else
                set_equip = sets.precast.na
            end
        end
    elseif spell.skill == '回復魔法' then
        set_equip = set_combine(sets.precast.fc, {legs="ＥＢパンタロン+1",})
    elseif spell.skill == '強化魔法' then
        set_equip = set_combine(sets.precast.fc, {waist="ジーゲルサッシュ"})
    elseif string.find(spell.type, 'Magic') then
        set_equip = sets.precast.fc
    elseif spell.name == 'デヴォーション' then
        set_equip = {head="ＰＩキャップ+1"}
    elseif spell.name == '女神の祝福' then
        set_equip = {body="ＰＩブリオー+3"}
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
    
    if string.find(spell.name, 'ケアルガ') then
        if buffactive['極光の陣'] then
            set_equip = set_combine(sets.midcast.cure, {body="ＴＥブリオー+2", waist="光輪の帯"})
        else
            set_equip = set_combine(sets.midcast.cure, {body="ＴＥブリオー+2",})
        end
    elseif string.find(spell.name, 'ケアル') or spell.name == 'フルケア' then
        if buffactive['極光の陣'] then
            set_equip = set_combine(sets.midcast.cure, {waist="光輪の帯"})
        else
            set_equip = sets.midcast.cure
        end
    elseif string.find(spell.name, 'プロテ') then
        set_equip = sets.midcast.protect
    elseif string.find(spell.name, 'シェル') then
        set_equip = sets.midcast.shell
    elseif string.find(spell.name, 'リジェネ') then
        set_equip = sets.midcast.rejen
    elseif spell.name == 'オースピス' then
        set_equip = sets.midcast.auspice
    elseif spell.name == 'ストンスキン' then
        set_equip= sets.midcast.skin
    elseif spell.name == 'アクアベール' then
        set_equip = sets.midcast.aquaveil
    elseif sets.addi:contains(spell.name) then
        set_equip = sets.midcast.addi
    elseif sets.ba:contains(spell.name) then
        set_equip = sets.midcast.ba
    elseif spell.skill == '強化魔法' and spell.name ~= 'イレース' then
        set_equip = sets.midcast.enhance_duration
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '神聖魔法' then
        if spell.name == 'リポーズ' then
            set_equip = sets.midcast.magic_acc
        else
            set_equip = sets.midcast.magic_acc
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
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
        set_equip = sets.aftercast.melee
    elseif new == 'Engaged' then
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
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
    elseif command == 'doom' then
        if is_doom then
            is_doom =false
            windower.add_to_chat(122,'--- カーズナ+装備 OFF ---')
        else
            is_doom = true
            windower.add_to_chat(122,'+++ カーズナ+装備 ON +++')
        end
    end
end