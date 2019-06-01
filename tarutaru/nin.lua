function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}

    ninjutsu = {}
    ninjutsu['遁甲の術:壱'] = 'me'
    ninjutsu['空蝉の術:壱'] = 'me'
    ninjutsu['火遁の術:壱'] = 'ton'
    ninjutsu['氷遁の術:壱'] = 'ton'
    ninjutsu['風遁の術:壱'] = 'ton'
    ninjutsu['土遁の術:壱'] = 'ton'
    ninjutsu['雷遁の術:壱'] = 'ton'
    ninjutsu['水遁の術:壱'] = 'ton'
    ninjutsu['暗闇の術:壱'] = 'debuff'
    ninjutsu['捕縄の術:壱'] = 'debuff'
    ninjutsu['物見の術:壱'] = 'me'
    ninjutsu['毒盛の術:壱'] = 'debuff'
    ninjutsu['呪縛の術:壱'] = 'debuff'
    ninjutsu['遁甲の術:弐'] = 'me'
    ninjutsu['空蝉の術:弐'] = 'me'
    ninjutsu['火遁の術:弐'] = 'ton'
    ninjutsu['氷遁の術:弐'] = 'ton'
    ninjutsu['風遁の術:弐'] = 'ton'
    ninjutsu['土遁の術:弐'] = 'ton'
    ninjutsu['雷遁の術:弐'] = 'ton'
    ninjutsu['水遁の術:弐'] = 'ton'
    ninjutsu['暗闇の術:弐'] = 'debuff'
    ninjutsu['捕縄の術:弐'] = 'debuff'
    ninjutsu['火遁の術:参'] = 'ton'
    ninjutsu['氷遁の術:参'] = 'ton'
    ninjutsu['風遁の術:参'] = 'ton'
    ninjutsu['土遁の術:参'] = 'ton'
    ninjutsu['雷遁の術:参'] = 'ton'
    ninjutsu['水遁の術:参'] = 'ton'
    ninjutsu['哀車の術:壱'] = 'debuff'
    ninjutsu['幽林の術:壱'] = 'debuff'
    ninjutsu['妙手の術:壱'] = 'me'
    ninjutsu['身替の術:壱'] = 'me'
    ninjutsu['月下の術:壱'] = 'me'
    ninjutsu['夜陰の術:壱'] = 'me'
    ninjutsu['活火の術:壱'] = 'me'
    ninjutsu['空蝉の術:参'] = 'me'
    
    sets.item = {head='猪ノ札', body='鹿ノ札', hands='蝶ノ札'}
    
    sets.weapon = {
        main="丙子椒林剣",
        sub={ name="金糸雀", augments={'"Store TP"+5','DEX+5','Accuracy+23','Attack+25',}},
        ammo="戸隠手裏剣",
    }
    
    sets.precast.fc = {
    head={ name="ヘルクリアヘルム", augments={'"Mag.Atk.Bns."+10','"Fast Cast"+6','MND+3','Mag. Acc.+9',}},
    body={ name="テーオンタバード", augments={'"Fast Cast"+5','Phalanx +3',}},
    hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="ギーヴトラウザ",
    feet={ name="ヘルクリアブーツ", augments={'Mag. Acc.+4','"Fast Cast"+5','MND+8','"Mag.Atk.Bns."+15',}},
    neck="ボルトサージトルク",
    waist="フルームベルト+1",
    left_ear="エンチャンピアス+1",
    right_ear="ロケイシャスピアス",
    left_ring="守りの指輪",
    right_ring="キシャールリング",
    back={ name="アンダルタマント", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.precast.enmity = {
        body="エメットハーネス+1",
        hands="クーリスグローブ",
        legs="ムンムケックス+2",
        feet="アホシレギンス",
        neck="月光の首飾り",
        waist="カシリベルト",
        right_ring="アイワツリング",
    }
    
    sets.precast.ws.critical = {
        head="極蜂屋半首",
        body="ムンムジャケット+2",
        hands="ムンムリスト+2",
        legs="ムンムケックス+2",
        feet="ムンムゲマッシュ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="マーケピアス+1",
        left_ring="王将の指輪",
        right_ring="ムンムリング",
        back={ name="アンダルタマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.precast.ws.multi = {
        head="乾闥婆陣鉢改",
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="蓐収佩楯",
        feet="乾闥婆脛当改",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="マーケピアス+1",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="アンダルタマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.precast.ws.wsd = {
        head="極蜂屋半首",
        body={ name="アデマジャケット+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="真膝丸膝甲",
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','DEX+10','Accuracy+2',}},
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="マーケピアス+1",
        left_ring="王将の指輪",
        right_ring="イラブラットリング",
        back={ name="アンダルタマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.precast.ws['瞬'] = sets.precast.ws.multi
    sets.precast.ws['秘'] = sets.precast.ws.critical
    sets.precast.ws['カムハブリ'] = sets.precast.ws.multi
    sets.precast.ws['天'] = sets.precast.ws.wsd
    
    sets.midcast.magic_acc = {
        head="極蜂屋半首",
        body="ムンムジャケット+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="ムンムケックス+2",
        feet="ムンムゲマッシュ+2",
        neck="インカンタートルク",
        waist="フルームベルト+1",
        left_ear="エンチャンピアス+1",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="王将の指輪",
        back={ name="アンダルタマント", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.midcast.magic_atk = {
        head="極蜂屋半首",
        body={ name="サムヌーハコート", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="ギーヴトラウザ",
        feet={ name="アデマゲマッシュ+1", augments={'HP+65','"Store TP"+7','"Snapshot"+10',}},
        neck="インカンタートルク",
        waist="エスカンストーン",
        left_ear="フリオミシピアス",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="アルビナリング+1",
        back={ name="アンダルタマント", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.aftercast.melee = {
        head="乾闥婆陣鉢改",
        body="乾闥婆作務衣改",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="乾闥婆筒袴改",
        feet={ name="ヘルクリアブーツ", augments={'Accuracy+28','"Triple Atk."+4','Attack+13',}},
        neck="イスクルゴルゲット",
        waist="ウィンバフベルト+1",
        left_ear="セサンスピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="イラブラットリング",
        back={ name="アンダルタマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }
    
    sets.aftercast.idle = {
        head="乾闥婆陣鉢改",
        body="アシェーラハーネス",
        hands="クーリスグローブ",
        legs="ムンムケックス+2",
        feet="アホシレギンス",
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="エテオレートピアス",
        right_ear="オノワイヤリング+1",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }
    
    -- マクロのブック, セット変更
    send_command('input /macro book 20; wait 0.5; input /macro set 1')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.wsd
        end
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif spell.name == '挑発' then
        set_equip = sets.precast.enmity
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.skill == '神聖魔法' then
        set_equip = sets.precast.fc
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
    local ci_id, ci2_id, ci3_id, ci4_id = 66, 444, 445, 446
    local utsusemi = T{'空蝉の術:壱','空蝉の術:弐',}
    
    if ninjutsu[spell.name] == 'debuff' then
        set_equip = sets.midcast.magic_acc
    elseif ninjutsu[spell.name] == 'ton' then
        set_equip = sets.midcast.magic_atk
    elseif ninjutsu[spell.name] == 'me' then
        if string.find(spell.name, '空蝉の術') then
            set_equip = {hands="望月手甲改", feet="服部脚絆改",}
            if utsusemi:contains(spell.name) then
                if buffactive['分身'] then
                    windower.ffxi.cancel_buff(ci_id)
                elseif buffactive['分身(2)'] then
                    windower.ffxi.cancel_buff(ci2_id)
                elseif buffactive['分身(3)'] then
                    windower.ffxi.cancel_buff(ci3_id)
                elseif buffactive['分身(4+)'] then
                    windower.ffxi.cancel_buff(ci4_id)
                end
            end
        else
            set_equip = {hands="望月手甲改",}
        end
    elseif spell.name == 'フラッシュ' then
        set_equip = sets.precast.enmity
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        if spell.type == 'WeaponSkill' and spell.interrupted == false then
            windower.add_to_chat(30, 'TP: ' .. player.tp .. ' after ' .. spell.name)
        end
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
