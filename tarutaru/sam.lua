function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.weapon = {}
    
    sets.weapon.douzi = {
        main="童子切安綱",
        sub="ウトゥグリップ",
    }
    
    sets.obi = {waist="火輪の帯",}
    
    sets.precast.ws.wsd = {
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body={ name="バロラスメイル", augments={'Accuracy+28','Weapon skill damage +5%','STR+10',}},
        hands={ name="バロラスミトン", augments={'Accuracy+9 Attack+9','Weapon skill damage +4%','STR+9','Accuracy+10','Attack+6',}},
        legs="真膝丸膝甲",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="スメルトリオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.multi = {
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body={ name="バロラスメイル", augments={'Accuracy+28','Weapon skill damage +5%','STR+10',}},
        hands={ name="バロラスミトン", augments={'Accuracy+9 Attack+9','Weapon skill damage +4%','STR+9','Accuracy+10','Attack+6',}},
        legs="真膝丸膝甲",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="イオスケハベルト+1",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="スメルトリオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws.acc = {
        ammo="ペムフレドタスラム",
        head="フラマツッケット+2",
        body="フラマコラジン+2",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="フラマリング",
        right_ring="ニックマドゥリング",
        back={ name="スメルトリオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.precast.ws.magic = {
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body={ name="ファウンダブレスト", augments={'Accuracy+14','Mag. Acc.+13','Attack+14','"Mag.Atk.Bns."+14',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="フラマディル+2",
        feet={ name="ファウンダグリーヴ", augments={'VIT+9','Accuracy+14','"Mag.Atk.Bns."+13','Mag. Evasion+15',}},
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="王将の指輪",
        right_ring="ニックマドゥリング",
        back={ name="スメルトリオマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws['壱之太刀・飛燕'] = sets.precast.ws.multi
    sets.precast.ws['弐之太刀・鋒縛'] = sets.precast.ws.acc
    sets.precast.ws['参之太刀・轟天'] = sets.precast.ws.magic
    sets.precast.ws['四之太刀・陽炎'] = sets.precast.ws.magic
    sets.precast.ws['五之太刀・陣風'] = sets.precast.ws.magic
    sets.precast.ws['六之太刀・光輝'] = sets.precast.ws.magic
    sets.precast.ws['七之太刀・雪風'] = sets.precast.ws.wsd
    sets.precast.ws['八之太刀・月光'] = sets.precast.ws.wsd
    sets.precast.ws['九之太刀・花車'] = sets.precast.ws.wsd
    sets.precast.ws['十一之太刀・鳳蝶'] = sets.precast.ws.acc
    sets.precast.ws['祖之太刀・不動'] = sets.precast.ws.wsd
    sets.precast.ws['十二之太刀・照破'] = sets.precast.ws.multi
    
    sets.precast.fc = {
        ammo="サピエンスオーブ",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        right_ring="ラハブリング",
    }
    
    sets.precast.mokusou = {
        head="脇戸桃形兜改",
        hands="左近士筒篭手改",
        back={ name="スメルトリオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.midcast.trehun = {
        head="白ララブキャップ+1",
        hands={ name="バロラスミトン", augments={'Pet: Haste+1','Rng.Acc.+16','"Treasure Hunter"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
        waist="チャークベルト",
    }
    
    sets.aftercast.melee = {
        ammo="銀銭",
        head="フラマツッケット+2",
        body={ name="バロラスメイル", augments={'Accuracy+27','"Dbl.Atk."+5','VIT+4','Attack+15',}},
        hands="極脇戸筒篭手",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="アイニアカラー",
        waist="イオスケハベルト+1",
        left_ear="デディションピアス",
        right_ear="テロスピアス",
        left_ring="フラマリング",
        right_ring="シーリチリング+1",
        back={ name="スメルトリオマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="玄冥兜",
        body="タルタロスプレート",
        hands="クーリスグローブ",
        legs="フラマディル+2",
        feet="アムグリーヴ",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="オノワイヤリング",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }
    
    
    -- マクロのブック, セット変更
    send_command('input /macro book 9; wait 0.5; input /macro set 1')
end

function precast(spell)
    local set_equip = nil
    
    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.multi
        end
    elseif spell.name == '黙想' then
        set_equip = sets.precast.mokusou
    elseif spell.name == '護摩の守護円' then
        set_equip = {head="脇戸桃形兜改",}
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    end
    
    if set_equip ~= nill then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        set_equip = sets.aftercast.melee
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
        set_equip = sets.aftercast.melee
    end
    
    if set_equip ~= nil then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'obi' then
        if is_obi then
            is_cp = false
            
            -- sets.precast.ws['壱之太刀・飛燕'] = sets.precast.ws.multi
            -- sets.precast.ws['弐之太刀・鋒縛'] = sets.precast.ws.acc
            -- sets.precast.ws['参之太刀・轟天'] = sets.precast.ws.magic
            -- sets.precast.ws['四之太刀・陽炎'] = sets.precast.ws.magic
            -- sets.precast.ws['五之太刀・陣風'] = sets.precast.ws.magic
            -- sets.precast.ws['六之太刀・光輝'] = sets.precast.ws.magic
            -- sets.precast.ws['七之太刀・雪風'] = sets.precast.ws.wsd
            -- sets.precast.ws['八之太刀・月光'] = sets.precast.ws.wsd
            -- sets.precast.ws['九之太刀・花車'] = sets.precast.ws.wsd
            -- sets.precast.ws['十一之太刀・鳳蝶'] = sets.precast.ws.acc
            -- sets.precast.ws['祖之太刀・不動'] = sets.precast.ws.wsd
            sets.precast.ws['十二之太刀・照破'] = sets.precast.ws.multi
            
            windower.add_to_chat(122,'+++ 属性帯装備 OFF +++')
        else
            is_cp = true
            
            -- sets.precast.ws['壱之太刀・飛燕'] = set_combine(sets.precast.ws.multi, sets.obi)
            -- sets.precast.ws['弐之太刀・鋒縛'] = set_combine(sets.precast.ws.acc, sets.obi)
            -- sets.precast.ws['参之太刀・轟天'] = set_combine(sets.precast.ws.magic, sets.obi)
            -- sets.precast.ws['四之太刀・陽炎'] = set_combine(sets.precast.ws.magic, sets.obi)
            -- sets.precast.ws['五之太刀・陣風'] = set_combine(sets.precast.ws.magic, sets.obi)
            -- sets.precast.ws['六之太刀・光輝'] = set_combine(sets.precast.ws.magic, sets.obi)
            -- sets.precast.ws['七之太刀・雪風'] = set_combine(sets.precast.ws.wsd, sets.obi)
            -- sets.precast.ws['八之太刀・月光'] = set_combine(sets.precast.ws.wsd, sets.obi)
            -- sets.precast.ws['九之太刀・花車'] = set_combine(sets.precast.ws.wsd, sets.obi)
            -- sets.precast.ws['十一之太刀・鳳蝶'] = set_combine(sets.precast.ws.acc, sets.obi)
            -- sets.precast.ws['祖之太刀・不動'] = set_combine(sets.precast.ws.wsd, sets.obi)
            sets.precast.ws['十二之太刀・照破'] = set_combine(sets.precast.ws.multi, sets.obi)
            
            windower.add_to_chat(122,'+++ 属性帯装備 ON +++')
        end
    end
end