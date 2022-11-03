include('lockstyle')

local lockstyle_set = {}
lockstyle_set['ナ']={
    main = {name='ブルトガング', id=20687},
    sub = 'リフキンガード',
    head="ＡＴシャポー+3",
    body = 'フリアベスト',
    hands="ＣＳガントリー+2",
    legs = 'ＧＯパンツ+3',
    feet = 'ＡＢローファー+3',
}

lockstyle_set['赤']={
    main = 'クロセアモース',
    sub = 'リフキンガード',
    head="ＡＴシャポー+3",
    body = 'フリアベスト',
    hands="ＣＳガントリー+2",
    legs = 'ＧＯパンツ+3',
    feet = 'ＡＢローファー+3',
}

lockstyle_set['赤']['二刀流'] = {
    main = 'クロセアモース',
    sub = 'ロスタム',
    head="ＡＴシャポー+3",
    body = 'フリアベスト',
    hands="ＣＳガントリー+2",
    legs = 'ＧＯパンツ+3',
    feet = 'ＡＢローファー+3',
}

lockstyle_set['学'] = {
    main = 'ムサ',
    head="ＡＴシャポー+3",
    body = 'フリアベスト',
    hands="ＣＳガントリー+2",
    legs = 'ＧＯパンツ+3',
    feet = 'ＡＢローファー+3',
}

lockstyle_set['風'] = {
    main = {name='ガンバンテイン', id=21079},
    sub = 'リフキンガード',
    head="ＡＴシャポー+3",
    body = 'フリアベスト',
    hands="ＣＳガントリー+2",
    legs = 'ＧＯパンツ+3',
    feet = 'ＡＢローファー+3',
}

lockstyle_set['剣'] = {
    head="ＡＴシャポー+3",
    body = 'フリアベスト',
    hands="ＣＳガントリー+2",
    legs = 'ＧＯパンツ+3',
    feet = 'ＡＢローファー+3',
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