include('itemizer_lib')
local itemizer_equip = {}

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