--[[    Character Sheet Template    by: MrStump

You can set up your own character sheet if you follow these steps.

Step 1) Change the character sheet image
    -Right click on the character sheet, click Custom
    -Replace the image URL with one for your character sheet
    -Click import, make sure your sheet loads
    -SAVE THE GAME (the table setup)
    -LOAD FROM THAT SAVE YOU JUST MADE

Step 2) Edit script to fit your character sheet
    -Below you will see some general options, and then the big data table
    -The data table is what determines how many of which buttons are made
        -Checkboxes
        -Counters
        -Textboxes
    -By default, there are 3 of each. You can add more or remove entries
    -If you intend to add/remove, be sure only to add/remove ENTRIES
        -This is what an entry looks like:
            {
                pos   = {-0.977,0.1,-0.589},
                size  = 800,
                state = false
            },
        -Deleting the whole thing would remove that specific item on the sheet
        -Copy and pasting it after another entry would create another
    -Each entry type has unique data points (pos, size, state, etc)
        -Do not try to add in your own data points or remove them individually
        -There is a summary of what each point does at the top of its category

Step 3) Save and check script changes
    -Hit Save & Apply in the script window to save your code
    -You can edit your code as needed and Save+Apply as often as needed
    -When you are finished, make disableSave = false below then Save+apply
        -This enables saving, so your sheet will remember whats on it.

Bonus) Finding/Editing Positions for elements
    I have included a tool to get positions for buttons in {x,y,z} form
    Place it where you want the center of your element to be
    Then copy the table from the notes (lower right of screen)
        You can highlight it and CTRL+C
    Paste it into the data table where needed (pos=)
    If you want to manually tweek the values:
        {0,0,0} is the center of the character sheet
        {1,0,0} is right, {-1,0,0} is left
        {0,0,-1} is up, {0,0,1} is down
        0.1 for Y is the height off of the page.
            If it was 0, it would be down inside the model of the sheet

Begin editing below:    ]]

--Set this to true while editing and false when you have finished
disableSave = true
--Remember to set this to false once you are done making changes
--Then, after you save & apply it, save your game too

--Color information for button text (r,g,b, values of 0-1)
buttonFontColor = {0,0,0}
--Color information for button background
buttonColor = {1,1,1}
--Change scale of button (Avoid changing if possible)
buttonScale = {0.1,0.1,0.1}

--This is the button placement information
defaultButtonData = {
    --Add checkboxes
    checkbox = {
        --[[
        pos   = the position (pasted from the helper tool)
        size  = height/width/font_size for checkbox
        state = default starting value for checkbox (true=checked, false=not)
        ]]
        
		--PS2 Checkbox
		{
            pos   = {-2.446,0.1,1.095},
            size  = 400,
            state = true
        },
		--PS3 Checkbox
		{
            pos   = {-1.879,0.1,1.095},
            size  = 400,
            state = true
        },
		--PS Tech 3+ Checkbox
		{
            pos   = {-0.454,0.1,0.443},
            size  = 400,
            state = true
        },
		--PS Tech 4 Checkbox
		{
            pos   = {0.569,0.1,0.44},
            size  = 400,
            state = true
        },
		--PS Tech 5 Checkbox
		{
            pos   = {1.826,0.1,0.44},
            size  = 400,
            state = true
        },
		--PS Ace 4 Checkbox
		{
            pos   = {-0.454,0.1,0.77},
            size  = 400,
            state = true
        },
		--PS Ace 5 Checkbox
		{
            pos   = {0.569,0.1,0.767},
            size  = 400,
            state = true
        },
		--PS Ace 6 Checkbox
		{
            pos   = {1.826,0.1,0.773},
            size  = 400,
            state = true
        },
		--PS Force 3+ Checkbox
		{
            pos   = {-0.454,0.1,1.1},
            size  = 400,
            state = true
        },
		--PS Force 4 Checkbox
		{
            pos   = {0.572,0.1,1.1},
            size  = 400,
            state = true
        },
		--PS Force 5 Checkbox
		{
            pos   = {1.826,0.1,1.104},
            size  = 400,
            state = true
        },
        --X-Wing checkbox
        {
            pos   = {1.83,0.1,-0.899},
            size  = 400,
            state = true
        },
        --Y-Wing checkbox
        {
            pos   = {2.264,0.1,-0.899},
            size  = 400,
            state = true
        },
        --A-Wing checkbox
        {
            pos   = {2.267,0.1,-0.572},
            size  = 400,
            state = false
        },
        --B-Wing checkbox
        {
            pos   = {1.83,0.1,-0.572},
            size  = 400,
            state = false
        },
        --U-Wing checkbox
        {
            pos   = {2.265,0.1,-0.253},
            size  = 400,
            state = false
        },
        --K-Wing checkbox
        {
            pos   = {2.265,0.1,0.076},
            size  = 400,
            state = false
        },
        --HWK-290 checkbox
        {
            pos   = {1.83,0.1,-0.246},
            size  = 400,
            state = false
        },
        --ARC-170 checkbox
        {
            pos   = {1.83,0.1,0.072},
            size  = 400,
            state = false
        },
        --End of checkboxes
    },
    --Add counters that have a + and - button
    counter = {
        --[[
        pos    = the position (pasted from the helper tool)
        size   = height/width/font_size for counter
        value  = default starting value for counter
        hideBG = if background of counter is hidden (true=hidden, false=not)
        ]]
        --Mission counter
        {
            pos    = {-2.205,0.1,0.455},
            size   = 550,
            value  = 0,
            hideBG = true
        },
        --Experience counter
        {
            pos    = {-2.205,0.1,0.839},
            size   = 550,
            value  = 0,
            hideBG = true
        },
        --TIE Fighter counter
        {
            pos    = {-1.515,0.1,0.472},
            size   = 400,
            value  = 0,
            hideBG = true
        },
		--TIE Phantom counter
        {
            pos    = {-1.515,0.1,0.605},
            size   = 400,
            value  = 0,
            hideBG = true
        },
		--TIE Defender counter
        {
            pos    = {-1.515,0.1,0.728},
            size   = 400,
            value  = 0,
            hideBG = true
        },
        --TIE Interceptor counter
        {
            pos    = {-1.285,0.1,0.472},
            size   = 400,
            value  = 0,
            hideBG = true
        },
		--TIE Striker counter
        {
            pos    = {-1.285,0.1,0.605},
            size   = 400,
            value  = 0,
            hideBG = true
        },
		--Lambda Shuttle counter
        {
            pos    = {-1.285,0.1,0.728},
            size   = 400,
            value  = 0,
            hideBG = true
        },
		--Decimator counter
        {
            pos    = {-1.285,0.1,0.85},
            size   = 400,
            value  = 0,
            hideBG = true
        },
        --TIE Bomber counter
        {
            pos    = {-1.036,0.1,0.472},
            size   = 400,
            value  = 0,
            hideBG = true
        },
		--TIE Reaper counter
        {
            pos    = {-1.036,0.1,0.605},
            size   = 400,
            value  = 0,
            hideBG = true
        },
        --TIE Advanced/X1 counter
        {
            pos    = {-1.036,0.1,0.728},
            size   = 400,
            value  = 0,
            hideBG = true
        },
        
        
        --End of counters
    },
    --Add editable text boxes
    textbox = {
        --[[
        pos       = the position (pasted from the helper tool)
        rows      = how many lines of text you want for this box
        width     = how wide the text box is
        font_size = size of text. This and "rows" effect overall height
        label     = what is shown when there is no text. "" = nothing
        value     = text entered into box. "" = nothing
        alignment = Number to indicate how you want text aligned
                    (1=Automatic, 2=Left, 3=Center, 4=Right, 5=Justified)
        ]]
        --Player textbox
        {
            pos       = {-2.197,0.1,0.033},
            rows      = 1,
            width     = 3500,
            font_size = 500,
            label     = "Name",
            value     = "",
            alignment = 2
        },
        --Call Sign textbox
        {
            pos       = {-1.352,0.1,0.028},
            rows      = 1,
            width     = 3500,
            font_size = 500,
            label     = "Call Sign",
            value     = "",
            alignment = 3
        },
        --Upgrades L1 textbox
        {
            pos       = {-0.458,0.1,-1.044},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L2 textbox
        {
            pos       = {-0.458,0.1,-0.857},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L3 textbox
        {
            pos       = {-0.458,0.1,-0.687},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L4 textbox
        {
            pos       = {-0.458,0.1,-0.499},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L5 textbox
       {
            pos       = {-0.458,0.1,-0.324},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L6 textbox
        {
            pos       = {-0.458,0.1,-0.143},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L7 textbox
        {
            pos       = {-0.458,0.1,0.036},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades L8 textbox
        {
            pos       = {-0.458,0.1,0.214},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
        --Upgrades M1 textbox
        {
            pos       = {0.396,0.1,-1.044},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M2 textbox
       {
            pos       = {0.396,0.1,-0.857},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M3 textbox
        {
            pos       = {0.396,0.1,-0.687},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M4 textbox
        {
            pos       = {0.396,0.1,-0.499},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M5 textbox
        {
            pos       = {0.396,0.1,-0.324},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M6 textbox
        {
            pos       = {0.396,0.1,-0.143},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M7 textbox
        {
            pos       = {0.396,0.1,0.036},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades M8 textbox
        {
            pos       = {0.396,0.1,0.214},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R1 textbox
        {
            pos       = {1.263,0.1,-1.044},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R2 textbox
       {
            pos       = {1.263,0.1,-0.857},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R3 textbox
        {
            pos       = {1.263,0.1,-0.687},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R4 textbox
        {
            pos       = {1.263,0.1,-0.499},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R5 textbox
        {
            pos       = {1.263,0.1,-0.324},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R6 textbox
        {
            pos       = {1.263,0.1,-0.143},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R7 textbox
        {
            pos       = {1.263,0.1,0.036},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
		--Upgrades R8 textbox
        {
            pos       = {1.263,0.1,0.214},
            rows      = 1,
            width     = 3750,
            font_size = 500,
            label     = "",
            value     = "",
            alignment = 2
        },
        --End of textboxes
    }
}



--Lua beyond this point, I recommend doing something more fun with your life



--Save function
function updateSave()
    saved_data = JSON.encode(ref_buttonData)
    if disableSave==true then saved_data="" end
    self.script_state = saved_data
end

--Startup procedure
function onload(saved_data)
    if disableSave==true then saved_data="" end
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        ref_buttonData = loaded_data
    else
        ref_buttonData = defaultButtonData
    end

    spawnedButtonCount = 0
    createCheckbox()
    createCounter()
    createTextbox()
end



--Click functions for buttons



--Checks or unchecks the given box
function click_checkbox(tableIndex, buttonIndex)
    if ref_buttonData.checkbox[tableIndex].state == true then
        ref_buttonData.checkbox[tableIndex].state = false
        self.editButton({index=buttonIndex, label=""})
    else
        ref_buttonData.checkbox[tableIndex].state = true
        self.editButton({index=buttonIndex, label=string.char(10008)})
    end
    updateSave()
end

--Applies value to given counter display
function click_counter(tableIndex, buttonIndex, amount)
    ref_buttonData.counter[tableIndex].value = ref_buttonData.counter[tableIndex].value + amount
    self.editButton({index=buttonIndex, label=ref_buttonData.counter[tableIndex].value})
    updateSave()
end

--Updates saved value for given text box
function click_textbox(i, value, selected)
    if selected == false then
        ref_buttonData.textbox[i].value = value
        updateSave()
    end
end

--Dud function for if you have a background on a counter
function click_none() end



--Button creation



--Makes checkboxes
function createCheckbox()
    for i, data in ipairs(ref_buttonData.checkbox) do
        --Sets up reference function
        local buttonNumber = spawnedButtonCount
        local funcName = "checkbox"..i
        local func = function() click_checkbox(i, buttonNumber) end
        self.setVar(funcName, func)
        --Sets up label
        local label = ""
        if data.state==true then label=string.char(10008) end
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=data.pos, height=data.size, width=data.size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

--Makes counters
function createCounter()
    for i, data in ipairs(ref_buttonData.counter) do
        --Sets up display
        local displayNumber = spawnedButtonCount
        --Sets up label
        local label = data.value
        --Sets height/width for display
        local size = data.size
        if data.hideBG == true then size = 0 end
        --Creates button and counts it
        self.createButton({
            label=label, click_function="click_none", function_owner=self,
            position=data.pos, height=size, width=size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up add 1
        local funcName = "counterAdd"..i
        local func = function() click_counter(i, displayNumber, 1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "+"
        --Sets up position
        local offsetDistance = (data.size/2 + data.size/4) * (buttonScale[1] * 0.002)
        local pos = {data.pos[1] + offsetDistance, data.pos[2], data.pos[3]}
        --Sets up size
        local size = data.size / 2
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up subtract 1
        local funcName = "counterSub"..i
        local func = function() click_counter(i, displayNumber, -1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "-"
        --Set up position
        local pos = {data.pos[1] - offsetDistance, data.pos[2], data.pos[3]}
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

function createTextbox()
    for i, data in ipairs(ref_buttonData.textbox) do
        --Sets up reference function
        local funcName = "textbox"..i
        local func = function(_,_,val,sel) click_textbox(i,val,sel) end
        self.setVar(funcName, func)

        self.createInput({
            input_function = funcName,
            function_owner = self,
            label          = data.label,
            alignment      = data.alignment,
            position       = data.pos,
            scale          = buttonScale,
            width          = data.width,
            height         = (data.font_size*data.rows)+24,
            font_size      = data.font_size,
            color          = buttonColor,
            font_color     = buttonFontColor,
            value          = data.value,
        })
    end
end
