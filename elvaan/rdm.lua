include('weather_obi')
function get_sets()
    set_language('japanese')
    
    init_elemental_obi()
    set_elemental_obi("光輪の帯")

    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    sets.magic_enhance_skill = T{'バストンラ', 'バウォタラ', 'バエアロラ', 'バファイラ', 'バブリザラ', 'バサンダラ',
                                'バストン', 'バウォタ', 'バエアロ', 'バファイ', 'バブリザ', 'バサンダ', 'オーラ',
                                'ファランクス', 'ファランクスII', 'ストライ', 'ストライII',
                                'エンサンダー', 'エンストーン', 'エンエアロ', 'エンブリザド', 'エンファイア', 'エンウォータ',
                                'エンサンダーII', 'エンストーンII', 'エンエアロII', 'エンブリザドII', 'エンファイアII', 'エンウォータII',}
    sets.gain = T{'ゲインバイト', 'ゲインマイン', 'ゲインカリス', 'ゲインアジル', 'ゲインスト', 'ゲインイン', 'ゲインデック',}
    sets.magic_mnd = T{}
    sets.magic_int = T{}

    sets.precast.fc = {
        head={ name="マーリンフード", augments={'"Fast Cast"+7','INT+8','Mag. Acc.+15',}},
        body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" spellcasting time -5%',}},
        legs="アヤモコッシャレ+2",
        feet={ name="マーリンクラッコー", augments={'Mag. Acc.+10 "Mag.Atk.Bns."+10','"Fast Cast"+7',}},
    }

    sets.precast.ws.magic = {
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="ジャリカフス+1",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+1%','INT+10','"Mag.Atk.Bns."+11',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="怯懦の耳",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.ws.magic_dark = {
        ammo="ペムフレドタスラム",
        head="妖蟲の髪飾り+1",
        body={ name="ＡＭダブレット+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands="ジャリカフス+1",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+1%','INT+10','"Mag.Atk.Bns."+11',}},
        feet={ name="ＡＭネール+1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="怯懦の耳",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
        ammo="銀銭",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="カマイングリーヴ+1", augments={'Accuracy+12','DEX+12','MND+20',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="守りの指輪",
        right_ring="アヤモリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws['ガストスラッシュ'] = sets.precast.ws.magic
    sets.precast.ws['サイクロン'] = sets.precast.ws.magic
    sets.precast.ws['エナジースティール'] = sets.precast.ws.magic
    sets.precast.ws['エナジードレイン'] = sets.precast.ws.magic
    sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.magic
    sets.precast.ws['エヴィサレーション'] = sets.precast.ws.multi
    
    sets.precast.ws['サンギンブレード'] = sets.precast.ws.magic_dark
    sets.precast.ws['サベッジブレード'] = sets.precast.ws.multi
    sets.precast.ws['シャンデュシニュ'] = sets.precast.ws.multi

    sets.precast.ability['連続魔'] = {body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},}

    sets.midcast.enhance_duration_self = {
        head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands="ＡＴグローブ+1",
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet="ＬＴウゾー+1",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_duration_others = {
        head="ＬＴシャペル+1",
        body="ＬＴサヨン+1",
        hands="ＡＴグローブ+1",
        legs="ＬＴフュゾー+1",
        feet="ＬＴウゾー+1",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_skill = {
        head="ビファウルクラウン",
        body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="ＶＩグローブ+1", augments={'Enhances "Phalanx II" effect',}},
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="ＬＴウゾー+1",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="メンデカントピアス",
        right_ear="オーグメントピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.enhance_skill_500 = {
        ammo="ペムフレドタスラム",
        head="ビファウルクラウン",
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands="ＡＴグローブ+1",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="ＬＴウゾー+1",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="メンデカントピアス",
        right_ear="オーグメントピアス",
        left_ring="スティキニリング",
        right_ring="スティキニリング",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +9','Enha.mag. skill +10','Mag. Acc.+9','Enh. Mag. eff. dur. +19',}},
    }

    sets.midcast.cure = {
        head={ name="ＧＥカウビーン+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +8%',}},
        body={ name="ＶＩタバード+1", augments={'Enhances "Chainspell" effect',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ＡＴタイツ+1",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        waist="ピュシアサッシュ+1",
        left_ear="メンデカントピアス",
        right_ear="ノーヴィアピアス",
        right_ring="レベッチェリング",
    }

    sets.midcast.skin = set_combine(sets.midcast.enhance_duration_self, {neck='ノデンズゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body="ＬＴサヨン+1",
        hands="ＬＴガントロ+1",
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+1%','INT+10','"Mag.Atk.Bns."+11',}},
        feet="ジャリピガッシュ+2",
        neck="エーラペンダント",
        waist="山吹の帯",
        left_ear="ディグニタリピアス",
        right_ear="グアチピアス",
        left_ring="スティキニリング",
        right_ring="キシャールリング",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.midcast.magic_mb = {
        ammo="ペムフレドタスラム",
        head={ name="マーリンフード", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+8','"Mag.Atk.Bns."+11',}},
        body={ name="マーリンジュバ", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+6%','INT+7','Mag. Acc.+9','"Mag.Atk.Bns."+14',}},
        hands={ name="ＡＭゲージ+1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="マーリンシャルワ", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+9%','INT+13','"Mag.Atk.Bns."+1',}},
        feet="ジャリピガッシュ+2",
        neck="水影の首飾り",
        waist="山吹の帯",
        left_ear="怯懦の耳",
        right_ear="電界の耳",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="スセロスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.aftercast.melee = {
        ammo="ヘイストピニオン+1",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet={ name="カマイングリーヴ+1", augments={'Accuracy+12','DEX+12','MND+20',}},
        neck="アヌートルク",
        waist="ケンタークベルト+1",
        left_ear="シェリダピアス",
        right_ear="素破の耳",
        left_ring="守りの指輪",
        right_ring="アヤモリング",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = {
        ammo="ホミリアリ",
        head="アヤモツッケット+2",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs={ name="カマインクウィス+1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
        feet="アヤモガンビエラ+2",
        neck="ロリケートトルク+1",
        waist="スリポーサッシュ",
        left_ear="エテオレートピアス",
        right_ear="驕慢の耳",
        left_ring="守りの指輪",
        right_ring="ゼラチナスリング+1",
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- マクロのブック, セット変更
    send_command('input /macro book 8; wait 0.5; input /macro set 1')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WhiteMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'BlackMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        end
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if string.find(spell.name, 'ケアル') then
        set_equip = set_combine(sets.midcast.cure, get_hachirin(spell.element))
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            set_equip = sets.midcast.skin
        elseif sets.magic_enhance_skill:contains(spell.name) then
            set_equip = sets.midcast.enhance_skill
        elseif sets.gain:contains(spell.name) then
            set_equip = sets.midcast.enhance_skill_500
        else
            if player.subtarget.type == 'SELF' then
                 set_equip = sets.midcast.enhance_duration_self
            else
                set_equip = sets.midcast.enhance_duration_others
            end
            
        end
    elseif spell.skill == '弱体魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '暗黒魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '精霊魔法' then
        set_equip = sets.midcast.magic_mb
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
        set_equip = sets.aftercast.idle
    elseif new == 'Engaged' then
        set_equip = sets.aftercast.melee
    end
    
    if set_equip then
        equip(set_equip)
    end
end