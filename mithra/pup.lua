function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.midcast = {}
    sets.aftercast = {}

    sets.maneuvers = S{'ファイアマニューバ','アイスマニューバ', 'ウィンドマニューバ', 'アースマニューバ', 'サンダーマニューバ', 'ウォータマニューバ', 'ライトマニューバ', 'ダークマニューバ',}

    sets.precast.maneuvers = {
        main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        neck="バフーンカラー",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.midcast.ws_tp = {
        feet={ name="那伽脚絆", augments={'Pet: HP+100','Pet: Accuracy+25','Pet: Attack+25',}},
        back={ name="デスパースマント", augments={'STR+1','DEX+3','Pet: TP Bonus+460','"Martial Arts"+10',}},
    }

    sets.aftercast.idle = {
        main={ name="オータス", augments={'Accuracy+70','Pet: Accuracy+70','Pet: Haste+10%',}},
        range="ディヴィネーター",
        ammo="ルブリカント+3",
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="エンパスネックレス",
        waist="クルスカサッシュ+1",
        left_ear="ライムアイスピアス",
        right_ear="ハンドラーピアス+1",
        left_ring="ヴァラールリング+1",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

        -- マクロのブック, セット変更
        send_command('input /macro book 3; wait 0.5; input /macro set 1')

end

function precast(spell)
    local set_equip = nil

    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)

    if spell.type == 'PetCommand' then
        if sets.maneuvers:contains(spell.name) then
            set_equip = sets.precast.maneuvers
        end
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
        set_equip = sets.aftercast.idle
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

function pet_midcast(spell)
    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)
    -- windower.add_to_chat(123, pet.tp)

    local set_equip = nil

    -- if spell.type == 'MonsterSkill' then
    --     set_equip = sets.midcast.ws_tp
    -- end

    if set_equip then
        equip(set_equip)
    end
end

function pet_aftercast(spell)
    local set_equip = nil
    
    if player.status == 'Engaged' then
        set_equip = sets.aftercast.idle
    else
        set_equip = sets.aftercast.idle
    end
    
    if set_equip then
        equip(set_equip)
    end
end
    -- player.buffdetails name time buff date
    -- local os_time = os.time()
    -- for i, buff in pairs(player.buff_details) do

    --     buff_time = buff.time - os_time
    --     local second = math.floor( buff_time % 60 )
    --     local minute = math.floor( buff_time / 60 )
    --     -- windower.add_to_chat(122, buff.name..' '..minute..'m '..second..'s')

    --     -- for j, b in pairs(buff.buff) do
    --     --     windower.add_to_chat(123, j..b)
    --     -- end

    --     -- for k, d in pairs(buff.date) do
    --     --     windower.add_to_chat(124, k..d)
    --     -- end
    -- end