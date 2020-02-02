include('itemizer_lib')
local itemizer_equip = {
    [1] = {get='get', put='put', bag='case', name='ＰＭマスク+3'},
    [2] = {get='gets', put='puts', bag='case', name='ＡＧマスク+3'},
    [3] = {get='get', put='put', bag='case', name='ＢＩマスク+1'},
    [4] = {get='get', put='put', bag='case', name='ＰＭロリカ+3'},
    [5] = {get='get', put='put', bag='case', name='ＡＧロリカ+3'},
    [6] = {get='get', put='put', bag='case', name='ＢＩロリカ+1'},
    [7] = {get='get', put='put', bag='case', name='ＡＧマフラ+3'},
    [8] = {get='get', put='put', bag='case', name='ＰＭクウィス+3'},
    [9] = {get='get', put='put', bag='case', name='ＡＧクウィス+3'},
    [10] = {get='get', put='put', bag='case', name='ＰＭカリガ+3'},
    [11] = {get='get', put='put', bag='case', name='ＡＧカリガ+3'},
    [12] = {get='get', put='put', bag='case', name='バロラスグリーヴ'},
    [13] = {get='get', put='put', bag='case', name='ヴォルトソルレ'},
    [14] = {get='gets', put='puts', bag='case', name='シコルマント'},
    [15] = {get='get', put='put', bag='case', name='フロプトヘルム'},
    [16] = {get='get', put='put', bag='case', name='フロプトブレスト'},
    [17] = {get='get', put='put', bag='case', name='ヴィムトルク+1'},
}

local itemizer_abyssea = {
    [1] = {get='get', put='put', bag='safe2', name='エクスカリパー'},
    [2] = {get='get', put='put', bag='safe2', name='アーンダガー'},
    [3] = {get='get', put='put', bag='safe2', name='ブレイブブレイドII'},
    [4] = {get='get', put='put', bag='safe2', name='ロスシックル'},
    [5] = {get='get', put='put', bag='safe2', name='ヅェーシシュの薙刀'},
    [6] = {get='get', put='put', bag='safe2', name='トレイニービュラン'},
    [7] = {get='get', put='put', bag='safe2', name='斬魔刀改'},
    [8] = {get='get', put='put', bag='safe2', name='ソウルフレアワンド'},
    [9] = {get='get', put='put', bag='safe2', name='ラムスタッフ'},
    [10] = {get='get', put='put', bag='safe2', name='剣豪鉢巻'},
}
function itemizer_get()
    get_equip(itemizer_equip)
end

function itemizer_put()
    put_equip(itemizer_equip)
end

function itemizer_get_abyssea()
    get_equip(itemizer_abyssea)
end

function itemizer_put_abyssea()
    put_equip(itemizer_abyssea)
end