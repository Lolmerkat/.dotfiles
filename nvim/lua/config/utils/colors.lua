function _G.interpolate_colors(start, ending, steps)
    -- Remove '#' if present
    start = start:gsub("#", "")
    ending = ending:gsub("#", "")

    -- Convert hex to RGB
    local function hexToRGB(hex)
        return {
            tonumber(hex:sub(1,2), 16),
            tonumber(hex:sub(3,4), 16),
            tonumber(hex:sub(5,6), 16)
        }
    end

    -- Convert RGB to hex
    local function rgbToHex(r, g, b)
        return string.format("#%02x%02x%02x", r, g, b)
    end

    -- Get RGB values for start and end colors
    local startRGB = hexToRGB(start)
    local endRGB = hexToRGB(ending)

    -- Calculate the step size for each color component
    -- Add 1 to steps to account for excluding start and end colors
    local stepR = (endRGB[1] - startRGB[1]) / (steps + 1)
    local stepG = (endRGB[2] - startRGB[2]) / (steps + 1)
    local stepB = (endRGB[3] - startRGB[3]) / (steps + 1)

    -- Generate color array
    local colors = {}
    for i = 1, steps do
        local r = math.floor(startRGB[1] + (stepR * i))
        local g = math.floor(startRGB[2] + (stepG * i))
        local b = math.floor(startRGB[3] + (stepB * i))
        colors[i] = rgbToHex(r, g, b)
    end

    return colors
end
