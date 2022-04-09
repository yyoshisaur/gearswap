include('lockstyle')

local lockstyle_set = {
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['踊'] = {
    main = {name='トゥワシュトラ', id=20587},
    sub = {name='トゥワシュトラ', id=20587},
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['モ'] = {
    main = {name='スファライ', id=20509},
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['か'] = {
    main = {name='乾坤圏', id=20511},
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['シ'] = {
    main = {name='トゥワシュトラ', id=20587},
    sub = {name='トゥワシュトラ', id=20587},
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['学'] = {
    main = 'ゾアノン',
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['獣'] = {
    sub = 'リフキンガード',
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

lockstyle_set['獣']['二刀流'] = {
    head = 'アイパッチ',
    body = 'サベジトップ+1',
    legs = 'ギーヴトラウザ',
    feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
}

function mystyle(main, sub)
    if lockstyle_set[main] then
        if S{'忍', '踊'}:contains(sub) and lockstyle_set[main]['二刀流'] then
            lockstyle(lockstyle_set[main]['二刀流'], main..'/'..sub..'(二刀流)')
        else
            lockstyle(lockstyle_set[main], main..'/'..sub)
        end
    else
        lockstyle(lockstyle_set, main..'/'..sub)
    end
end