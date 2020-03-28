bp = {}
bp['Carbuncle'] = {
    rage = {
        [1] = {name='ポイズンネイル', desc='突属性物理(貫通)'},
        [2] = {name='プチメテオ', desc='光属性'},
        [3] = {name='ホーリーミスト', desc='光属性'},
    },
    ward = {
        buff = {
            [1] = {name='ルビーの輝き', desc='物理・魔法防御UP'},
            [2] = {name='ルビーの癒しII', desc='範囲HP回復'},
            [3] = {name='ルビーの安らぎ', desc='状態異常回復'},
            [4] = {name='ルビーの贖罪', desc='敵対心減少'},
            [5] = {name='ルビーの煌き', desc='ステータスUP'},
            [6] = {name='ルビーの癒し', desc='HP回復'},
        },
    },
    astralflow = {
        [1] = {name='シアリングライト', desc='光属性'},
    },
}
bp['Titan'] = {
    rage = {
        [1] = {name='クラッグスロー', desc='斬属性遠隔(重力/切断),スロウ'},
        [2] = {name='ジオクラッシュ', desc='土属性, スタン'},
        [3] = {name='マウンテンバスター', desc='打属性物理(重力/効果),バインド'},
        [4] = {name='メガリススロー', desc='斬属性遠隔(硬化),スロウ'},
        [5] = {name='ロックバスター', desc='打属性物理(振動),バインド'},
        [6] = {name='ロックスロー', desc='斬属性遠隔(切断),スロウ'},
        [7] = {name='ストーンII', desc='土属性'},
        [8] = {name='ストーンIV', desc='土属性'},
    },
    ward = {
        buff = {
            [1] = {name='大地の守り', desc='範囲ストンスキン'},
            [2] = {name='大地の鎧', desc='範囲大ダメ軽減'},
        },
    },
    astralflow = {
        [1] = {name='アースフューリー', desc='土属性'},
    },
}
bp['Leviathan'] = {
    rage = {
        [1] = {name='グランドフォール', desc='水属性'},
        [2] = {name='スピニングダイブ', desc='斬属性物理(湾曲/炸裂)'},
        [3] = {name='テールウィップ', desc='打属性物理(炸裂),ヘヴィ'},
        [4] = {name='バラクーダダイブ', desc='斬属性物理(振動)'},
        [7] = {name='ウォータII', desc='水属性'},
        [8] = {name='ウォータIV', desc='水属性'},
    },
    ward = {
        buff = {
            [1] = {name='湧水', desc='範囲HP状態異常回復'},
            [2] = {name='スージングカレント', desc='被ケアル回復量UP'},
        },
        debuff = {
            [1] = {name='スロウガ', desc='範囲スロウ'},
            [2] = {name='タイダルロア', desc='範囲攻撃力DOWN'},
        }
    },
    astralflow = {
        [1] = {name='タイダルウェイブ', desc='水属性'},
    },
}
bp['Garuda'] = {
    rage = {
        [1] = {name='ウインドブレード', desc='風属性'},
        [2] = {name='プレデタークロー', desc='斬属性3回(分解/切断)'},
        [3] = {name='クロー', desc='突属性物理(炸裂)'},
        [7] = {name='エアロII',desc='風属性'},
        [8] = {name='エアロIV', desc='風属性'},
    },
    ward = {
        buff = {
            [1] = {name='ヘイスガII', desc='範囲ヘイストII'},
            [2] = {name='風の囁き', desc='範囲HP回復'},
            [3] = {name='真空の鎧', desc='範囲ブリンク'},
            [4] = {name='真空の具足', desc='範囲移動速度UP'},
            [5] = {name='ヘイスガ', desc='範囲ヘイスト'},
        },
    },
    astralflow = {
        [1] = {name='エリアルブラスト', desc='風属性'},
    },
}
bp['Ifrit'] = {
    rage = {
        [1] = {name='コンフラグストライク', desc='火属性,バーン'},
        [2] = {name='メテオストライク', desc='火属性'},
        [3] = {name='フレイムクラッシュ', desc='格闘属性3回+火属性(核熱/振動)'},
        [4] = {name='ダブルパンチ', desc='打属性2回(収縮)'},
        [5] = {name='バーニングストライク', desc='打属性+火属性(振動)'},
        [6] = {name='パンチ', desc='打属性物理(溶解)'},
        [7] = {name='ファイアII', desc='火属性'},
        [8] = {name='ファイアIV', desc='火属性'},
    },
    ward = {
        buff = {
            [1] = {name='紅蓮の咆哮', desc='範囲ウォークライ'},
            [2] = {name='灼熱の咆哮', desc='範囲エンファイア'},
        },
    },
    astralflow = {
        [1] = {name='インフェルノ', desc='火属性'},
    },
}
bp['Shiva'] = {
    rage = {
        [1] = {name='ヘヴンリーストライク', desc='氷属性'},
        [2] = {name='ラッシュ', desc='格闘属性5回(湾曲/切断)'},
        [3] = {name='ダブルスラップ', desc='打属性2回(切断)'},
        [4] = {name='アクスキック', desc='打属性物理(硬化)'},
        [7] = {name='ブリザドII', desc='氷属性'},
        [8] = {name='ブリザドIV', desc='氷属性'},
    },
    ward = {
        buff = {
            [1] = {name='凍てつく鎧', desc='範囲アイススパイク'},
            [2] = {name='クリスタルブレシング', desc='範囲TPボーナス+250'},
        },
        debuff = {
            [1] = {name='スリプガ', desc='範囲睡眠'},
            [2] = {name='ダイヤモンドストーム', desc='回避率DOWN'},
        }
    },
    astralflow = {
        [1] = {name='ダイヤモンドダスト', desc='氷属性'},
    },
}
bp['Ramuh'] = {
    rage = {
        [1] = {name='ボルトストライク', desc='打属性3回(分解/切断),スタン'},
        [2] = {name='サンダーストーム', desc='雷属性'},
        [3] = {name='カオスストライク', desc='打属性3回(分解/貫通),スタン'},
        [4] = {name='サンダースパーク', desc='範囲雷属性, 麻痺'},
        [5] = {name='ショックストライク', desc='打属性物理(衝撃),スタン'},
        [7] = {name='サンダーII', desc='雷属性'},
        [8] = {name='サンダーIV', desc='雷属性'},
    },
    ward = {
        buff ={
            [1] = {name='電雷の鎧', desc='範囲ショックスパイク'},
            [2] = {name='雷鼓', desc='範囲エンサンダー'},
        },
        debuff = {
            [1] = {name='スタンガ', desc='範囲スタン'},
        }
    },
    astralflow = {
        [1] = {name='ジャッジボルト', desc='雷属性'},
    },
}
bp['Fenrir'] = {
    rage = {
        [1] = {name='インパクト', desc='闇属性, 全ステータスDOWN'},
        [2] = {name='ルナーベイ', desc='闇属性'},
        [3] = {name='エクリプスバイト', desc='斬属性3回(重力/切断)'},
        [4] = {name='クレセントファング', desc='突属性物理(貫通),麻痺'},
        [5] = {name='ムーンリットチャージ', desc='打属性物理(収縮),暗闇'},
    },
    ward = {
        buff = {
            [1] = {name='上弦の唸り', desc='範囲ステータスUP'},
            [2] = {name='下弦の咆哮', desc='命中, 回避率UP'},
            [3] = {name='ヘヴンズハウル', desc='HPまたはMP吸収'},
        },
        debuff = {
            [1] = {name='ルナークライ', desc='命中, 回避率DOWN'},
            [2] = {name='ルナーロア', desc='2効果ディペル'},
        }
    },
    astralflow = {
        [1] = {name='ハウリングムーン', desc='闇属性'},
    },
}
bp['Diabolos'] = {
    rage = {
        [1] = {name='ブラインドサイド', desc='格闘属性物理(重力/貫通)'},
        [2] = {name='ナイトテラー', desc='闇属性'},
        [3] = {name='ネザーブラスト', desc='闇属性'},
        [4] = {name='カミサドー', desc='打属性物理(収縮)'},
    },
    ward = {
        buff = {
            [1] = {name='ノクトシールド', desc='範囲ファランクス'},
            [2] = {name='ドリームシュラウド', desc='魔攻, 魔防UP'},
        },
        debuff = {
            [1] = {name='ソ\\ムノレンス', desc='範囲ヘヴィ'},
            [2] = {name='アルティメットテラー', desc='範囲ステータスDOWN'},
            [3] = {name='パボルノクターナス', desc='デス'}
        },
    },
    astralflow = {
        [1] = {name='ルイナスオーメン', desc='HP割合ダメ'},
    },
}
bp['Cait Sith'] = {
    rage = {
        [1] = {name='リーガルガッシュ', desc='斬属性3回(湾曲/炸裂)'},
        [2] = {name='レベル？ホーリー', desc='光属性'},
        [3] = {name='リーガルスクラッチ', desc='斬属性3回(切断)'},
    },
    ward = {
        buff = {
            [1] = {name='レイズII', desc=''},
            [2] = {name='リレイズII', desc=''},
        },
        debuff = {
            [1] = {name='ミュインララバイ', desc='範囲睡眠, TPリセット'},
            [2] = {name='イアリーアイ', desc='静寂, アムネジア(視線判定)'},
        }
    },
    astralflow = {
        [1] = {name='アルタナフェーバー', desc='範囲アレイズ, リレイズ'},
    },
}
bp['Odin'] = {
    rage = {},
    ward = {
        buff = {},
        debuff = {}
    },
    astralflow = {
        [1] = {name='斬鉄剣', desc='範囲デス'},
    },
}
bp['Alexander'] ={
    rage = {},
    ward = {
        buff = {},
        debuff = {}
    },
    astralflow = {
        [1] = {name='絶対防御', desc='被ダメカット, レジスト率UP'},
    },
}
bp['Atomos'] = {
    rage = {},
    ward = {
        buff = {},
        debuff = {}
    },
    astralflow = {
        [1] = {name='ディコンストラクション', desc='強化吸収'},
        [2] = {name='クロノスフト', desc='強化付与'},
    },
}
bp['Siren'] = {
    rage = {
        [1] = {name='ヒステリックアサルト', desc='突属性3回(分解/貫通),HP吸収'},
        [2] = {name='ソ\\ニックバフェット', desc='風属性,ディスペル'},
        [3] = {name='ラウンドハウス', desc='打属性'},
        [4] = {name='ウェルト', desc='斬属性'},
        [7] = {name='トルネドII', desc='風属性'},
    },
    ward = {
        buff ={
            [1] = {name='風の守り', desc='範囲魔法バリア'},
            [2] = {name='シヌーク', desc='範囲アクアベール'},
            [3] = {name='疾風の刃', desc='範囲エンエアロ'},
        },
        debuff = {
            [1] = {name='ルナティックボイス', desc='範囲静寂'},
            [2] = {name='修羅のエレジー', desc='エレジー'},
        }
    },
    astralflow = {
        [1] = {name='クラーサクコール', desc='風属性'},
    },
}

bp_physical=S{'パンチ','ロックスロー','バラクーダダイブ','クロー','アクスキック','ショックストライク','カミサドー','リーガルスクラッチ','ポイズンネイル',
            'ムーンリットチャージ','クレセントファング','ロックバスター','テールウィップ','ダブルパンチ','メガリススロー','ダブルスラップ','エクリプスバイト',
            'マウンテンバスター','スピニングダイブ','プレデタークロー','ラッシュ','カオスストライク','クラッグスロー','ボルトストライク','リーガルガッシュ',
            'クラッグスロー','ブラインドサイド','ヒステリックアサルト','ラウンドハウス','ウェルト'}

bp_hybrid=S{'バーニングストライク','フレイムクラッシュ'}

bp_magical=S{'インフェルノ','アースフューリー','タイダルウェイブ','エリアルブラスト','ダイヤモンドダスト','ジャッジボルト','シアリングライト','ハウリングムーン',
            'ルイナスオーメン','ファイアII','ストーンII','ウォータII','エアロII','ブリザドII','サンダーII','サンダースパーク','ソムノレンス',
            'プチメテオ','ファイアIV','ストーンIV','ウォータIV','エアロIV','ブリザドIV','サンダーIV','ネザーブラスト','メテオストライク',
            'ジオクラッシュ','グランドフォール','ウインドブレード','ヘヴンリーストライク','サンダーストーム','レベル？ホーリー','ホーリーミスト','ルナーベイ',
            'ナイトテラー','コンフラグストライク','斬鉄剣','インパクト','ソニックバフェット','トルネドII'}
            
bp_debuff=S{'ルナークライ','ミュインララバイ','ナイトメア','ルナーロア','スロウガ','アルティメットテラー','スリプガ','イアリーアイ','タイダルロア',
            'ダイヤモンドストーム','スタンガ','パボルノクターナス','ルナティックボイス','修羅のエレジー'}
            
bp_buff=S{'ルビーの輝き','凍てつく鎧','雷鼓','紅蓮の咆哮','電雷の鎧','上弦の唸り','ヘイスガ','ノクトシールド',
            '下弦の咆哮','ドリームシュラウド','大地の守り','真空の具足','灼熱の咆哮','ルビーの安らぎ','ヘヴンズハウル',
            'ルビーの煌き','ヘイスガII','クリスタルブレシング','真空の鎧','大地の鎧','スージングカレント','絶対防御','風の守り','シヌーク','疾風の刃'}

bp_other=S{'ルビーの癒し','レイズII','リレイズII','風の囁き','ルビーの贖罪','湧水','ルビーの癒しII','アルタナフェーバー'} 

avatar_list=S{'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle','Fire Spirit','Air Spirit','Ice Spirit',
            'Thunder Spirit','Light Spirit','Dark Spirit','Earth Spirit','Water Spirit','Cait Sith','Alexander','Odin','Atomos'}

spirit_element = {}
spirit_element['火']='火精霊召喚'
spirit_element['土']='土精霊召喚'
spirit_element['水']='水精霊召喚'
spirit_element['風']='風精霊召喚'
spirit_element['氷']='氷精霊召喚'
spirit_element['雷']='雷精霊召喚'
spirit_element['光']='光精霊召喚'
spirit_element['闇']='闇精霊召喚'

-- 弱天候
weather = {}
weather['熱波'] = '火'
weather['雨'] = '水'
weather['雷'] = '雷'
weather['砂塵'] = '土'
weather['風'] = '風'
weather['雪'] = '氷'
weather['オーロラ'] = '光'
weather['妖霧'] = '闇'

-- 強天候
weather_strong = {}
weather_strong['灼熱波'] = '火'
weather_strong['スコール'] = '水'
weather_strong['雷雨'] = '雷'
weather_strong['砂嵐'] = '土'
weather_strong['暴風'] = '風'
weather_strong['吹雪'] = '氷'
weather_strong['神光'] = '光'
weather_strong['闇'] = '闇'

-- 弱点属性
weaken_element = {}
weaken_element['火'] = '水'
weaken_element['水'] = '雷'
weaken_element['雷'] = '土'
weaken_element['土'] = '風'
weaken_element['風'] = '氷'
weaken_element['氷'] = '火'
weaken_element['光'] = '闇'
weaken_element['闇'] = '光'

--[[
//gs c bp rage [number] [target]
//gs c bp ward buff [number] [target]
//gs c bp ward debuff [number] [target]
//gs c bp astralflow [number] [target]
    target: t, st
]]
function bp_commnad(command)
    local args = command:split(' ')

    if args[1]:lower() == 'bp' then
        if not pet.isvalid then
            windower.add_to_chat(122,'No avatar currently available.')
            return
        end

        if not args[2] then
            windower.add_to_chat(123,'No bp type given.')
            return
        end

        local bp_type = args[2]:lower()

        if bp_type == 'rage' or bp_type == 'astralflow' then

            if bp_type == 'astralflow' and not buffactive['アストラルフロウ'] then
                windower.add_to_chat(122,'Cannot use Astral Flow Blood Pact at this time.')
                return
            end

            if not args[3] then
                windower.add_to_chat(123,'No bp number given.')
                return
            end

            local rage_number = tonumber(args[3])

            if not bp[pet.name][bp_type][rage_number] then
                windower.add_to_chat(123,'Unknown rage type: '..tostring(bp_type)..' '..tostring(rage_number))
                return
            end
            
            if not args[4] then
                windower.add_to_chat(123,'No target given.')
                return
            end

            local target = args[4]:lower()

            if target ~= 't' and target ~= 'st' then
                windower.add_to_chat(123,'Invalid target: '..tostring(target))
				return
            end

            local bp_name = bp[pet.name][bp_type][rage_number]['name']
            local target_type = gearswap.res.job_abilities:with('ja', bp_name:gsub('\\','')).targets
            -- windower.add_to_chat(122, pacts[pact][pet.name])
            local target_str = '<me>'
            if target_type['Enemy'] then
                if target == 'st' then
                    target_str = '<stnpc>'
                else
                    target_str = '<t>' 
                end
            elseif target_type['Party'] then
                if target == 'st' then
                    target_str = '<stpc>'
                else
                    target_str = '<t>' 
                end
            elseif target_type['Self'] then
                if target == 'st' then
                    target_str = '<stpc>'
                else
                    target_str = '<me>' 
                end
            else
                target_str = '<st>'
            end
            
            -- windower.add_to_chat(122,pacts[pact][pet.name]..' '..target_str)
            send_command('input /pet '..windower.to_shift_jis(bp[pet.name][bp_type][rage_number]['name'])..' '..target_str)

        elseif bp_type == 'ward' then
            if not args[3] then
                windower.add_to_chat(123,'No ward type given.')
                return
            end
            local ward_type = args[3]:lower()

            if not args[4] then
                windower.add_to_chat(123,'No bp number given.')
                return
            end

            local ward_number = tonumber(args[4])

            if not bp[pet.name][bp_type][ward_type][ward_number] then
                windower.add_to_chat(123,'Unknown ward type: '..tostring(bp_type)..' '..tostring(ward_type)..' '..tostring(ward_number))
                return
            end

            if not args[5] then
                windower.add_to_chat(123,'No target given.')
                return
            end

            local target = args[5]:lower()

            if target ~= 't' and target ~= 'st' then
                windower.add_to_chat(123,'Invalid target: '..tostring(target))
				return
            end

            local bp_name = bp[pet.name][bp_type][ward_type][ward_number]['name']
            local target_type = gearswap.res.job_abilities:with('ja', bp_name:gsub('\\','')).targets
            -- windower.add_to_chat(122, pacts[pact][pet.name])
            local target_str = '<me>'
            if target_type['Enemy'] then
                if target == 'st' then
                    target_str = '<stnpc>'
                else
                    target_str = '<t>' 
                end
            elseif target_type['Party'] then
                if target == 'st' then
                    target_str = '<stpc>'
                else
                    target_str = '<t>' 
                end
            elseif target_type['Self'] then
                if target == 'st' then
                    target_str = '<stpc>'
                else
                    target_str = '<me>' 
                end
            else
                target_str = '<st>'
            end
            
            -- windower.add_to_chat(122,pacts[pact][pet.name]..' '..target_str)
            send_command('input /pet '..windower.to_shift_jis(bp[pet.name][bp_type][ward_type][ward_number]['name'])..' '..target_str)
        else
            windower.add_to_chat(123,'Invalid bp type: '..tostring(bp_type))
        end

    end
end

function spirit_command()
    local w_strong = weather_strong[world.weather]
    local w_normal = weather[world.weather]
    local spirit_str = spirit_element[world.day_element]
    if w_strong then
        spirit_str = spirit_element[w_strong]
    elseif w_normal and world.day_element ~= weaken_element[w_normal] then
        spirit_str = spirit_element[w_normal]
    else
        spirit_str = spirit_element[world.day_element]
    end
    send_command('input /magic '..windower.to_shift_jis(spirit_str)..' <me>')
end

local texts = require('texts')
bp_box = texts.new('${name}\n${hpp}%\n神獣の加護: ${favor_state}\n契約の履行:\n${pact}',{text={font='ＭＳ ゴシック', size=10}, pos={x=760, y=550}, padding = 5, bg={alpha=180}})
bp_box:show()

function bp_update()
    if buffactive['神獣の加護'] then
        bp_box.favor_state = '\\cs(50,50,255)ON\\cr'
    else
        bp_box.favor_state = '\\cs(255,50,50)OFF\\cr'
    end
    local lines = L{}
    bp_box.pact = ''
    if pet.name then
        bp_box.name = pet.name
        bp_box.hpp = pet.hpp
        
        if bp[pet.name] then
            lines:append('Rage(幻術)')
            if bp[pet.name]['rage'] then
                -- for i,v in ipairs(bp[pet.name]['rage']) do
                --     lines:append('%s: %s: %s':format(i,v['name'], v['desc']))
                -- end
                for i = 1, 8 do
                    local v = bp[pet.name]['rage'][i]
                    if v then
                        lines:append('%s: %s: %s':format(i,v['name'], v['desc']))
                    end
                end
            end
            lines:append('')
            lines:append('Ward(験術)')
            if bp[pet.name]['ward']['buff'] then
                lines:append('Buff:')
                for i,v in ipairs(bp[pet.name]['ward']['buff']) do
                    lines:append('%s: %s: %s':format(i,v['name'], v['desc']))
                end
            end
            lines:append('')
            if bp[pet.name]['ward']['debuff'] then
                lines:append('Debuff:')
                for i,v in ipairs(bp[pet.name]['ward']['debuff']) do
                    lines:append('%s: %s: %s':format(i,v['name'], v['desc']))
                end
            end
            lines:append('')
            lines:append('アストラルフロー')
            if bp[pet.name]['astralflow'] then
                for i,v in ipairs(bp[pet.name]['astralflow']) do
                    lines:append('%s: %12s: %s':format(i,v['name'], v['desc']))
                end
            end
        end
    else
        bp_box.name = 'No Avatar'
        bp_box.hpp = '0'
    end
    if lines:length() > 0 then
        bp_box.pact = lines:concat('\n')
    end
end

function bp_destroy()
    bp_box:destroy()
end

local update_time = 0
local update_interval = 1
-- windower.register_event('prerender', function()
--     local curr = os.clock()
--     if curr > frame_time + update_interval then
--         frame_time = curr
--         bp_update()
--     end
-- end)

windower.register_event('time change', function(new, old)
    local curr = os.clock()
    if curr > update_time + update_interval then
        update_time = curr
        bp_update()
    end
end)