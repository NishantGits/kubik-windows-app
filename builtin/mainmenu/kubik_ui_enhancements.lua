-- Kubik UI Enhancements
-- Minecraft-style button improvements and branding

local function get_minecraft_button_style(name, label, x, y, w, h)
    return {
        type = "button",
        name = name,
        label = label,
        x = x,
        y = y,
        w = w,
        h = h,
        props = {
            bgimg = "button_minecraft.png",
            bgimg_hovered = "button_minecraft_hovered.png",
            bgimg_pressed = "button_minecraft_pressed.png",
            border = true,
            border_color = "#555555",
            border_width = 4,
            font_size = "normal",
            text_color = "#FFFFFF"
        }
    }
end

-- Enhanced button styling function
function kubik_style_button(name, label, x, y, w, h)
    -- Using formspec 9-slice background for Minecraft-style buttons
    local formspec = string.format(
        "style[%s;bgimg=button_minecraft.png;bgimg_hovered=button_minecraft_hovered.png;" ..
        "bgimg_pressed=button_minecraft_pressed.png;border=true;bordercolor=#555555;" ..
        "borderwidth=4;textcolor=#FFFFFF;font=normal]",
        name
    )
    
    return formspec .. string.format(
        "button[%f,%f;%f,%f;%s;%s]",
        x, y, w, h, name, label
    )
end

-- Enhanced main menu styling
function kubik_enhance_main_menu(formspec)
    -- Add Kubik branding
    local enhanced = formspec
    
    -- Replace standard buttons with enhanced ones
    enhanced = enhanced:gsub(
        "button%[(.-);(.-);(.-)%]",
        function(coords, name, label)
            local x, y, w, h = coords:match("([^,]+),([^,]+);([^,]+),([^,]+)")
            if x and y and w and h then
                return kubik_style_button(name, label, tonumber(x), tonumber(y), tonumber(w), tonumber(h))
            end
            return "button[" .. coords .. ";" .. name .. ";" .. label .. "]"
        end
    )
    
    return enhanced
end

-- Export functions for use in other menu files
kubik_ui = {
    style_button = kubik_style_button,
    enhance_main_menu = kubik_enhance_main_menu,
    get_minecraft_button_style = get_minecraft_button_style
}
