function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}
    sets.weapon = {}
    
    -- self_command用フラグ
    is_trehun = false
    is_acc_1250 = false
    is_mokusya = false
    is_enmity = false
    is_raetic = false
    
    windower.add_to_chat(122,'*** コマンド(//gs c [command]) ***')
    windower.add_to_chat(122,'trehun: トレハン(ショックウェーブ, 精霊魔法にトレハン付き)')
    windower.add_to_chat(122,'acc1250: 命中1250')
    windower.add_to_chat(122,'mokusya: モクシャ')
    windower.add_to_chat(122,'enmity: 敵対心-(レギオン)')
    windower.add_to_chat(122,'raetic: レテクバングル')
    
    sets.weapon.calad = {main="カラドボルグ", sub="ウトゥグリップ",}
    sets.weapon.anguta = {main="アングータ", sub="ウトゥグリップ",}
    sets.weapon.misanth = {main="ミサンスロピー", sub="ウトゥグリップ",}
    sets.weapon.axe = {main="ヘパテゾアクス", sub="ウトゥグリップ",}
    
    sets.precast.fc = {
        ammo="サピエンスオーブ",
        head={ name="カマインマスク+1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="ＦＬキュイラス+3",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヨリウムクウィス", augments={'Mag. Evasion+20','"Fast Cast"+3','Damage taken-3%',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="ゴールドモグベルト",
        left_ear="オノワイヤリング+1",
        right_ear="エテオレートピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.fc_impact = {
        ammo="サピエンスオーブ",
        body="トワイライトプリス",
        hands={ name="レイライングローブ", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
        legs={ name="ヨリウムクウィス", augments={'Mag. Evasion+20','"Fast Cast"+3','Damage taken-3%',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ボルトサージトルク",
        waist="フルームベルト+1",
        left_ear="エンチャンピアス+1",
        right_ear="ロケイシャスピアス",
        left_ring="ラハブリング",
        right_ring="キシャールリング",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.vit = {
        ammo="ノブキエリ",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="ＩＧキュイラス+3",
        hands={ name="オディシアガントレ", augments={'Accuracy+27','Weapon skill damage +4%','VIT+10',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="スレビアレギンス+2",
        neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
        neck="暗黒の数珠+2",
        left_ear="イシュヴァラピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
    }
    
    sets.precast.ws.str = {
        ammo="ノブキエリ",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="ＩＧキュイラス+3",
        hands={ name="オディシアガントレ", augments={'Accuracy+27','Weapon skill damage +4%','VIT+10',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="スレビアレギンス+2",
        -- neck="フォシャゴルゲット",
        neck="暗黒の数珠+2",
        waist="フォシャベルト",
        left_ear="イシュヴァラピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.multi = {
        ammo="ノブキエリ",
        head="フラマツッケット+2",
        body="ＩＧキュイラス+3",
        hands="フラママノポラ+2",
        legs="ＩＧフランチャ+3",
        feet="フラマガンビエラ+2",
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
        left_ear="テロスピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="ニックマドゥリング",
        right_ring="王将の指輪",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.acc = {
        ammo="ストンチタスラム+1",
        head="フラマツッケット+2",
        body="フラマコラジン+2",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="フラマガンビエラ+2",
        neck="暗黒の数珠+2",
        waist="エスカンストーン",
        left_ear="テロスピアス",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring="フラマリング",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.magic = {
        ammo="ノブキエリ",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="ＦＬキュイラス+3", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="フラマガンビエラ+2",
        neck="サンクトネックレス",
        waist="エスカンストーン",
        left_ear="ノーヴィオピアス",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.precast.ws.acc_1250 = {head='ＩＧバゴネット+3',}
    
    -- 両手剣
    sets.precast.ws['トアクリーバー'] = sets.precast.ws.vit
    sets.precast.ws['レゾルーション'] = sets.precast.ws.multi
    sets.precast.ws['グラウンドストライク'] = sets.precast.ws.str
    sets.precast.ws['スピンスラッシュ'] = sets.precast.ws.str
    sets.precast.ws['ショックウェーブ'] = sets.precast.ws.acc
    -- 両手鎌
    sets.precast.ws['エントロピー'] = sets.precast.ws.multi
    sets.precast.ws['クワイタス'] = sets.precast.ws.str
    sets.precast.ws['インサージェンシー'] = sets.precast.ws.multi
    sets.precast.ws['クロスリーパー'] = sets.precast.ws.str
    sets.precast.ws['ギロティン'] = sets.precast.ws.multi
    sets.precast.ws['ダークハーベスト'] = sets.precast.ws.magic
    sets.precast.ws['シャドーオブデス'] = sets.precast.ws.magic
    sets.precast.ws['インファナルサイズ'] = sets.precast.ws.magic
    -- 両手斧
    sets.precast.ws['アーマーブレイク'] = sets.precast.ws.acc
    sets.precast.ws['ウェポンブレイク'] = sets.precast.ws.acc
    sets.precast.ws['フルグレイク'] = sets.precast.ws.acc
    
    sets.precast.ability['ラストリゾート'] = {feet="ＦＬソルレット+3", back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},}
    sets.precast.ability['ウェポンバッシュ'] = {hands="ＩＧガントレ+2",}
    sets.precast.ability['ネザーヴォイド'] = {legs="ＨＴフランチャ+1",}
    sets.precast.ability['アルケインサークル'] = {feet='ＩＧソルレット+1',}
    sets.precast.ability['ブラッドウェポン'] = {body={ name="ＦＬキュイラス+3", augments={'Enhances "Blood Weapon" effect',}},}

    sets.midcast.magic_acc = {
        ammo="ペムフレドタスラム",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="ラトリソルレット",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="エンチャンピアス+1",
        right_ear="ディグニタリピアス",
        left_ring="スティキニリング+1",
        right_ring="キシャールリング",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
    }
    
    sets.midcast.drk_mgc_skill = {
        ammo="ペムフレドタスラム",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="カマインスケイル+1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs="ＨＴフランチャ+1",
        feet="ラトリソルレット",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="エンチャンピアス+1",
        right_ear="ディグニタリピアス",
        left_ring="エバネセンスリング",
        right_ring="スティキニリング+1",
        back={ name="デオルクネスマント", augments={'Attack+14','Dark magic skill +9','"Drain" and "Aspir" potency +25',}},
    }
    
    sets.midcast.dread_spikes = {
        ammo="ストンチタスラム+1",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="ＨＴキュイラス+1",
        hands={ name="ＥＭガントレ+1", augments={'HP+65','DEX+12','Accuracy+20',}},
        legs="ラトリクウィス",
        feet="ラトリソルレット",
        neck="サンクトネックレス",
        waist="ゴールドモグベルト",
        left_ear="オノワイヤリング+1",
        right_ear="オノワイヤリング",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back="月光の羽衣",
    }
    
    sets.midcast.impact = {
        ammo="ストンチタスラム+1",
        body="トワイライトプリス",
        hands="フラママノポラ+2",
        legs="フラマディル+2",
        feet="ＨＴソルレット+1",
        neck="ロリケートトルク+1",
        waist="オネイロスロープ",
        left_ear="エンチャンピアス+1",
        right_ear="ディグニタリピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.elemental = {
        ammo="ペムフレドタスラム",
        head={ name="ＦＬバーゴネット+3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="ＦＬキュイラス+3", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="ＦＬガントレット+3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="フラマガンビエラ+2",
        neck="エーラペンダント",
        waist="エスカンストーン",
        left_ear="ノーヴィオピアス",
        right_ear="フリオミシピアス",
        left_ring="女王の指輪+1",
        right_ring="女王の指輪+1",
        back={ name="アンコウマント", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
    }
    
    sets.midcast.drain = {
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        right_ring="メフィタスリング+1",
    }
    
    sets.midcast.absorb = {back="チュパローサマント",}
    
    sets.aftercast.melee_acc_1200 = {
        ammo="銀銭",
        head="フラマツッケット+2",
        body={ name="ＥＭオーベール+1", augments={'HP+65','DEX+12','Accuracy+20',}},
        hands={ name="ＥＭガントレ+1", augments={'HP+65','DEX+12','Accuracy+20',}},
        legs="ＩＧフランチャ+3",
        feet="フラマガンビエラ+2",
        -- neck="ロリケートトルク+1",
        neck="暗黒の数珠+2",
        waist="イオスケハベルト+1",
        left_ear="テロスピアス",
        right_ear="ブルタルピアス",
        left_ring="守りの指輪",
        right_ring="月光の指輪",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.aftercast.melee_acc_1250 = {neck="暗黒の数珠+2",} -- {neck='コンバタントトルク',}
    
    sets.aftercast.melee = sets.aftercast.melee_acc_1200
    
    sets.aftercast.idle = {
        ammo="ストンチタスラム+1",
        head={ name="オディシアヘルム", augments={'Accuracy+25 Attack+25','Weapon skill damage +5%','Accuracy+5','Attack+4',}},
        body="タルタロスプレート",
        hands="スレビアガントレ+2",
        legs={ name="カマインクウィス+1", augments={'HP+80','STR+12','INT+12',}},
        feet={ name="カマイングリーヴ+1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
        neck="ロリケートトルク+1",
        waist="フルームベルト+1",
        left_ear="オノワイヤリング+1",
        right_ear="エテオレートピアス",
        left_ring="守りの指輪",
        right_ring="ＶＣリング+1",
        back="月光の羽衣",
    }
    
    sets.midcast.trehun = {
        head="白ララブキャップ+1",
        hands={ name="バロラスミトン", augments={'Pet: Haste+1','Rng.Acc.+16','"Treasure Hunter"+2','Accuracy+19 Attack+19','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
        waist="チャークベルト",
    }
    
    sets.mokusya = {
        left_ear="ウエスクパール",
        right_ear="ディグニタリピアス",
        left_ring="シーリチリング+1",
        right_ring="月光の指輪",
    }
    
    sets.mokusya_ws = {}
    
    sets.mokusya_last_resort = {
        neck='コンバタントトルク',
        feet="ＦＬソルレット+3",
        left_ring="シーリチリング+1",
        right_ring="月光の指輪",
    }
    
    sets.mokusya_last_resort_ws = {}
    
    sets.enmity_down = {
        right_ear="シテレアパール",
    }
    
    sets.raetic_bangles = {
        body='フラマコラジン+2',
        hands="レテクバングル",
    }
    
    -- マクロのブック, セット変更
    send_command('input /macro book 16; wait 0.5; input /macro set 10')
end

function precast(spell)
    local set_equip = nil
    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)
    -- windower.add_to_chat(123, spell.skill)
    
    if spell.type == 'WeaponSkill' then
        if sets.precast.ws[spell.name] then

            set_equip = sets.precast.ws[spell.name]

            if is_mokusya then
                if buffactive['ラストリゾート'] then
                    set_equip = set_combine(set_equip, sets.mokusya_last_resort_ws)
                else
                    set_equip = set_combine(set_equip, sets.mokusya_ws)
                end
            end

            if is_enmity then
                set_equip = set_combine(set_equip, sets.enmity_down)
            end

        else
            set_equip = sets.precast.ws.multi
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    elseif string.find(spell.type, 'Magic') then
        if spell.name == 'インパクト' then
            set_equip = sets.precast.fc_impact
        else
            set_equip = sets.precast.fc
        end
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
    
    if spell.name == 'ドレッドスパイク' then
        set_equip = sets.midcast.dread_spikes
    elseif spell.name == 'インパクト' then
        set_equip = sets.midcast.impact
    elseif string.find(spell.name, 'ドレイン') then
        set_equip = set_combine(sets.midcast.drk_mgc_skill, sets.midcast.drain)
    elseif string.find(spell.name, 'アブゾ') then
        if buffactive['ダークシール'] then
            set_equip = set_combine(sets.midcast.magic_acc, sets.midcast.absorb)
        else
            set_equip = set_combine(sets.midcast.magic_acc, sets.midcast.absorb, {head='ＩＧバゴネット+3', right_ring="王将の指輪",})
        end
    elseif string.find(spell.name, 'エンダーク') then
        set_equip = sets.midcast.drk_mgc_skill
    elseif spell.skill == '弱体魔法' or spell.skill == '暗黒魔法' then
        set_equip = sets.midcast.magic_acc
    elseif spell.skill == '精霊魔法' then
        if is_trehun then
            set_equip = set_combine(sets.midcast.elemental, sets.midcast.trehun)
        else
            set_equip = sets.midcast.elemental
        end
    end
    
    if set_equip ~= nill then
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

        if is_mokusya then
            if buffactive['ラストリゾート'] then
                set_equip = set_combine(set_equip, sets.mokusya_last_resort)
            else
                set_equip = set_combine(set_equip, sets.mokusya)
            end
        end
        
        if is_enmity then
            set_equip = set_combine(set_equip, sets.enmity_down)
        end

        if is_raetic then
            set_equip = set_combine(set_equip, sets.raetic_bangles)
        end
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

         if is_mokusya then
            if buffactive['ラストリゾート'] then
                set_equip = set_combine(set_equip, sets.mokusya_last_resort)
            else
                set_equip = set_combine(set_equip, sets.mokusya)
            end
        end

        if is_enmity then
            set_equip = set_combine(set_equip, sets.enmity_down)
        end

        if is_raetic then
            set_equip = set_combine(set_equip, sets.raetic_bangles)
        end
    end
    
    if set_equip ~= nil then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'trehun' then
        if is_trehun then
            is_trehun = false
            sets.precast.ws['ショックウェーブ'] = sets.precast.ws.str
            windower.add_to_chat(122,'+++ トレハンなし +++')
        else
            is_trehun = true
            sets.precast.ws['ショックウェーブ'] = set_combine(sets.precast.ws.acc, sets.midcast.trehun)
            windower.add_to_chat(122,'+++ トレハンあり +++')
        end
    elseif command == 'acc1250' then
        if is_acc_1250 then
            is_acc_1250 = false
            set_acc_1200()
        else
            is_acc_1250 = true
            set_acc_1250()
        end
    elseif command == 'mokusya' then
        if is_mokusya then
            is_mokusya = false
            windower.add_to_chat(122,'+++ モクシャなし +++')
        else
            is_mokusya = true
            windower.add_to_chat(122,'+++ モクシャあり +++')
        end
    elseif command == 'enmity' then
        if is_enmity then
            is_enmity = false
            windower.add_to_chat(122, '+++ 敵対心-なし +++')
        else
            is_enmity = true
            windower.add_to_chat(122, '+++ 敵対心-あり　+++')
        end
    elseif command == 'raetic' then
        if is_raetic then
            is_raetic = false
            windower.add_to_chat(122, '+++ レテクバングルなし +++')
        else
            is_raetic = true
            windower.add_to_chat(122, '+++ レテクバングルあり +++')
        end
    end
end

function set_acc_1200()
    windower.add_to_chat(122,'+++ 命中1200装備 +++')
    sets.precast.ws['トアクリーバー'] = sets.precast.ws.vit
    sets.precast.ws['レゾルーション'] = sets.precast.ws.multi
    sets.precast.ws['グラウンドストライク'] = sets.precast.ws.str
    sets.precast.ws['エントロピー'] = sets.precast.ws.multi
    sets.precast.ws['クワイタス'] = sets.precast.ws.str
    sets.precast.ws['インサージェンシー'] = sets.precast.ws.multi
    sets.precast.ws['クロスリーパー'] = sets.precast.ws.str
    sets.precast.ws['ギロティン'] = sets.precast.ws.multi
    
    sets.aftercast.melee = sets.aftercast.melee_acc_1200
end

function set_acc_1250()
    windower.add_to_chat(122,'+++ 命中1250装備 +++')
    sets.precast.ws['トアクリーバー'] = set_combine(sets.precast.ws.vit, sets.precast.ws.acc_1250)
    sets.precast.ws['レゾルーション'] = set_combine(sets.precast.ws.multi, sets.precast.ws.acc_1250)
    sets.precast.ws['グラウンドストライク'] = set_combine(sets.precast.ws.str, sets.precast.ws.acc_1250)
    sets.precast.ws['エントロピー'] = set_combine(sets.precast.ws.multi, sets.precast.ws.acc_1250)
    sets.precast.ws['クワイタス'] = set_combine(sets.precast.ws.str, sets.precast.ws.acc_1250)
    sets.precast.ws['インサージェンシー'] = set_combine(sets.precast.ws.multi, sets.precast.ws.acc_1250)
    sets.precast.ws['クロスリーパー'] = set_combine(sets.precast.ws.str, sets.precast.ws.acc_1250)
    sets.precast.ws['ギロティン'] = set_combine(sets.precast.ws.multi, sets.precast.ws.acc_1250)
    
    sets.aftercast.melee = set_combine(sets.aftercast.melee_acc_1200, sets.aftercast.melee_acc_1250)
end