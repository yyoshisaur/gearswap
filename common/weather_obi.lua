local weather = {}
local weather_strong = {}
local weaken_element = {}
local elemental_obi = {}

-- 弱天候
weather['火'] = '熱波'
weather['水'] = '雨'
weather['雷'] = '雷'
weather['土'] = '砂塵'
weather['風'] = '風'
weather['氷'] = '雪'
weather['光'] = 'オーロラ'
weather['闇'] = '妖霧'

-- 強天候
weather_strong['火'] = '灼熱波'
weather_strong['水'] = 'スコール'
weather_strong['雷'] = '雷雨'
weather_strong['土'] = '砂嵐'
weather_strong['風'] = '暴風'
weather_strong['氷'] = '吹雪'
weather_strong['光'] = '神光'
weather_strong['闇'] = '闇'

-- 弱点属性
weaken_element['火'] = '水'
weaken_element['水'] = '雷'
weaken_element['雷'] = '土'
weaken_element['土'] = '風'
weaken_element['風'] = '氷'
weaken_element['氷'] = '火'
weaken_element['光'] = '闇'
weaken_element['闇'] = '光'

-- 所持している属性帯(所持していない場合はnil)
elemental_obi['火'] = nil
elemental_obi['水'] = nil
elemental_obi['雷'] = nil
elemental_obi['土'] = nil
elemental_obi['風'] = nil
elemental_obi['氷'] = nil
elemental_obi['光'] = nil
elemental_obi['闇'] = nil

local hachirin = {waist="八輪の帯",}

function get_hachirin(spell_element)
    if elemental_obi[spell_element] then
        if spell_element == world.weather_element or spell_element == world.day_element then
            return elemental_obi[spell_element]
        else
            return nil
        end
    else
        if weather_strong[spell_element] == world.weather then
            return hachirin
        elseif weather[spell_element] == world.weather
                and world.day_element ~= weaken_element[spell_element] then
            return hachirin
        elseif world.day_element == spell_element
                and world.weather ~= weather_strong[weaken_element[spell_element]]
                and world.weather ~= weather[weaken_element[spell_element]] then
            return hachirin
        else
            return nil
        end
    end
end

function init_elemental_obi()
    elemental_obi = {}
    elemental_obi['火'] = nil
    elemental_obi['水'] = nil
    elemental_obi['雷'] = nil
    elemental_obi['土'] = nil
    elemental_obi['風'] = nil
    elemental_obi['氷'] = nil
    elemental_obi['光'] = nil
    elemental_obi['闇'] = nil
end

function set_elemental_obi(obi)
    if obi == '火輪の帯' then
        elemental_obi['火'] = {waist=obi,}
    elseif obi == '水輪の帯' then
        elemental_obi['水'] = {waist=obi,}
    elseif obi == '雷輪の帯' then
        elemental_obi['雷'] = {waist=obi,}
    elseif obi == '土輪の帯' then
        elemental_obi['土'] = {waist=obi,}
    elseif obi == '風輪の帯' then
        elemental_obi['風'] = {waist=obi,}
    elseif obi == '氷輪の帯' then
        elemental_obi['氷'] = {waist=obi,}
    elseif obi == '光輪の帯' then
        elemental_obi['光'] = {waist=obi,}
    elseif obi == '闇輪の帯' then
        elemental_obi['闇'] = {waist=obi,}
    end
end

function get_elemental_obi()
    return elemental_obi
end

init_elemental_obi()