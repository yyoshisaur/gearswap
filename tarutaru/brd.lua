function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    -- self_command用フラグ
    is_melee = false
    is_dual = false
    is_string_inst = false

    song = {}
    init_song()
    set_dummy_song('戦士達のピーアン')
    set_dummy_song('戦士達のピーアンII')
    set_dummy_song('戦士達のピーアンIII')
    set_dummy_song('重装騎兵のミンネ')
    set_dummy_song('猛者のメヌエット')
    
    sets.weapon_dual = {main="エーネアス", sub="ブラーナイフ+1"}
    
    sets.precast.song_fc = {
        main={ name="カーリ", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
        sub="玄冥盾",
        head="ＦＬキャロ+1",
        body="インヤガジュバ+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.fc = {
        main={ name="カーリ", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
        sub="玄冥盾",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="インヤガジュバ+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="ジーゲルサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.ability["ソウルボイス"] = {legs={ name="ＢＩキャニオンズ+3", augments={'Enhances "Soul Voice" effect',}},}
    sets.precast.ability["ナイチンゲール"] = {feet={ name="ＢＩスリッパー+3", augments={'Enhances "Nightingale" effect',}},}
    sets.precast.ability["トルバドゥール"] = {body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},}

    sets.midcast.song_duration = {
        main="カルンウェナン",
        sub="玄冥盾",
        head="ＦＬキャロ+1",
        body="ＦＬオングルリヌ+1",
        hands="ＦＬマンシェト+1",
        legs="インヤガシャルワ+2",
        feet="ＢＲスリッパー+3",
        neck="月虹の呼び子+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="スティキニリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.magic_acc = {
        main="カルンウェナン",
        sub="アムラピシールド",
        range="ギャッラルホルン",
        head="ＢＲランドリト+3",
        body="ＢＲジュスト+3",
        hands="ＢＲカフス+3",
        legs="ＦＬラングラヴ+1",
        feet="ＢＲスリッパー+3",
        neck="月虹の呼び子+1",
        waist="ルーミネリサッシュ",
        left_ear="ディグニタリピアス",
        right_ear="王将の耳飾り",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.song_base = {
        main="カルンウェナン",
        sub="玄冥盾",
        range="ギャッラルホルン",
        head="アヤモツッケット+2",
        body="アシェーラハーネス",
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="月虹の呼び子+1",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.song_dummy = {
        range="ダウルダヴラ",
        main={ name="カーリ", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
        sub="玄冥盾",
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="インヤガジュバ+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="ロリケートトルク+1",
        waist="ニヌルタサッシュ",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }

    sets.midcast.paeon      = set_combine(sets.midcast.song_base, {head="ＢＲランドリト+3", legs="インヤガシャルワ+2",})
    sets.midcast.ballad     = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", legs="ＦＬラングラヴ+1", feet="ＢＲスリッパー+3",})
    sets.midcast.minne      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast.mambo      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast.carol      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", hands="ムセスゲージ+1",})
    sets.midcast.minuet     = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", feet="ＢＲスリッパー+3",})
    sets.midcast.madrigal   = set_combine(sets.midcast.song_base,{head="ＦＬキャロ+1", legs="インヤガシャルワ+2", back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}}})
    sets.midcast.prelude    = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", feet="ＢＲスリッパー+3", back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}}})
    sets.midcast.march      = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", hands="ＦＬマンシェト+1", legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",}) 
    sets.midcast.etude      = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast.scherzo    = set_combine(sets.midcast.song_base, {body="ＦＬオングルリヌ+1", legs="インヤガシャルワ+2", feet="ＦＬコテュルヌ+1"})
    sets.midcast.song_other = set_combine(sets.midcast.song_base, {legs="インヤガシャルワ+2", feet="ＢＲスリッパー+3",})
    sets.midcast.threnody   = set_combine(sets.midcast.magic_acc, {body="ムセスマンティル+1"})

    sets.midcast.enhance_duration = {
        sub="アムラピシールド",
        head={ name="テルキネキャップ", augments={'Mag. Evasion+23','"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
        body={ name="テルキネシャジュブ", augments={'Mag. Evasion+23','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        feet={ name="テルキネピガッシュ", augments={'Mag. Evasion+25','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="ロケイシャスピアス",
        left_ring="守りの指輪",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.cure = {
        -- range={ name="テルパンダー", augments={'HP+30','Mag. Acc.+10','Damage Taken -3%',}},
        head={ name="ヴァニヤフード", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="ヴリコダラジュポン",
        hands={ name="テルキネグローブ", augments={'Mag. Evasion+24','"Fast Cast"+5','Enh. Mag. eff. dur. +10',}},
        legs="ギーヴトラウザ",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="メンデカントピアス",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.aftercast.idle = {
        sub="玄冥盾",
        -- range={ name="テルパンダー", augments={'HP+30','Mag. Acc.+10','Damage Taken -3%',}},
        head="インヤガティアラ+2",
        body="アシェーラハーネス",
        hands="インヤガダスタナ+2",
        legs="インヤガシャルワ+2",
        feet="ＦＬコテュルヌ+1",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        -- back="月光の羽衣",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.aftercast.melee = {
        -- main="エーネアス",
        range={ name="リノス", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
        head="アヤモツッケット+2",
        body="アシェーラハーネス",
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="バトルカスゲートル",
        neck="コンバタントトルク",
        waist="霊亀腰帯",
        left_ear="テロスピアス",
        right_ear="エアバニピアス",
        left_ring="月光の指輪",
        right_ring="シーリチリング+1",
        back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.wsd = {
        range={ name="リノス", augments={'Accuracy+15','Weapon skill damage +3%','DEX+8',}},
        head="アヤモツッケット+2",
        body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},
        hands="アヤモマノポラ+2",
        legs="アヤモコッシャレ+2",
        feet="アヤモガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="マーケピアス+1",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="イラブラットリング",
        left_ring={ name="カコエシクリング+1", augments={'Path: A',}},
        back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.ws["ルドラストーム"] = sets.precast.ws.wsd
    
    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 19; wait 0.5; input /macro set 1; wait 0.5; input /si brd')
end

function pretarget(spell)
    local set_equip = nil

    if is_string_inst then
        set_equip = {range="ダウルダヴラ",}
    end

    if spell.name == '栄典の戴冠マーチ' then
        set_equip = {range="マルシュアス",}
    end

    if set_equip then
        equip(set_equip)
    end
end

function precast(spell)
    local set_equip = nil
    
    if spell.type == 'BardSong' then
        if buffactive['ナイチンゲール'] then
            set_equip = get_song_gear(spell)
        else
            set_equip = sets.precast.song_fc
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'WhiteMagic' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.wsd
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type == 'BardSong' then
        set_equip = get_song_gear(spell)

        if is_string_inst then
            set_equip = set_combine(set_equip, {range="ダウルダヴラ",})
            is_string_inst = false
        end

    elseif string.find(spell.name, 'ケアル') then
        -- windower.add_to_chat(122,'+++ ケアル +++')
        set_equip = sets.midcast.cure
    elseif spell.skill == '強化魔法' then
        if spell.name == 'ストンスキン' then
            -- windower.add_to_chat(122,'+++ ストンスキン +++')
            set_equip = set_combine(sets.midcast.enhance_duration, {neck='ストーンゴルゲット', left_ear='アースクライピアス', waist="ジーゲルサッシュ",})
        else
            -- windower.add_to_chat(122,'+++ 強化魔法 +++')
            set_equip = sets.midcast.enhance_duration
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        if is_melee then
            set_equip = sets.aftercast.melee
        else
            set_equip = sets.aftercast.idle
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
        if is_melee then
            set_equip = sets.aftercast.melee
        else
            set_equip = sets.aftercast.idle
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

local auto_song = false
local update_time = os.clock()
local update_interval = 605
local overwirte_song_cmd = ''
local cp_song = {
    no_sp = {
        start = {
            [1] = {name = 'ナイチンゲール', wait = 2.5, pf = '/ja', t = '<me>'},
            [2] = {name = 'トルバドゥール', wait = 2.5, pf = '/ja', t = '<me>'},
            [3] = {name = 'マルカート', wait = 2.5, pf = '/ja', t = '<me>'},
            [4] = {name = '栄典の戴冠マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [5] = {name = '栄光の凱旋マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [6] = {name = '戦士達のピーアン', wait = 4, pf = '/ma', t = '<me>'},
            [7] = {name = '戦士達のピーアンII', wait = 4, pf = '/ma', t = '<me>'},
            [8] = {name = '猛者のメヌエットV', wait = 4, pf = '/ma', t = '<me>'},
            [9] = {name = '剣豪のマドリガル', wait = 4, pf = '/ma', t = '<me>'},
            [10] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [11] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [12] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [13] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [14] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [15] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
            [16] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [17] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
            [18] = {name = 'アクアベール', wait = 5, pf = '/ma', t = '<me>'},
            [19] = {name = 'リフレシュ', wait = 5, pf = '/ma', t = '<p1>'},
        },
        
        overwirte = {
            [1] = {name = 'ナイチンゲール', wait = 2.5, pf = '/ja', t = '<me>'},
            [2] = {name = 'トルバドゥール', wait = 2.5, pf = '/ja', t = '<me>'},
            [3] = {name = 'マルカート', wait = 2.5, pf = '/ja', t = '<me>'},
            [4] = {name = '栄典の戴冠マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [5] = {name = '栄光の凱旋マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [6] = {name = '猛者のメヌエットV', wait = 4, pf = '/ma', t = '<me>'},
            [7] = {name = '剣豪のマドリガル', wait = 4, pf = '/ma', t = '<me>'},
            [8] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [9] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [10] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [11] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [12] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [13] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
            [14] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [15] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
            [16] = {name = 'アクアベール', wait = 5, pf = '/ma', t = '<me>'},
            [17] = {name = 'リフレシュ', wait = 5, pf = '/ma', t = '<p1>'},
        },
    },
    sp = {
        start = {
            [1] = {name = 'ナイチンゲール', wait = 2.5, pf = '/ja', t = '<me>'},
            [2] = {name = 'トルバドゥール', wait = 2.5, pf = '/ja', t = '<me>'},
            [3] = {name = 'クラリオンコール', wait = 2.5, pf = '/ja', t = '<me>'},
            [4] = {name = 'マルカート', wait = 2.5, pf = '/ja', t = '<me>'},
            [5] = {name = '栄典の戴冠マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [6] = {name = '栄光の凱旋マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [7] = {name = '戦士達のピーアン', wait = 4, pf = '/ma', t = '<me>'},
            [8] = {name = '戦士達のピーアンII', wait = 4, pf = '/ma', t = '<me>'},
            [9] = {name = '戦士達のピーアンIII', wait = 4, pf = '/ma', t = '<me>'},
            [10] = {name = '猛者のメヌエットV', wait = 4, pf = '/ma', t = '<me>'},
            [11] = {name = '剣豪のマドリガル', wait = 4, pf = '/ma', t = '<me>'},
            [12] = {name = '剣闘士のマドリガル', wait = 4, pf = '/ma', t = '<me>'},
            [13] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [14] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [15] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [16] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [17] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [18] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
            [19] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [20] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
        },
        overwirte = {
            [1] = {name = 'ナイチンゲール', wait = 2.5, pf = '/ja', t = '<me>'},
            [2] = {name = 'トルバドゥール', wait = 2.5, pf = '/ja', t = '<me>'},
            [3] = {name = 'マルカート', wait = 2.5, pf = '/ja', t = '<me>'},
            [4] = {name = '栄典の戴冠マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [5] = {name = '栄光の凱旋マーチ', wait = 4, pf = '/ma', t = '<me>'},
            [6] = {name = '猛者のメヌエットV', wait = 4, pf = '/ma', t = '<me>'},
            [7] = {name = '剣豪のマドリガル', wait = 4, pf = '/ma', t = '<me>'},
            [8] = {name = '剣闘士のマドリガル', wait = 4, pf = '/ma', t = '<me>'},
            [9] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [10] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [11] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [12] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Kupipi'},
            [13] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [14] = {name = '魔道士のバラードIII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
            [15] = {name = 'ピアニッシモ', wait = 2.5, pf = '/ja', t = '<me>'},
            [16] = {name = '魔道士のバラードII', wait = 4, pf = '/ma', t = 'Koru-Moru'},
        },
    }
}

function self_command(command)
    local cmd = command:split(' ')
    if cmd[1] == 'melee' then
        if is_melee then
            is_melee = false
            windower.add_to_chat(122,'---> 待機装備モード')
        else
            is_melee = true
            windower.add_to_chat(122,'---> 近接装備モード')
        end
    elseif cmd[1] == 'dual' then
        if is_dual then
            is_dual = false
            windower.add_to_chat(122,'---> 1刀装備モード')
            enable('sub')
        else
            is_dual = true
            windower.add_to_chat(122,'---> 2刀装備モード')
            disable('sub')
        end
    elseif cmd[1] == 'string' then
        is_string_inst = not is_string_inst
        windower.add_to_chat(122,'---> 弦楽器:'..tostring(is_string_inst))
    elseif cmd[1] == 'autosong' then
        if cmd[2] == 'off' then
            auto_song = false
        elseif cmd[2] == 'on' then
            if cmd[3] == 'sp' then
                local song_cmd = ''
                for i,v in ipairs(cp_song.sp.start) do
                    song_cmd = song_cmd..'input '..v.pf..' '..windower.to_shift_jis(v.name)..' '..v.t..'; wait '..v.wait..';'
                end
                for i,v in ipairs(cp_song.sp.overwirte) do
                    overwirte_song_cmd = overwirte_song_cmd..'input '..v.pf..' '..windower.to_shift_jis(v.name)..' '..v.t..'; wait '..v.wait..';'
                end
                send_command(song_cmd)
            else
                local song_cmd = ''
                for i,v in ipairs(cp_song.no_sp.start) do
                    song_cmd = song_cmd..'input '..v.pf..' '..windower.to_shift_jis(v.name)..' '..v.t..'; wait '..v.wait..';'
                end
                for i,v in ipairs(cp_song.no_sp.overwirte) do
                    overwirte_song_cmd = overwirte_song_cmd..'input '..v.pf..' '..windower.to_shift_jis(v.name)..' '..v.t..'; wait '..v.wait..';'
                end
                send_command(song_cmd)
            end
            update_time = os.clock()
            auto_song = true
        end
        windower.add_to_chat(122,'---> AUTO SONG: '..tostring(auto_song))
    end
end

windower.raw_register_event('time change', function(new, old)
    local curr = os.clock()
    if auto_song then 
        if curr > (update_time + update_interval) then
            send_command(overwirte_song_cmd)
            update_time = curr
            windower.add_to_chat(122,'---> UPDATE SONGS')
        end
    end
end)

function get_song_gear(spell)
    if song[spell.name] == 'Dummy' then
        return sets.midcast.song_dummy
    elseif song[spell.name] == 'Paeon' then
        return sets.midcast.paeon
    elseif song[spell.name] == 'Ballad' then
        return sets.midcast.ballad
    elseif song[spell.name] == 'Minne' then
        return sets.midcast.minne
    elseif song[spell.name] == 'Mambo' then
        return sets.midcast.mambo
    elseif song[spell.name] == 'Carol' then
        return sets.midcast.carol
    elseif song[spell.name] == 'Resist' then
        return sets.midcast.song_other
    elseif song[spell.name] == 'Minuet' then
        return sets.midcast.minuet
    elseif song[spell.name] == 'Madrigal' then
        return sets.midcast.madrigal
    elseif song[spell.name] == 'Prelude' then
        return sets.midcast.prelude
    elseif song[spell.name] == 'March' then
        return sets.midcast.march
    elseif song[spell.name] == 'March_Marsyas' then
        return set_combine(sets.midcast.march, {range="マルシュアス",})
    elseif song[spell.name] == 'Etude' then
        return sets.midcast.etude
    elseif song[spell.name] == 'Mazurka' then
        return sets.midcast.song_other
    elseif song[spell.name] == 'Hymnus' then
        return sets.midcast.song_other
    elseif song[spell.name] == 'Sirvente' then
        return sets.midcast.song_other
    elseif song[spell.name] == 'Dirge' then
        return sets.midcast.song_other
    elseif song[spell.name] == 'Scherzo' then
        return sets.midcast.scherzo
    elseif song[spell.name] == 'Requiem' then
        return sets.midcast.magic_acc
    elseif song[spell.name] == 'Lullaby' then
        return sets.midcast.magic_acc
    elseif song[spell.name] == 'Elegy' then
        return sets.midcast.magic_acc
    elseif song[spell.name] == 'Threnody' then
        return sets.midcast.threnody
    elseif song[spell.name] == 'Finale' then
        return sets.midcast.magic_acc
    elseif song[spell.name] == 'Virelai' then
        return sets.midcast.magic_acc
    elseif song[spell.name] == 'Nocturne' then
        return sets.midcast.magic_acc
    end
end

function init_song()
    song['戦士達のピーアン'] = 'Paeon'
    song['戦士達のピーアンII'] = 'Paeon'
    song['戦士達のピーアンIII'] = 'Paeon'
    song['戦士達のピーアンIV'] = 'Paeon'
    song['戦士達のピーアンV'] = 'Paeon'
    song['戦士達のピーアンVI'] = 'Paeon'

    song['魔道士のバラード'] = 'Ballad'
    song['魔道士のバラードII'] = 'Ballad'
    song['魔道士のバラードIII'] = 'Ballad'
    
    song['重装騎兵のミンネ'] = 'Minne'
    song['重装騎兵のミンネII'] = 'Minne'
    song['重装騎兵のミンネIII'] = 'Minne'
    song['重装騎兵のミンネIV'] = 'Minne'
    song['重装騎兵のミンネV'] = 'Minne'
    
    
    song['闘羊士のマンボ'] = 'Mambo'
    song['闘龍士のマンボ'] = 'Mambo'
    
    song['耐光カロル第一楽章'] = 'Carol'
    song['耐震カロル第一楽章'] = 'Carol'
    song['耐波カロル第一楽章'] = 'Carol'
    song['耐風カロル第一楽章'] = 'Carol'
    song['耐火カロル第一楽章'] = 'Carol'
    song['耐寒カロル第一楽章'] = 'Carol'
    song['耐電カロル第一楽章'] = 'Carol'
    song['耐闇カロル第一楽章'] = 'Carol'
    song['耐震カロル第二楽章'] = 'Carol'
    song['耐波カロル第二楽章'] = 'Carol'
    song['耐風カロル第二楽章'] = 'Carol'
    song['耐火カロル第二楽章'] = 'Carol'
    song['耐寒カロル第二楽章'] = 'Carol'
    song['耐電カロル第二楽章'] = 'Carol'
    song['耐光カロル第二楽章'] = 'Carol'
    song['耐闇カロル第二楽章'] = 'Carol'
    
    song['薬草のパストラル'] = 'Resist'
    song['小話のオペレッタ'] = 'Resist'
    song['腹話のオペレッタ'] = 'Resist'
    song['鶏のオーバード'] = 'Resist'
    song['ゴブリンのガボット'] = 'Resist'
    song['黄金のカプリチオ'] = 'Resist'
    song['光明のファンタジア'] = 'Resist'
    song['破邪のロンド'] = 'Resist'
    
    song['猛者のメヌエット'] = 'Minuet'
    song['猛者のメヌエットII'] = 'Minuet'
    song['猛者のメヌエットIII'] = 'Minuet'
    song['猛者のメヌエットIV'] = 'Minuet'
    song['猛者のメヌエットV'] = 'Minuet'
    
    song['剣闘士のマドリガル'] = 'Madrigal'
    song['剣豪のマドリガル'] = 'Madrigal'

    song['狩人のプレリュード'] = 'Prelude'
    song['弓師のプレリュード'] = 'Prelude'

    song['無敵の進撃マーチ'] = 'March'
    song['栄光の凱旋マーチ'] = 'March'
    song['栄典の戴冠マーチ'] = 'March_Marsyas'

    song['魅了のエチュード'] = 'Etude'
    song['精神のエチュード'] = 'Etude'
    song['知恵のエチュード'] = 'Etude'
    song['機敏のエチュード'] = 'Etude'
    song['元気のエチュード'] = 'Etude'
    song['器用のエチュード'] = 'Etude'
    song['剛力のエチュード'] = 'Etude'
    song['魅惑のエチュード'] = 'Etude'
    song['理力のエチュード'] = 'Etude'
    song['英知のエチュード'] = 'Etude'
    song['俊敏のエチュード'] = 'Etude'
    song['活力のエチュード'] = 'Etude'
    song['妙技のエチュード'] = 'Etude'
    song['怪力のエチュード'] = 'Etude'
    
    song['ラプトルのマズルカ'] = 'Mazurka'
    song['チョコボのマズルカ'] = 'Mazurka'

    song['女神のヒムヌス'] = 'Hymnus'

    song['魔物のシルベント'] = 'Sirvente'

    song['冒険者のダージュ'] = 'Dirge'

    song['警戒のスケルツォ'] = 'Scherzo'

    song['魔物のレクイエム'] = 'Requiem'
    song['魔物のレクイエムII'] = 'Requiem'
    song['魔物のレクイエムIII'] = 'Requiem'
    song['魔物のレクイエムIV'] = 'Requiem'
    song['魔物のレクイエムV'] = 'Requiem'
    song['魔物のレクイエムVI'] = 'Requiem'
    song['魔物のレクイエムVII'] = 'Requiem'

    song['魔物のララバイ'] = 'Lullaby'
    song['魔物達のララバイ'] = 'Lullaby'
    song['魔物のララバイII'] = 'Lullaby'
    song['魔物達のララバイII'] = 'Lullaby'

    song['戦場のエレジー'] = 'Elegy'
    song['修羅のエレジー'] = 'Elegy'

    song['光のスレノディ'] = 'Threnody'
    song['闇のスレノディ'] = 'Threnody'
    song['土のスレノディ'] = 'Threnody'
    song['水のスレノディ'] = 'Threnody'
    song['風のスレノディ'] = 'Threnody'
    song['炎のスレノディ'] = 'Threnody'
    song['氷のスレノディ'] = 'Threnody'
    song['雷のスレノディ'] = 'Threnody'
    song['光のスレノディII'] = 'Threnody'
    song['闇のスレノディII'] = 'Threnody'
    song['土のスレノディII'] = 'Threnody'
    song['水のスレノディII'] = 'Threnody'
    song['風のスレノディII'] = 'Threnody'
    song['炎のスレノディII'] = 'Threnody'
    song['氷のスレノディII'] = 'Threnody'
    song['雷のスレノディII'] = 'Threnody'

    song['魔法のフィナーレ'] = 'Finale'

    song['乙女のヴィルレー'] = 'Virelai'

    song['恋情のノクターン'] = 'Nocturne'
end

function set_dummy_song(song_name)
    song[song_name] = 'Dummy'
end