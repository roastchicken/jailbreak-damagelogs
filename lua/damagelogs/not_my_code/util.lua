--https://github.com/garrynewman/garrysmod/blob/ead2b4d7f05681e577935fef657d4a4d962091e6/garrysmod/gamemodes/terrortown/gamemode/util.lua

-- Like string.FormatTime but simpler (and working), always a string, no hour
-- support
function util.SimpleTime(seconds, fmt)
	if not seconds then seconds = 0 end

    local ms = (seconds - math.floor(seconds)) * 100
    seconds = math.floor(seconds)
    local s = seconds % 60
    seconds = (seconds - s) / 60
    local m = seconds % 60

    return string.format(fmt, m, s, ms)
end