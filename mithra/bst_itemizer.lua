include('itemizer_lib')
local itemizer_equip = {}

local itemizer_petfood = {
    [1] = {get='get', put='put', bag='sack', name='ペットシータ'},
}

local itemizer_pet = {
    [1] = {get='get', put='put', bag='sack', name='褐色の麦汁'},
    [2] = {get='get', put='put', bag='sack', name='奏でる草汁'},
    [3] = {get='get', put='put', bag='sack', name='猛進する穀物汁'},
}

function itemizer_get()
    get_equip(itemizer_equip)
end

function itemizer_put()
    put_equip(itemizer_equip)
end

function itemizer_get_petfood()
    get_equip(itemizer_petfood)
end

function itemizer_put_petfood()
    put_equip(itemizer_petfood)
end

function itemizer_get_pet()
    get_equip(itemizer_pet)
end

function itemizer_put_pet()
    put_equip(itemizer_pet)
end