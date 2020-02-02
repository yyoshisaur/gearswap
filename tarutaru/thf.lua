function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}
    
    is_th = false
    
    sets.weapon = {
        main="エーネアス",
        sub="サンダン",
    }
    
    sets.th = {
        hands="ＰＤアムレット+1",
        waist="チャークベルト"
    }
    
    sets.precast.ws.wsd = {
        ammo="ファルコンアイ",
        head={ name="リリトゥヘッド", augments={'STR+10','DEX+10','Attack+15','Weapon skill damage +3%',}},
        body={ name="ヘルクリアベスト", augments={'Accuracy+21 Attack+21','DEX+14','Accuracy+14','Attack+10',}},
        hands="メガナダグローブ+2",
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','DEX+10','Accuracy+2',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    sets.precast.ws.sneak = {
        ammo="イェットシーラ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="メガナダクウィリ+2",
        hands="メガナダグローブ+2",
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','DEX+10','Accuracy+2',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.ws['エクゼンテレター'] = {
        ammo="ファルコンアイ",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="ヘルクリアベスト", augments={'Accuracy+21 Attack+21','DEX+14','Accuracy+14','Attack+10',}},
        hands="ムンムリスト+2",
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="ムンムゲマッシュ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    sets.precast.ws['ルドラストーム'] = sets.precast.ws.wsd
    sets.precast.ws['マンダリクスタッブ'] = sets.precast.ws.wsd
    
    sets.precast.ws['エヴィサレーション'] = {
        ammo="イェットシーラ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="ムンムジャケット+2",
        hands="ムンムリスト+2",
        legs="ムンムケックス+2",
        feet="ムンムゲマッシュ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ムンムリング",
        right_ring="イラブラットリング",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    
    sets.precast.fc = {
        ammo="サピエンスオーブ",
        head={ name="ヘルクリアヘルム", augments={'"Fast Cast"+6',}},
        body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="ムンムケックス+2",
        neck="ボルトサージトルク",
        waist="ニヌルタサッシュ",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        right_ring="ラハブリング",
    }
    sets.aftercast.melee = {
        ammo="ヤメラング",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="コンバタントトルク",
        waist="霊亀腰帯",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}},
    }
    
    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="ジュートブーツ+1",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="玄冥耳飾り",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }
    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 7; wait 0.5; input /macro set 1; wait 0.5; input /si thf;')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            if buffactive["不意打ち"] or buffactive["だまし討ち"] then
                set_equip = sets.precast.ws.sneak
            else
                set_equip = sets.precast.ws[spell.name]
            end
        else
            set_equip = sets.precast.ws.wsd
        end
    elseif spell.type == 'WhiteMagic' then
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

function self_command(command)
    if command == 'th' then
        if is_th then
            is_th = false
            windower.add_to_chat(122,'+++ トレハン装備 OFF +++')
            enable('hands', 'waist')
        else
            is_th = true
            windower.add_to_chat(122,'+++ トレハン装備 ON +++')
            equip(sets.th)
            disable('hands', 'waist')
        end
    end
end