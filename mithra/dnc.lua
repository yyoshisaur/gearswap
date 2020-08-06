function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    sets.precast.ws.wsd = {
        ammo="パルーグストーン",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="ＭＸバングル+3",
        legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="エトワールゴルゲ+2",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.cf = {
        ammo="カリスフェザー",
        head="ＭＣティアラ+1",
        body="メガナダクウィリ+2",
        hands="ＭＸバングル+3",
        legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},
        feet={ name="ヘルクリアブーツ", augments={'VIT+5','"Fast Cast"+1','Weapon skill damage +9%','Accuracy+15 Attack+15',}},
        neck="エトワールゴルゲ+2",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
        ammo="パルーグストーン",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        neck="エトワールゴルゲ+2",
        waist="フォシャベルト",
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="イラブラットリング",
        right_ring="ゲリリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.precast.ws.critical = {
        ammo="カリスフェザー",
        head={ name="ブリスタサリット+1", augments={'Path: A',}},
        body="ムンムジャケット+2",
        hands="ムンムリスト+2",
        legs="ムンムケックス+2",
        feet="ムンムゲマッシュ+2",
        neck="エトワールゴルゲ+2",
        waist="フォシャベルト",
        left_ear="オドルピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ムンムリング",
        right_ring="イラブラットリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10','Damage taken-5%',}},
    }

    sets.precast.ws.empty = {
        ammo=empty,
        head=empty,
        body=empty,
        hands=empty,
        legs=empty,
        feet=empty,
        neck=empty,
        waist=empty,
        left_ear=empty,
        right_ear=empty,
        left_ring=empty,
        right_ring=empty,
        back=empty,
    }

    sets.precast.ws['エヴィサレーション'] = sets.precast.ws.critical
    sets.precast.ws['エクゼンテレター'] = sets.precast.ws.multi
    sets.precast.ws['ルドラストーム'] = sets.precast.ws.wsd
    sets.precast.ws['マンダリクスタッブ'] = sets.precast.ws.wsd
    sets.precast.ws['イオリアンエッジ'] = sets.precast.ws.wsd
    
    sets.precast.acc = {
        ammo="ヤメラング",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="ムンムケックス+2",
        feet="マリグナスブーツ",
        neck="エトワールゴルゲ+2",
        waist="エスカンストーン",
        left_ear="レンポイヤリング",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring="ムンムリング",
        back="サクロマント",
    }
    sets.precast.step = set_combine(sets.precast.acc, {feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},})
    sets.precast.step_f = set_combine(sets.precast.acc, {feet="ＭＣトーシュー+1",})
    sets.precast.waltz_self = {
        ammo="ヤメラング",
        head="ムンムボンネット+2",
        body="ＭＸカザク+1",
        feet="ＭＸトーシュー+3",
        neck="エトワールゴルゲ+2",
        right_ring="アスクレピアリング",
        back={ name="トータッパーマント", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+30','Weapon skill damage +4%',}},
    }
    sets.precast.waltz_others = {
        ammo="ヤメラング",
        -- head="ムンムボンネット+2",
        body="ＭＸカザク+1",
        feet="ＭＸトーシュー+3",
        neck="エトワールゴルゲ+2",
        -- right_ring="アスクレピアリング",
        back={ name="トータッパーマント", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+30','Weapon skill damage +4%',}},
    }
    sets.precast.jig = {legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}}, feet="ＭＸトーシュー+3",}
    sets.precast.samba = {head="ＭＸティアラ+1", back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},}
    sets.precast.cf = {head="ＭＣティアラ+1",}
    sets.precast.rf = {hands="ＭＣバングル+1", back={ name="トータッパーマント", augments={'"Store TP"+1','"Dual Wield"+4','"Rev. Flourish"+30','Weapon skill damage +4%',}},}
    sets.precast.df = sets.precast.acc
    sets.precast.vf = set_combine(sets.precast.acc, {body={ name="ＨＯカザク+3", augments={'Enhances "No Foot Rise" effect',}},})

    sets.precast.ability['トランス'] = {}
    sets.precast.ability['剣の舞い'] = {legs={ name="ＨＯタイツ+3", augments={'Enhances "Saber Dance" effect',}},}
    sets.precast.ability['扇の舞い'] = {}
    sets.precast.ability['ノーフットライズ'] = {body={ name="ＨＯカザク+3", augments={'Enhances "No Foot Rise" effect',}},}

    sets.aftercast.melee_atk = {
        ammo="オゲルミルオーブ+1",
        head={ name="アデマボンネット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body="マリグナスタバード",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet="マリグナスブーツ",
        -- neck="アヌートルク",
        neck="エトワールゴルゲ+2",
        waist="ウィンバフベルト+1",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="シーリチリング+1",
        right_ring="ゲリリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.melee_dt = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="ゲリリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.melee = sets.aftercast.melee_atk

    sets.aftercast.idle_speed = {
        ammo="ストンチタスラム+1",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        -- neck="ロリケートトルク+1",
        neck="エトワールゴルゲ+2",
        waist="キャリアーサッシュ",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = sets.aftercast.idle_speed

    -- マクロのブック, セット変更
    send_command('input /macro book 6; wait 0.5; input /macro set 1; wait 0.5; input /lockstyleset 3 echo; lua load autodnc; wait 1; dnc on;')

end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            if buffactive["C.フラリッシュ"] then
                set_equip = sets.precast.ws.cf
            else
                set_equip = sets.precast.ws[spell.name]
            end
        else
            set_equip = sets.precast.ws.wsd
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif spell.type == 'Samba' then
        set_equip = sets.precast.samba
    elseif spell.type == 'Waltz' then
        if spell.target.type == 'SELF' then
            set_equip = sets.precast.waltz_self
        else
            set_equip = sets.precast.waltz_others
        end
    elseif spell.type == 'Jig' then
        set_equip = sets.precast.jig
    elseif spell.type == 'Step' then
        if spell.name == 'フェザーステップ' then
            set_equip = sets.precast.step_f
        else
            set_equip = sets.precast.step
        end
    elseif spell.type == 'Flourish1' then
        if spell.name == 'D.フラリッシュ' then
            set_equip = sets.precast.df
        elseif spell.name == 'V.フラリッシュ' then
            set_equip = sets.precast.vf
        end
    elseif spell.type == 'Flourish2' then
        if spell.name == 'R.フラリッシュ' then
            set_equip = sets.precast.rf
        end
    elseif spell.type == 'Flourish3' then
        if spell.name == 'C.フラリッシュ' then
            set_equip = sets.precast.cf
        end
    elseif spell.type == 'WhiteMagic' then
        -- set_equip = sets.precast.fc
    elseif spell.type == 'Trust' then
        -- set_equip = sets.precast.fc
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
    if command == 'multi' then
        sets.aftercast.melee = sets.aftercast.melee_atk
        windower.add_to_chat(122,'---> MELEE マルチアタック装備')
    elseif command == 'dt' then
        sets.aftercast.melee = sets.aftercast.melee_dt
        windower.add_to_chat(122,'---> MELEE カット装備')
    end
end

function file_unload(file_name)
    send_command('lua unload autodnc;')
end