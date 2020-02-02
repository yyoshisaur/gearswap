function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    sets.precast.ws.wsd = {
        ammo="ノブキエリ",
        head={ name="バロラスマスク", augments={'Accuracy+28','Weapon skill damage +5%','Attack+13',}},
        body={ name="バロラスメイル", augments={'Accuracy+28','Weapon skill damage +5%','STR+10',}},
        hands={ name="ＰＴフィンガー+3", augments={'Enhances "Angon" effect',}},
        legs="ＶＳブレー+3",
        feet="スレビアレギンス+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
    }

    sets.precast.ws.multi = {
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body="デーゴンブレスト",
        hands="スレビアガントレ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="シェリダピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws.magic_acc = {
        ammo="ペムフレドタスラム",
        head="フラマツッケット+2",
        body="フラマコラジン+2",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="ディグニタリピアス",
        right_ear="テロスピアス",
        left_ring="フラマリング",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ws['ダブルスラスト'] = sets.precast.ws.multi
    sets.precast.ws['サンダースラスト'] = sets.precast.ws.wsd
    sets.precast.ws['ライデンスラスト'] = sets.precast.ws.wsd
    sets.precast.ws['足払い'] = sets.precast.ws.magic_acc
    sets.precast.ws['ペンタスラスト'] = sets.precast.ws.multi
    sets.precast.ws['ボーパルスラスト'] = sets.precast.ws.wsd
    sets.precast.ws['スキュアー'] = sets.precast.ws.multi
    sets.precast.ws['大車輪'] = set_combine(sets.precast.ws.wsd, {right_ear="スラッドピアス",})
    sets.precast.ws['インパルスドライヴ'] = sets.precast.ws.wsd
    sets.precast.ws['ソニックスラスト'] = sets.precast.ws.wsd
    sets.precast.ws['雲蒸竜変'] = sets.precast.ws.multi
    sets.precast.ws['カムラン'] = set_combine(sets.precast.ws.wsd, {right_ear="スラッドピアス",})
    sets.precast.ws['スターダイバー'] = sets.precast.ws.multi

    sets.precast.ws['フルスイング'] = sets.precast.ws.wsd
    sets.precast.ws['レトリビューション'] = sets.precast.ws.wsd
    sets.precast.ws['シャッターソウル'] = sets.precast.ws.multi

    sets.precast.ability['ジャンプ'] =  {
        ammo="銀銭",
        head="フラマツッケット+2",
        body="ＶＳメイル+3",
        hands="ＶＳフィンガー+2",
        legs="フラマディル+2",
        feet="オストログリーヴ",
        neck="シュルマヌカラー",
        waist="イオスケハベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="フラマリング",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.precast.ability['ハイジャンプ'] =  set_combine(sets.precast.ability['ジャンプ'], { legs={ name="ＰＴブレー+3", augments={'Enhances "Strafe" effect',}},})
    sets.precast.ability['スピリットジャンプ'] = set_combine(sets.precast.ability['ジャンプ'], {feet="ＰＥシンバルド+1",})
    sets.precast.ability['ソウルジャンプ'] = sets.precast.ability['ジャンプ']
    sets.precast.ability['スーパージャンプ'] = sets.precast.ability['ジャンプ']

    sets.precast.ability['アンゴン'] = {ammo="アンゴン", hands={ name="ＰＴフィンガー+3", augments={'Enhances "Angon" effect',}},}

    sets.precast.ability['エンシェントサークル'] = {legs="ＶＳブレー+3",}

    sets.precast.ability['スピリットリンク'] = {hands="ＰＥバンブレス+1", right_ear="プラティクピアス",}

    sets.aftercast.melee = {
        ammo="銀銭",
        head="フロプトヘルム",
        body="フロプトブレスト",
        hands="フラママノポラ+2",
        legs={ name="ＰＴブレー+3", augments={'Enhances "Strafe" effect',}},
        feet="フラマガンビエラ+2",
        neck="シュルマヌカラー",
        waist="イオスケハベルト+1",
        left_ear="シェリダピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head="フロプトヘルム",
        body="フロプトブレスト",
        hands="スレビアガントレ+2",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet="フラマガンビエラ+2",
        neck="ロリケートトルク+1",
        waist="イオスケハベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }

    -- マクロのブック, セット変更, 装備入れ替え
    send_command('input /macro book 15; wait 0.5; input /macro set 1; wait 0.5; input /si drg;')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then
            set_equip = sets.precast.ws[spell.name]
        else
            set_equip = sets.precast.ws.multi
        end
    elseif sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
    elseif spell.type == 'Trust' then
        set_equip = sets.precast.fc
    elseif spell.type == 'Ninjutsu' then
        set_equip = sets.precast.fc
    elseif string.find(spell.type, 'Magic') then
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