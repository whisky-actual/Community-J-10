dofile('Scripts/Database/Weapons/weapon_utils.lua')

tail_solid  = { 1.0, 1.0, 1.0, 1.0 };
tail_solid1 = { 1.0, 1.0, 1.0, 0.8 };
tail_liquid = { 0.9, 0.9, 0.9, 0.05 };

eject_speed = 1.2

function RocketPod(shape, element, count, pattern)
    local ret = {{ShapeName = shape, IsAdapter = true}}

    if element ~= nil and count ~= nil then
        local pattern = pattern or "tube_%02d"
        for i = 1, count do
            if i > 9 then
                ret[#ret + 1] = {
                    ShapeName      = element,
                    connector_name = "tube_" .. tostring(i),
                    DrawArgs  = {
                        [1] = {2, 1.0},
                    }
                }
            elseif i > 0 then
                ret[#ret + 1] = {
                    ShapeName      = element,
                    connector_name = "tube_0" .. i,
                    DrawArgs  = {
                        [1] = {2, 1.0},
                    }
                }
            end
        end
    end

    return ret
end


function copyTable(target, src)
    for i, v in pairs(src) do
        if type(v) == 'table' then
            if not target[i] then
                target[i] = { }
            end
            copyTable(target[i], v)
        else
            target[i] = v
        end
    end
end
