-- Load Ace3 libraries and define addon
Chouette_Assitante = LibStub("AceAddon-3.0"):NewAddon("Chouette_Assitante", "AceConsole-3.0", "AceEvent-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")
local AceSerializer = LibStub("AceSerializer-3.0")

-- Set icon texture paths
local shieldIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\INV_Shield_06.tga:0|t "
local druidIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Druid.tga:0|t "
local hunterIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Hunter.tga:0|t "
local mageIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Mage.tga:0|t "
local paladinIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Paladin.tga:0|t "
local priestIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Priest.tga:0|t "
local rogueIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Rogue.tga:0|t "
local shamanIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Shaman.tga:0|t "
local warlockIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Warlock.tga:0|t "
local warriorIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\ClassIcon_Warrior.tga:0|t "
local skullIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Skull.tga:0|t "
local crossIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Cross.tga:0|t "
local squareIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Square.tga:0|t "
local moonIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Moon.tga:0|t "
local triangleIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Triangle.tga:0|t "
local diamondIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Diamond.tga:0|t "
local circleIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Circle.tga:0|t "
local starIcon = "|TInterface\\AddOns\\Chouette_Assitante\\Textures\\Star.tga:0|t "

local defaultArgs = {
    configPage = {
        type = "group",
        name = "Home",
        order = 0,
        args = {
            configHeading1 = {
                type = "description",
                name = "How to use this addon",
                fontSize = "large",
                order = 1
            }
        }
    },
    addNote = {
        type = "execute",
        name = "Ajouter une Note",
        order = 10,
        func = function(info)
            return Chouette_Assitante:AddNote()
        end
    },
    clearNote = {
        type = "execute",
        name = "Clear All",
        order = 10,
        func = function(info)
            return Chouette_Assitante:clearNote()
        end
    }
}
local TargetOptions = {
    ["{crâne}"] = skullIcon .. "{crâne}",
    ["{croix}"] = crossIcon .. "{croix}",
    ["{carré}"] = squareIcon .. "{carré}",
    ["{lune}"] = moonIcon .. "{lune}",
    ["{triangle}"] = triangleIcon .. "{triangle}",
    ["{losange}"] = diamondIcon .. "{losange}",
    ["{cercle}"] = circleIcon .. "{cercle}",
    ["{etoile}"] = starIcon .. "{etoile}",
    ["Boss"] = "Boss",
    ["Adds"] = "Adds",
    ["Raid"] = "Raid",
    ["Melee"] = "Melee",
    ["Ranged"] = "Ranged",
    ["Main-tank"] = "Main-tank",
    ["Off-tank"] = "Off-tank",
    ["[placeholder]"] = shieldIcon .. "[placeholder]",
    [""] = ""
}
local TargetOptionsSort = {
    "{crâne}",
    "{croix}",
    "{carré}",
    "{lune}",
    "{triangle}",
    "{losange}",
    "{cercle}",
    "{etoile}",
    "Boss",
    "Adds",
    "Raid",
    "Melee",
    "Ranged",
    "Main-tank",
    "Off-tank",
    "[placeholder]",
    ""
}

local TaskOptions = {
    ["Tank"] = "Tank",
    ["Heal"] = "Heal",
    ["Control"] = "Control",
    ["Kite"] = "Kite",
    ["Interrupt"] = "Interrupt"
}
local TaskOptionsSort = {
    "Tank",
    "Heal",
    "Control",
    "Kite",
    "Interrupt",
    ""
}

local options = {
    name = "Chouette Assitante",
    handler = Chouette_Assitante,
    desc = "Salut les loulous",
    type = 'group',
    args = defaultArgs
}
function Chouette_Assitante:OnInitialize()
    AceConfigRegistry:RegisterOptionsTable("Chouette_Assitante", options)
    self:Print("Tape /ca pour lancer l'addon")
    self:RegisterChatCommand("ca", "OpenFrame")
    self:RegisterChatCommand("<3", "OpenFrame")
    self.db = LibStub("AceDB-3.0"):New("Chouette_AssitanteDB")
    if self.db.char.config == nil then
        self.db.char.config = {
            reportChannel = "raid",
            channelName = nil
        }
    end

end
function Chouette_Assitante:OpenFrame(input)
    -- self:Print("OpenFrame")
    if input == "defaults" then
        self:Print("defaults")
    else
        -- Open the addon window
        AceConfigDialog:SetDefaultSize("Chouette_Assitante", 1400, 650)
        AceConfigDialog:Open("Chouette_Assitante")
    end
end
function Chouette_Assitante:OnEnable()
    -- Called when the addon is enabled
    self:updateList(self.db.global)
end

function Chouette_Assitante:OnDisable()
    -- Called when the addon is disabled
end

function Chouette_Assitante:clearNote()
    -- self:Print("clearNote")
    self.db:ResetDB("Default")
    options.args = {}
    options.args = defaultArgs
    self:updateList(self.db.global)
end

function Chouette_Assitante:AddNote()
    -- self:Print("AddNote" .. self.db.global)
    -- self:Print("AddNote")
    local id
    if self:countNote(self.db.global) then
        id = self:countNote(self.db.global) + 1
    else
        id = 1
    end
    -- self:createRow(10)
    self.db.global["note_" .. id] = {
        name = "note_" .. id,
        instruction = "",
        row1 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row2 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row3 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row4 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row5 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row6 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row7 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row8 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        },
        row9 = {
            target = "",
            task1 = "",
            task2 = "",
            task3 = "",
            task4 = "",
            player1 = "",
            player2 = "",
            player3 = "",
            player4 = ""
        }
    }
    self:updateList(self.db.global)
end

function Chouette_Assitante:countNote(notes)
    -- self:Print("countNote")
    local count = 0
    if notes ~= nil then
        for _ in pairs(notes) do
            count = count + 1
        end
    else
        count = count + 1
    end
    return count
end

function Chouette_Assitante:updateList(notes)
    -- self:Print("updateList")
    if notes ~= nil then
        for i, v in pairs(notes) do
            options.args["" .. i] = self:CreateNote(i)
        end
    end
end

-- Assignment name
function Chouette_Assitante:GetAssignmentName(info)
    -- self:Print("GetAssignmentName")
    if self.db.global[info[#info - 1]] ~= nil then
        return self.db.global[info[#info - 1]].name
    end
end
function Chouette_Assitante:SetAssignmentName(info, value)
    -- self:Print("SetAssignmentName")
    self.db.global[info[#info - 1]].name = value
    self:updateList(self.db.global);
end

-- Extra instructions
function Chouette_Assitante:GetInstructions(info)
    -- self:Print("GetInstructions")
    if self.db.global[info[#info - 1]] ~= nil then
        return self.db.global[info[#info - 1]][info[#info - 0]]
    end
    -- return AceSerializer:Serialize(self:createRow(1))
end
function Chouette_Assitante:SetInstructions(info, value)
    -- self:Print("SetInstructions")
    self.db.global[info[#info - 1]][info[#info - 0]] = value
    self:updateList(self.db.global);
end

-- Target
function Chouette_Assitante:GetTarget(info)
    -- self:Print("GetTarget")
    if self.db.global[info[#info - 2]] ~= nil then
        return self.db.global[info[#info - 2]][info[#info - 1]][info[#info - 0]]
    end
end
function Chouette_Assitante:SetTarget(info, value)
    -- self:Print("SetTarget")
    self.db.global[info[#info - 2]][info[#info - 1]][info[#info - 0]] = value
    self:updateList(self.db.global);
end
-- Task
function Chouette_Assitante:GetTask(info)
    -- self:Print("GetTask")
    if self.db.global[info[#info - 2]] ~= nil then
        return self.db.global[info[#info - 2]][info[#info - 1]][info[#info - 0]]
    end
    -- return AceSerializer:Serialize(self:createRow(1))
end
function Chouette_Assitante:SetTask(info, value)
    -- self:Print("SetTask")
    self.db.global[info[#info - 2]][info[#info - 1]][info[#info - 0]] = value
    self:updateList(self.db.global);
end
-- Task
function Chouette_Assitante:GetPlayer(info)
    -- self:Print("GetPlayer")
    if self.db.global[info[#info - 2]] ~= nil then
        return self.db.global[info[#info - 2]][info[#info - 1]][info[#info - 0]]
    end
    -- return AceSerializer:Serialize(self:createRow(1))
end
function Chouette_Assitante:SetPlayer(info, value)
    -- self:Print("SetPlayer")
    self.db.global[info[#info - 2]][info[#info - 1]][info[#info - 0]] = value
    self:updateList(self.db.global);
end
-- Task
function Chouette_Assitante:GetChannel(info)
    -- self:Print("GetChannel")
    if self.db.char.config ~= nil then
        return self.db.char.config.reportChannel
    end
    -- return AceSerializer:Serialize(self:createRow(1))
end
function Chouette_Assitante:SetChannel(info, value)
    -- self:Print("SetChannel")
    self.db.char.config.reportChannel = value
    self:updateList(self.db.global);
end

function Chouette_Assitante:CreateNote(index)
    -- self:Print("CreateNote")
    return {
        type = "group",
        name = function(info)
            return self.db.global[index].name
        end,
        order = 1,
        args = {
            assignmentName = {
                order = 0.05,
                width = 1,
                type = "input",
                name = "Nom de l'attibution",
                desc = "Entrer le nom de l'attribution",
                get = "GetAssignmentName",
                set = "SetAssignmentName"
            },
            instruction = {
                order = 0.06,
                width = 5,
                type = "input",
                -- multiline = true,
                name = "Instruction Supplémentaire",
                desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
                get = "GetInstructions",
                set = "SetInstructions"
            },
            horizontalLine2 = {
                type = "header",
                name = "",
                order = 0.08
            },
            targetHeading = {
                order = 0.1,
                width = 0.75,
                type = "description",
                name = " Cible ",
                fontSize = "medium"
            },
            task1Heading = {
                order = 0.2,
                width = 0.5,
                type = "description",
                name = " Tache 1 ",
                fontSize = "medium"
            },
            player1Heading = {
                order = 0.3,
                width = 0.75,
                type = "description",
                name = " Player 1 ",
                fontSize = "medium"
            },
            task2Heading = {
                order = 0.4,
                width = 0.5,
                type = "description",
                name = " Tache 2 ",
                fontSize = "medium"
            },
            player2Heading = {
                order = 0.5,
                width = 0.75,
                type = "description",
                name = " Player 2 ",
                fontSize = "medium"
            },
            task3Heading = {
                order = 0.6,
                width = 0.5,
                type = "description",
                name = " Tache 3 ",
                fontSize = "medium"
            },
            player3Heading = {
                order = 0.7,
                width = 0.75,
                type = "description",
                name = " Player 3 ",
                fontSize = "medium"
            },
            task4Heading = {
                order = 0.8,
                width = 0.5,
                type = "description",
                name = " Tache 4 ",
                fontSize = "medium"
            },
            player4Heading = {
                order = 0.9,
                width = 0.75,
                type = "description",
                name = " Player 4 ",
                fontSize = "medium"
            },
            row1 = self:createRow(1),
            row2 = self:createRow(2),
            row3 = self:createRow(3),
            row4 = self:createRow(4),
            row5 = self:createRow(5),
            row6 = self:createRow(6),
            row7 = self:createRow(7),
            row8 = self:createRow(8),
            row9 = self:createRow(9),
            horizontalLine3 = {
                order = 11,
                type = "header",
                name = ""
            },
            reportChannel = {
                order = 12,
                type = "select",
                name = "Report to",
                desc = "Which chat channel you want to publish the assignments in",
                get = "GetChannel",
                set = "SetChannel",
                values = {
                    ["raid"] = "Raid",
                    ["party"] = "Party",
                    ["say"] = "Say",
                    ["guild"] = "Guild"
                },
                style = "dropdown"
            },
            reportAssignments = {
                type = "execute",
                name = "Report assignments",
                desc = "Output the current raid assignments to the selected channel",
                order = 13,
                func = function(info)
                    return Chouette_Assitante:ReportAssign(info)
                end
            }
        }
    }

end

function Chouette_Assitante:ReportAssign(info)
    -- self:Print("ReportAssign 0 " .. info[#info - 0])
    -- self:Print("ReportAssign 1 " .. info[#info - 1])
    if self.db.char.config.reportChannel then
        self:Print("Envoie de l'assign " .. self.db.global[info[#info - 1]].name .. " sur le canal " ..
                       self.db.char.config.reportChannel)
        SendChatMessage(" ------ " .. self.db.global[info[#info - 1]].name .. " ------ ",
                        self.db.char.config.reportChannel, nil, self.db.char.config.reportChannel)

        if self.db.global[info[#info - 1]].instruction ~= "" then

            SendChatMessage(self.db.global[info[#info - 1]].instruction, self.db.char.config.reportChannel, nil,
                            self.db.char.config.reportChannel)

        end

        for i = 1, 9 do
            -- self:Print(i)
            local text = ""
            if self.db.global[info[#info - 1]]["row" .. i].target ~= "" then
                text = text .. "" .. self.db.global[info[#info - 1]]["row" .. i].target .. " - "
            end
            for j = 1, 4 do
                -- self:Print(j)
                if self.db.global[info[#info - 1]]["row" .. i]["player" .. j] ~= "" then
                    if j > 1 then
                        text = text .. " - "
                    end
                    if self.db.global[info[#info - 1]]["row" .. i]["task" .. j] ~= "" then
                        text = text .. " " .. self.db.global[info[#info - 1]]["row" .. i]["task" .. j] .. " : "
                    end
                    text = text .. self.db.global[info[#info - 1]]["row" .. i]["player" .. j]
                end
                -- self:Print(text)
            end
            SendChatMessage(text, self.db.char.config.reportChannel, nil, self.db.char.config.reportChannel)
        end
    end
end

function Chouette_Assitante:createRow(order)
    -- self:Print("createRow")
    return {
        type = "group",
        name = "",
        order = order,
        inline = true,
        args = {
            target = {
                order = 1,
                width = 0.75,
                type = "select",
                name = "",
                desc = "Select the target that this row applies to",
                get = "GetTarget",
                set = "SetTarget",
                values = function(info)
                    return TargetOptions
                end,
                sorting = function(info)
                    return TargetOptionsSort
                end,
                style = "dropdown"
            },
            task1 = {
                order = 2,
                width = 0.5,
                type = "select",
                name = "",
                desc = "What you want done to this target",
                get = "GetTask",
                set = "SetTask",
                values = function(info)
                    return TaskOptions
                end,
                sorting = function(info)
                    return TaskOptionsSort
                end,
                style = "dropdown"
            },
            player1 = {
                order = 3,
                width = 0.75,
                type = "input",
                name = "",
                desc = "What you want done to this target",
                get = "GetPlayer",
                set = "SetPlayer"
            },
            task2 = {
                order = 4,
                width = 0.5,
                type = "select",
                name = "",
                desc = "What you want done to this target",
                get = "GetTask",
                set = "SetTask",
                values = function(info)
                    return TaskOptions
                end,
                sorting = function(info)
                    return TaskOptionsSort
                end,
                style = "dropdown"
            },
            player2 = {
                order = 5,
                width = 0.75,
                type = "input",
                name = "",
                desc = "What you want done to this target",
                get = "GetPlayer",
                set = "SetPlayer"
            },
            task3 = {
                order = 6,
                width = 0.5,
                type = "select",
                name = "",
                desc = "What you want done to this target",
                get = "GetTask",
                set = "SetTask",
                values = function(info)
                    return TaskOptions
                end,
                sorting = function(info)
                    return TaskOptionsSort
                end,
                style = "dropdown"
            },
            player3 = {
                order = 7,
                width = 0.75,
                type = "input",
                name = "",
                desc = "What you want done to this target",
                get = "GetPlayer",
                set = "SetPlayer"
            },
            task4 = {
                order = 8,
                width = 0.5,
                type = "select",
                name = "",
                desc = "What you want done to this target",
                get = "GetTask",
                set = "SetTask",
                values = function(info)
                    return TaskOptions
                end,
                sorting = function(info)
                    return TaskOptionsSort
                end,
                style = "dropdown"
            },
            player4 = {
                order = 9,
                width = 0.75,
                type = "input",
                name = "",
                desc = "What you want done to this target",
                get = "GetPlayer",
                set = "SetPlayer"
            },
            resetRow = {
                type = "execute",
                name = "Reset",
                order = 10,
                width = 0.5,
                func = function(info)
                    return Chouette_Assitante:resetAssignments(info[#info - 2], info[#info - 1], "all")
                end
            }
        }
    }
end

function Chouette_Assitante:resetAssignments(note, row, arg3)
    -- self:Print(row)
    -- self:Print(note)
    -- self:Print(arg3)
    self.db.global["" .. note]["" .. row] = {
        target = "",
        task1 = "",
        task2 = "",
        task3 = "",
        task4 = "",
        player1 = "",
        player2 = "",
        player3 = "",
        player4 = ""
    }

end
