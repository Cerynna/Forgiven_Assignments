-- Load Ace3 libraries and define addon
Forgiven_Assignments = LibStub("AceAddon-3.0"):NewAddon("Forgiven_Assignments", "AceConsole-3.0", "AceEvent-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")

-- Set icon texture paths
local shieldIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\INV_Shield_06.tga:0|t "
local druidIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Druid.tga:0|t "
local hunterIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Hunter.tga:0|t "
local mageIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Mage.tga:0|t "
local paladinIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Paladin.tga:0|t "
local priestIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Priest.tga:0|t "
local rogueIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Rogue.tga:0|t "
local shamanIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Shaman.tga:0|t "
local warlockIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Warlock.tga:0|t "
local warriorIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\ClassIcon_Warrior.tga:0|t "
local skullIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Skull.tga:0|t "
local crossIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Cross.tga:0|t "
local squareIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Square.tga:0|t "
local moonIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Moon.tga:0|t "
local triangleIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Triangle.tga:0|t "
local diamondIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Diamond.tga:0|t "
local circleIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Circle.tga:0|t "
local starIcon = "|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Star.tga:0|t "

-- Set default variables for assignments
fa_config_test_data = false
fa_config_logging = false
fa_config_report_channel = ""
fa_config_channel_name = ""

-- page1 variables
fa_page1_assignment_name = "Unused"
fa_page1_extra_instructions = ""
fa_page1_internal_notes = ""

fa_page1_row1_target = ""
fa_page1_row1_task1 = nil
fa_page1_row1_player1 = ""
fa_page1_row1_task2 = nil
fa_page1_row1_player2 = ""
fa_page1_row1_player3 = ""
fa_page1_row1_player4 = ""

fa_page1_row2_target = ""
fa_page1_row2_task = nil
fa_page1_row2_player1 = ""
fa_page1_row2_player2 = ""
fa_page1_row2_player3 = ""
fa_page1_row2_player4 = ""

fa_page1_row3_target = ""
fa_page1_row3_task = nil
fa_page1_row3_player1 = ""
fa_page1_row3_player2 = ""
fa_page1_row3_player3 = ""
fa_page1_row3_player4 = ""

fa_page1_row4_target = ""
fa_page1_row4_task = nil
fa_page1_row4_player1 = ""
fa_page1_row4_player2 = ""
fa_page1_row4_player3 = ""
fa_page1_row4_player4 = ""

fa_page1_row5_target = ""
fa_page1_row5_task = nil
fa_page1_row5_player1 = ""
fa_page1_row5_player2 = ""
fa_page1_row5_player3 = ""
fa_page1_row5_player4 = ""

fa_page1_row6_target = ""
fa_page1_row6_task = nil
fa_page1_row6_player1 = ""
fa_page1_row6_player2 = ""
fa_page1_row6_player3 = ""
fa_page1_row6_player4 = ""

fa_page1_row7_target = ""
fa_page1_row7_task = nil
fa_page1_row7_player1 = ""
fa_page1_row7_player2 = ""
fa_page1_row7_player3 = ""
fa_page1_row7_player4 = ""

fa_page1_row8_target = ""
fa_page1_row8_task = nil
fa_page1_row8_player1 = ""
fa_page1_row8_player2 = ""
fa_page1_row8_player3 = ""
fa_page1_row8_player4 = ""

fa_page1_row9_target = ""
fa_page1_row9_task = nil
fa_page1_row9_player1 = ""
fa_page1_row9_player2 = ""
fa_page1_row9_player3 = ""
fa_page1_row9_player4 = ""

-- page2 variables
fa_page2_assignment_name = "Unused"
fa_page2_extra_instructions = ""
fa_page2_internal_notes = ""

fa_page2_row1_target = ""
fa_page2_row1_task = nil
fa_page2_row1_player1 = ""
fa_page2_row1_player2 = ""
fa_page2_row1_player3 = ""
fa_page2_row1_player4 = ""

fa_page2_row2_target = ""
fa_page2_row2_task = nil
fa_page2_row2_player1 = ""
fa_page2_row2_player2 = ""
fa_page2_row2_player3 = ""
fa_page2_row2_player4 = ""

fa_page2_row3_target = ""
fa_page2_row3_task = nil
fa_page2_row3_player1 = ""
fa_page2_row3_player2 = ""
fa_page2_row3_player3 = ""
fa_page2_row3_player4 = ""

fa_page2_row4_target = ""
fa_page2_row4_task = nil
fa_page2_row4_player1 = ""
fa_page2_row4_player2 = ""
fa_page2_row4_player3 = ""
fa_page2_row4_player4 = ""

fa_page2_row5_target = ""
fa_page2_row5_task = nil
fa_page2_row5_player1 = ""
fa_page2_row5_player2 = ""
fa_page2_row5_player3 = ""
fa_page2_row5_player4 = ""

fa_page2_row6_target = ""
fa_page2_row6_task = nil
fa_page2_row6_player1 = ""
fa_page2_row6_player2 = ""
fa_page2_row6_player3 = ""
fa_page2_row6_player4 = ""

fa_page2_row7_target = ""
fa_page2_row7_task = nil
fa_page2_row7_player1 = ""
fa_page2_row7_player2 = ""
fa_page2_row7_player3 = ""
fa_page2_row7_player4 = ""

fa_page2_row8_target = ""
fa_page2_row8_task = nil
fa_page2_row8_player1 = ""
fa_page2_row8_player2 = ""
fa_page2_row8_player3 = ""
fa_page2_row8_player4 = ""

fa_page2_row9_target = ""
fa_page2_row9_task = nil
fa_page2_row9_player1 = ""
fa_page2_row9_player2 = ""
fa_page2_row9_player3 = ""
fa_page2_row9_player4 = ""

-- page3 variables
fa_page3_assignment_name = "Unused"
fa_page3_extra_instructions = ""
fa_page3_internal_notes = ""

fa_page3_row1_target = ""
fa_page3_row1_task = nil
fa_page3_row1_player1 = ""
fa_page3_row1_player2 = ""
fa_page3_row1_player3 = ""
fa_page3_row1_player4 = ""

fa_page3_row2_target = ""
fa_page3_row2_task = nil
fa_page3_row2_player1 = ""
fa_page3_row2_player2 = ""
fa_page3_row2_player3 = ""
fa_page3_row2_player4 = ""

fa_page3_row3_target = ""
fa_page3_row3_task = nil
fa_page3_row3_player1 = ""
fa_page3_row3_player2 = ""
fa_page3_row3_player3 = ""
fa_page3_row3_player4 = ""

fa_page3_row4_target = ""
fa_page3_row4_task = nil
fa_page3_row4_player1 = ""
fa_page3_row4_player2 = ""
fa_page3_row4_player3 = ""
fa_page3_row4_player4 = ""

fa_page3_row5_target = ""
fa_page3_row5_task = nil
fa_page3_row5_player1 = ""
fa_page3_row5_player2 = ""
fa_page3_row5_player3 = ""
fa_page3_row5_player4 = ""

fa_page3_row6_target = ""
fa_page3_row6_task = nil
fa_page3_row6_player1 = ""
fa_page3_row6_player2 = ""
fa_page3_row6_player3 = ""
fa_page3_row6_player4 = ""

fa_page3_row7_target = ""
fa_page3_row7_task = nil
fa_page3_row7_player1 = ""
fa_page3_row7_player2 = ""
fa_page3_row7_player3 = ""
fa_page3_row7_player4 = ""

fa_page3_row8_target = ""
fa_page3_row8_task = nil
fa_page3_row8_player1 = ""
fa_page3_row8_player2 = ""
fa_page3_row8_player3 = ""
fa_page3_row8_player4 = ""

fa_page3_row9_target = ""
fa_page3_row9_task = nil
fa_page3_row9_player1 = ""
fa_page3_row9_player2 = ""
fa_page3_row9_player3 = ""
fa_page3_row9_player4 = ""

-- page4 variables
fa_page4_assignment_name = "Unused"
fa_page4_extra_instructions = ""
fa_page4_internal_notes = ""

fa_page4_row1_target = ""
fa_page4_row1_task = nil
fa_page4_row1_player1 = ""
fa_page4_row1_player2 = ""
fa_page4_row1_player3 = ""
fa_page4_row1_player4 = ""

fa_page4_row2_target = ""
fa_page4_row2_task = nil
fa_page4_row2_player1 = ""
fa_page4_row2_player2 = ""
fa_page4_row2_player3 = ""
fa_page4_row2_player4 = ""

fa_page4_row3_target = ""
fa_page4_row3_task = nil
fa_page4_row3_player1 = ""
fa_page4_row3_player2 = ""
fa_page4_row3_player3 = ""
fa_page4_row3_player4 = ""

fa_page4_row4_target = ""
fa_page4_row4_task = nil
fa_page4_row4_player1 = ""
fa_page4_row4_player2 = ""
fa_page4_row4_player3 = ""
fa_page4_row4_player4 = ""

fa_page4_row5_target = ""
fa_page4_row5_task = nil
fa_page4_row5_player1 = ""
fa_page4_row5_player2 = ""
fa_page4_row5_player3 = ""
fa_page4_row5_player4 = ""

fa_page4_row6_target = ""
fa_page4_row6_task = nil
fa_page4_row6_player1 = ""
fa_page4_row6_player2 = ""
fa_page4_row6_player3 = ""
fa_page4_row6_player4 = ""

fa_page4_row7_target = ""
fa_page4_row7_task = nil
fa_page4_row7_player1 = ""
fa_page4_row7_player2 = ""
fa_page4_row7_player3 = ""
fa_page4_row7_player4 = ""

fa_page4_row8_target = ""
fa_page4_row8_task = nil
fa_page4_row8_player1 = ""
fa_page4_row8_player2 = ""
fa_page4_row8_player3 = ""
fa_page4_row8_player4 = ""

fa_page4_row9_target = ""
fa_page4_row9_task = nil
fa_page4_row9_player1 = ""
fa_page4_row9_player2 = ""
fa_page4_row9_player3 = ""
fa_page4_row9_player4 = ""

-- page5 variables
fa_page5_assignment_name = "Unused"
fa_page5_extra_instructions = ""
fa_page5_internal_notes = ""

fa_page5_row1_target = ""
fa_page5_row1_task = nil
fa_page5_row1_player1 = ""
fa_page5_row1_player2 = ""
fa_page5_row1_player3 = ""
fa_page5_row1_player4 = ""

fa_page5_row2_target = ""
fa_page5_row2_task = nil
fa_page5_row2_player1 = ""
fa_page5_row2_player2 = ""
fa_page5_row2_player3 = ""
fa_page5_row2_player4 = ""

fa_page5_row3_target = ""
fa_page5_row3_task = nil
fa_page5_row3_player1 = ""
fa_page5_row3_player2 = ""
fa_page5_row3_player3 = ""
fa_page5_row3_player4 = ""

fa_page5_row4_target = ""
fa_page5_row4_task = nil
fa_page5_row4_player1 = ""
fa_page5_row4_player2 = ""
fa_page5_row4_player3 = ""
fa_page5_row4_player4 = ""

fa_page5_row5_target = ""
fa_page5_row5_task = nil
fa_page5_row5_player1 = ""
fa_page5_row5_player2 = ""
fa_page5_row5_player3 = ""
fa_page5_row5_player4 = ""

fa_page5_row6_target = ""
fa_page5_row6_task = nil
fa_page5_row6_player1 = ""
fa_page5_row6_player2 = ""
fa_page5_row6_player3 = ""
fa_page5_row6_player4 = ""

fa_page5_row7_target = ""
fa_page5_row7_task = nil
fa_page5_row7_player1 = ""
fa_page5_row7_player2 = ""
fa_page5_row7_player3 = ""
fa_page5_row7_player4 = ""

fa_page5_row8_target = ""
fa_page5_row8_task = nil
fa_page5_row8_player1 = ""
fa_page5_row8_player2 = ""
fa_page5_row8_player3 = ""
fa_page5_row8_player4 = ""

fa_page5_row9_target = ""
fa_page5_row9_task = nil
fa_page5_row9_player1 = ""
fa_page5_row9_player2 = ""
fa_page5_row9_player3 = ""
fa_page5_row9_player4 = ""

-- page6 variables
fa_page6_assignment_name = "Unused"
fa_page6_extra_instructions = ""
fa_page6_internal_notes = ""

fa_page6_row1_target = ""
fa_page6_row1_task = nil
fa_page6_row1_player1 = ""
fa_page6_row1_player2 = ""
fa_page6_row1_player3 = ""
fa_page6_row1_player4 = ""

fa_page6_row2_target = ""
fa_page6_row2_task = nil
fa_page6_row2_player1 = ""
fa_page6_row2_player2 = ""
fa_page6_row2_player3 = ""
fa_page6_row2_player4 = ""

fa_page6_row3_target = ""
fa_page6_row3_task = nil
fa_page6_row3_player1 = ""
fa_page6_row3_player2 = ""
fa_page6_row3_player3 = ""
fa_page6_row3_player4 = ""

fa_page6_row4_target = ""
fa_page6_row4_task = nil
fa_page6_row4_player1 = ""
fa_page6_row4_player2 = ""
fa_page6_row4_player3 = ""
fa_page6_row4_player4 = ""

fa_page6_row5_target = ""
fa_page6_row5_task = nil
fa_page6_row5_player1 = ""
fa_page6_row5_player2 = ""
fa_page6_row5_player3 = ""
fa_page6_row5_player4 = ""

fa_page6_row6_target = ""
fa_page6_row6_task = nil
fa_page6_row6_player1 = ""
fa_page6_row6_player2 = ""
fa_page6_row6_player3 = ""
fa_page6_row6_player4 = ""

fa_page6_row7_target = ""
fa_page6_row7_task = nil
fa_page6_row7_player1 = ""
fa_page6_row7_player2 = ""
fa_page6_row7_player3 = ""
fa_page6_row7_player4 = ""

fa_page6_row8_target = ""
fa_page6_row8_task = nil
fa_page6_row8_player1 = ""
fa_page6_row8_player2 = ""
fa_page6_row8_player3 = ""
fa_page6_row8_player4 = ""

fa_page6_row9_target = ""
fa_page6_row9_task = nil
fa_page6_row9_player1 = ""
fa_page6_row9_player2 = ""
fa_page6_row9_player3 = ""
fa_page6_row9_player4 = ""

-- page7 variables
fa_page7_assignment_name = "Unused"
fa_page7_extra_instructions = ""
fa_page7_internal_notes = ""

fa_page7_row1_target = ""
fa_page7_row1_task = nil
fa_page7_row1_player1 = ""
fa_page7_row1_player2 = ""
fa_page7_row1_player3 = ""
fa_page7_row1_player4 = ""

fa_page7_row2_target = ""
fa_page7_row2_task = nil
fa_page7_row2_player1 = ""
fa_page7_row2_player2 = ""
fa_page7_row2_player3 = ""
fa_page7_row2_player4 = ""

fa_page7_row3_target = ""
fa_page7_row3_task = nil
fa_page7_row3_player1 = ""
fa_page7_row3_player2 = ""
fa_page7_row3_player3 = ""
fa_page7_row3_player4 = ""

fa_page7_row4_target = ""
fa_page7_row4_task = nil
fa_page7_row4_player1 = ""
fa_page7_row4_player2 = ""
fa_page7_row4_player3 = ""
fa_page7_row4_player4 = ""

fa_page7_row5_target = ""
fa_page7_row5_task = nil
fa_page7_row5_player1 = ""
fa_page7_row5_player2 = ""
fa_page7_row5_player3 = ""
fa_page7_row5_player4 = ""

fa_page7_row6_target = ""
fa_page7_row6_task = nil
fa_page7_row6_player1 = ""
fa_page7_row6_player2 = ""
fa_page7_row6_player3 = ""
fa_page7_row6_player4 = ""

fa_page7_row7_target = ""
fa_page7_row7_task = nil
fa_page7_row7_player1 = ""
fa_page7_row7_player2 = ""
fa_page7_row7_player3 = ""
fa_page7_row7_player4 = ""

fa_page7_row8_target = ""
fa_page7_row8_task = nil
fa_page7_row8_player1 = ""
fa_page7_row8_player2 = ""
fa_page7_row8_player3 = ""
fa_page7_row8_player4 = ""

fa_page7_row9_target = ""
fa_page7_row9_task = nil
fa_page7_row9_player1 = ""
fa_page7_row9_player2 = ""
fa_page7_row9_player3 = ""
fa_page7_row9_player4 = ""

-- page8 variables
fa_page8_assignment_name = "Unused"
fa_page8_extra_instructions = ""
fa_page8_internal_notes = ""

fa_page8_row1_target = ""
fa_page8_row1_task = nil
fa_page8_row1_player1 = ""
fa_page8_row1_player2 = ""
fa_page8_row1_player3 = ""
fa_page8_row1_player4 = ""

fa_page8_row2_target = ""
fa_page8_row2_task = nil
fa_page8_row2_player1 = ""
fa_page8_row2_player2 = ""
fa_page8_row2_player3 = ""
fa_page8_row2_player4 = ""

fa_page8_row3_target = ""
fa_page8_row3_task = nil
fa_page8_row3_player1 = ""
fa_page8_row3_player2 = ""
fa_page8_row3_player3 = ""
fa_page8_row3_player4 = ""

fa_page8_row4_target = ""
fa_page8_row4_task = nil
fa_page8_row4_player1 = ""
fa_page8_row4_player2 = ""
fa_page8_row4_player3 = ""
fa_page8_row4_player4 = ""

fa_page8_row5_target = ""
fa_page8_row5_task = nil
fa_page8_row5_player1 = ""
fa_page8_row5_player2 = ""
fa_page8_row5_player3 = ""
fa_page8_row5_player4 = ""

fa_page8_row6_target = ""
fa_page8_row6_task = nil
fa_page8_row6_player1 = ""
fa_page8_row6_player2 = ""
fa_page8_row6_player3 = ""
fa_page8_row6_player4 = ""

fa_page8_row7_target = ""
fa_page8_row7_task = nil
fa_page8_row7_player1 = ""
fa_page8_row7_player2 = ""
fa_page8_row7_player3 = ""
fa_page8_row7_player4 = ""

fa_page8_row8_target = ""
fa_page8_row8_task = nil
fa_page8_row8_player1 = ""
fa_page8_row8_player2 = ""
fa_page8_row8_player3 = ""
fa_page8_row8_player4 = ""

fa_page8_row9_target = ""
fa_page8_row9_task = nil
fa_page8_row9_player1 = ""
fa_page8_row9_player2 = ""
fa_page8_row9_player3 = ""
fa_page8_row9_player4 = ""

-- page9 variables
fa_page9_assignment_name = "Unused"
fa_page9_extra_instructions = ""
fa_page9_internal_notes = ""

fa_page9_row1_target = ""
fa_page9_row1_task = nil
fa_page9_row1_player1 = ""
fa_page9_row1_player2 = ""
fa_page9_row1_player3 = ""
fa_page9_row1_player4 = ""

fa_page9_row2_target = ""
fa_page9_row2_task = nil
fa_page9_row2_player1 = ""
fa_page9_row2_player2 = ""
fa_page9_row2_player3 = ""
fa_page9_row2_player4 = ""

fa_page9_row3_target = ""
fa_page9_row3_task = nil
fa_page9_row3_player1 = ""
fa_page9_row3_player2 = ""
fa_page9_row3_player3 = ""
fa_page9_row3_player4 = ""

fa_page9_row4_target = ""
fa_page9_row4_task = nil
fa_page9_row4_player1 = ""
fa_page9_row4_player2 = ""
fa_page9_row4_player3 = ""
fa_page9_row4_player4 = ""

fa_page9_row5_target = ""
fa_page9_row5_task = nil
fa_page9_row5_player1 = ""
fa_page9_row5_player2 = ""
fa_page9_row5_player3 = ""
fa_page9_row5_player4 = ""

fa_page9_row6_target = ""
fa_page9_row6_task = nil
fa_page9_row6_player1 = ""
fa_page9_row6_player2 = ""
fa_page9_row6_player3 = ""
fa_page9_row6_player4 = ""

fa_page9_row7_target = ""
fa_page9_row7_task = nil
fa_page9_row7_player1 = ""
fa_page9_row7_player2 = ""
fa_page9_row7_player3 = ""
fa_page9_row7_player4 = ""

fa_page9_row8_target = ""
fa_page9_row8_task = nil
fa_page9_row8_player1 = ""
fa_page9_row8_player2 = ""
fa_page9_row8_player3 = ""
fa_page9_row8_player4 = ""

fa_page9_row9_target = ""
fa_page9_row9_task = nil
fa_page9_row9_player1 = ""
fa_page9_row9_player2 = ""
fa_page9_row9_player3 = ""
fa_page9_row9_player4 = ""

-- page10 variables
fa_page10_assignment_name = "Unused"
fa_page10_extra_instructions = ""
fa_page10_internal_notes = ""

fa_page10_row1_target = ""
fa_page10_row1_task = nil
fa_page10_row1_player1 = ""
fa_page10_row1_player2 = ""
fa_page10_row1_player3 = ""
fa_page10_row1_player4 = ""

fa_page10_row2_target = ""
fa_page10_row2_task = nil
fa_page10_row2_player1 = ""
fa_page10_row2_player2 = ""
fa_page10_row2_player3 = ""
fa_page10_row2_player4 = ""

fa_page10_row3_target = ""
fa_page10_row3_task = nil
fa_page10_row3_player1 = ""
fa_page10_row3_player2 = ""
fa_page10_row3_player3 = ""
fa_page10_row3_player4 = ""

fa_page10_row4_target = ""
fa_page10_row4_task = nil
fa_page10_row4_player1 = ""
fa_page10_row4_player2 = ""
fa_page10_row4_player3 = ""
fa_page10_row4_player4 = ""

fa_page10_row5_target = ""
fa_page10_row5_task = nil
fa_page10_row5_player1 = ""
fa_page10_row5_player2 = ""
fa_page10_row5_player3 = ""
fa_page10_row5_player4 = ""

fa_page10_row6_target = ""
fa_page10_row6_task = nil
fa_page10_row6_player1 = ""
fa_page10_row6_player2 = ""
fa_page10_row6_player3 = ""
fa_page10_row6_player4 = ""

fa_page10_row7_target = ""
fa_page10_row7_task = nil
fa_page10_row7_player1 = ""
fa_page10_row7_player2 = ""
fa_page10_row7_player3 = ""
fa_page10_row7_player4 = ""

fa_page10_row8_target = ""
fa_page10_row8_task = nil
fa_page10_row8_player1 = ""
fa_page10_row8_player2 = ""
fa_page10_row8_player3 = ""
fa_page10_row8_player4 = ""

fa_page10_row9_target = ""
fa_page10_row9_task = nil
fa_page10_row9_player1 = ""
fa_page10_row9_player2 = ""
fa_page10_row9_player3 = ""
fa_page10_row9_player4 = ""

-- page11 variables
fa_page11_assignment_name = "Unused"
fa_page11_extra_instructions = ""
fa_page11_internal_notes = ""

fa_page11_row1_target = ""
fa_page11_row1_task = nil
fa_page11_row1_player1 = ""
fa_page11_row1_player2 = ""
fa_page11_row1_player3 = ""
fa_page11_row1_player4 = ""

fa_page11_row2_target = ""
fa_page11_row2_task = nil
fa_page11_row2_player1 = ""
fa_page11_row2_player2 = ""
fa_page11_row2_player3 = ""
fa_page11_row2_player4 = ""

fa_page11_row3_target = ""
fa_page11_row3_task = nil
fa_page11_row3_player1 = ""
fa_page11_row3_player2 = ""
fa_page11_row3_player3 = ""
fa_page11_row3_player4 = ""

fa_page11_row4_target = ""
fa_page11_row4_task = nil
fa_page11_row4_player1 = ""
fa_page11_row4_player2 = ""
fa_page11_row4_player3 = ""
fa_page11_row4_player4 = ""

fa_page11_row5_target = ""
fa_page11_row5_task = nil
fa_page11_row5_player1 = ""
fa_page11_row5_player2 = ""
fa_page11_row5_player3 = ""
fa_page11_row5_player4 = ""

fa_page11_row6_target = ""
fa_page11_row6_task = nil
fa_page11_row6_player1 = ""
fa_page11_row6_player2 = ""
fa_page11_row6_player3 = ""
fa_page11_row6_player4 = ""

fa_page11_row7_target = ""
fa_page11_row7_task = nil
fa_page11_row7_player1 = ""
fa_page11_row7_player2 = ""
fa_page11_row7_player3 = ""
fa_page11_row7_player4 = ""

fa_page11_row8_target = ""
fa_page11_row8_task = nil
fa_page11_row8_player1 = ""
fa_page11_row8_player2 = ""
fa_page11_row8_player3 = ""
fa_page11_row8_player4 = ""

fa_page11_row9_target = ""
fa_page11_row9_task = nil
fa_page11_row9_player1 = ""
fa_page11_row9_player2 = ""
fa_page11_row9_player3 = ""
fa_page11_row9_player4 = ""

-- page12 variables
fa_page12_assignment_name = "Unused"
fa_page12_extra_instructions = ""
fa_page12_internal_notes = ""

fa_page12_row1_target = ""
fa_page12_row1_task = nil
fa_page12_row1_player1 = ""
fa_page12_row1_player2 = ""
fa_page12_row1_player3 = ""
fa_page12_row1_player4 = ""

fa_page12_row2_target = ""
fa_page12_row2_task = nil
fa_page12_row2_player1 = ""
fa_page12_row2_player2 = ""
fa_page12_row2_player3 = ""
fa_page12_row2_player4 = ""

fa_page12_row3_target = ""
fa_page12_row3_task = nil
fa_page12_row3_player1 = ""
fa_page12_row3_player2 = ""
fa_page12_row3_player3 = ""
fa_page12_row3_player4 = ""

fa_page12_row4_target = ""
fa_page12_row4_task = nil
fa_page12_row4_player1 = ""
fa_page12_row4_player2 = ""
fa_page12_row4_player3 = ""
fa_page12_row4_player4 = ""

fa_page12_row5_target = ""
fa_page12_row5_task = nil
fa_page12_row5_player1 = ""
fa_page12_row5_player2 = ""
fa_page12_row5_player3 = ""
fa_page12_row5_player4 = ""

fa_page12_row6_target = ""
fa_page12_row6_task = nil
fa_page12_row6_player1 = ""
fa_page12_row6_player2 = ""
fa_page12_row6_player3 = ""
fa_page12_row6_player4 = ""

fa_page12_row7_target = ""
fa_page12_row7_task = nil
fa_page12_row7_player1 = ""
fa_page12_row7_player2 = ""
fa_page12_row7_player3 = ""
fa_page12_row7_player4 = ""

fa_page12_row8_target = ""
fa_page12_row8_task = nil
fa_page12_row8_player1 = ""
fa_page12_row8_player2 = ""
fa_page12_row8_player3 = ""
fa_page12_row8_player4 = ""

fa_page12_row9_target = ""
fa_page12_row9_task = nil
fa_page12_row9_player1 = ""
fa_page12_row9_player2 = ""
fa_page12_row9_player3 = ""
fa_page12_row9_player4 = ""

-- page13 variables
fa_page13_assignment_name = "Unused"
fa_page13_extra_instructions = ""
fa_page13_internal_notes = ""

fa_page13_row1_target = ""
fa_page13_row1_task = nil
fa_page13_row1_player1 = ""
fa_page13_row1_player2 = ""
fa_page13_row1_player3 = ""
fa_page13_row1_player4 = ""

fa_page13_row2_target = ""
fa_page13_row2_task = nil
fa_page13_row2_player1 = ""
fa_page13_row2_player2 = ""
fa_page13_row2_player3 = ""
fa_page13_row2_player4 = ""

fa_page13_row3_target = ""
fa_page13_row3_task = nil
fa_page13_row3_player1 = ""
fa_page13_row3_player2 = ""
fa_page13_row3_player3 = ""
fa_page13_row3_player4 = ""

fa_page13_row4_target = ""
fa_page13_row4_task = nil
fa_page13_row4_player1 = ""
fa_page13_row4_player2 = ""
fa_page13_row4_player3 = ""
fa_page13_row4_player4 = ""

fa_page13_row5_target = ""
fa_page13_row5_task = nil
fa_page13_row5_player1 = ""
fa_page13_row5_player2 = ""
fa_page13_row5_player3 = ""
fa_page13_row5_player4 = ""

fa_page13_row6_target = ""
fa_page13_row6_task = nil
fa_page13_row6_player1 = ""
fa_page13_row6_player2 = ""
fa_page13_row6_player3 = ""
fa_page13_row6_player4 = ""

fa_page13_row7_target = ""
fa_page13_row7_task = nil
fa_page13_row7_player1 = ""
fa_page13_row7_player2 = ""
fa_page13_row7_player3 = ""
fa_page13_row7_player4 = ""

fa_page13_row8_target = ""
fa_page13_row8_task = nil
fa_page13_row8_player1 = ""
fa_page13_row8_player2 = ""
fa_page13_row8_player3 = ""
fa_page13_row8_player4 = ""

fa_page13_row9_target = ""
fa_page13_row9_task = nil
fa_page13_row9_player1 = ""
fa_page13_row9_player2 = ""
fa_page13_row9_player3 = ""
fa_page13_row9_player4 = ""

-- page14 variables
fa_page14_assignment_name = "Unused"
fa_page14_extra_instructions = ""
fa_page14_internal_notes = ""

fa_page14_row1_target = ""
fa_page14_row1_task = nil
fa_page14_row1_player1 = ""
fa_page14_row1_player2 = ""
fa_page14_row1_player3 = ""
fa_page14_row1_player4 = ""

fa_page14_row2_target = ""
fa_page14_row2_task = nil
fa_page14_row2_player1 = ""
fa_page14_row2_player2 = ""
fa_page14_row2_player3 = ""
fa_page14_row2_player4 = ""

fa_page14_row3_target = ""
fa_page14_row3_task = nil
fa_page14_row3_player1 = ""
fa_page14_row3_player2 = ""
fa_page14_row3_player3 = ""
fa_page14_row3_player4 = ""

fa_page14_row4_target = ""
fa_page14_row4_task = nil
fa_page14_row4_player1 = ""
fa_page14_row4_player2 = ""
fa_page14_row4_player3 = ""
fa_page14_row4_player4 = ""

fa_page14_row5_target = ""
fa_page14_row5_task = nil
fa_page14_row5_player1 = ""
fa_page14_row5_player2 = ""
fa_page14_row5_player3 = ""
fa_page14_row5_player4 = ""

fa_page14_row6_target = ""
fa_page14_row6_task = nil
fa_page14_row6_player1 = ""
fa_page14_row6_player2 = ""
fa_page14_row6_player3 = ""
fa_page14_row6_player4 = ""

fa_page14_row7_target = ""
fa_page14_row7_task = nil
fa_page14_row7_player1 = ""
fa_page14_row7_player2 = ""
fa_page14_row7_player3 = ""
fa_page14_row7_player4 = ""

fa_page14_row8_target = ""
fa_page14_row8_task = nil
fa_page14_row8_player1 = ""
fa_page14_row8_player2 = ""
fa_page14_row8_player3 = ""
fa_page14_row8_player4 = ""

fa_page14_row9_target = ""
fa_page14_row9_task = nil
fa_page14_row9_player1 = ""
fa_page14_row9_player2 = ""
fa_page14_row9_player3 = ""
fa_page14_row9_player4 = ""

-- page15 variables
fa_page15_assignment_name = "Unused"
fa_page15_extra_instructions = ""
fa_page15_internal_notes = ""

fa_page15_row1_target = ""
fa_page15_row1_task = nil
fa_page15_row1_player1 = ""
fa_page15_row1_player2 = ""
fa_page15_row1_player3 = ""
fa_page15_row1_player4 = ""

fa_page15_row2_target = ""
fa_page15_row2_task = nil
fa_page15_row2_player1 = ""
fa_page15_row2_player2 = ""
fa_page15_row2_player3 = ""
fa_page15_row2_player4 = ""

fa_page15_row3_target = ""
fa_page15_row3_task = nil
fa_page15_row3_player1 = ""
fa_page15_row3_player2 = ""
fa_page15_row3_player3 = ""
fa_page15_row3_player4 = ""

fa_page15_row4_target = ""
fa_page15_row4_task = nil
fa_page15_row4_player1 = ""
fa_page15_row4_player2 = ""
fa_page15_row4_player3 = ""
fa_page15_row4_player4 = ""

fa_page15_row5_target = ""
fa_page15_row5_task = nil
fa_page15_row5_player1 = ""
fa_page15_row5_player2 = ""
fa_page15_row5_player3 = ""
fa_page15_row5_player4 = ""

fa_page15_row6_target = ""
fa_page15_row6_task = nil
fa_page15_row6_player1 = ""
fa_page15_row6_player2 = ""
fa_page15_row6_player3 = ""
fa_page15_row6_player4 = ""

fa_page15_row7_target = ""
fa_page15_row7_task = nil
fa_page15_row7_player1 = ""
fa_page15_row7_player2 = ""
fa_page15_row7_player3 = ""
fa_page15_row7_player4 = ""

fa_page15_row8_target = ""
fa_page15_row8_task = nil
fa_page15_row8_player1 = ""
fa_page15_row8_player2 = ""
fa_page15_row8_player3 = ""
fa_page15_row8_player4 = ""

fa_page15_row9_target = ""
fa_page15_row9_task = nil
fa_page15_row9_player1 = ""
fa_page15_row9_player2 = ""
fa_page15_row9_player3 = ""
fa_page15_row9_player4 = ""

-- page16 variables
fa_page16_assignment_name = "Unused"
fa_page16_extra_instructions = ""
fa_page16_internal_notes = ""

fa_page16_row1_target = ""
fa_page16_row1_task = nil
fa_page16_row1_player1 = ""
fa_page16_row1_player2 = ""
fa_page16_row1_player3 = ""
fa_page16_row1_player4 = ""

fa_page16_row2_target = ""
fa_page16_row2_task = nil
fa_page16_row2_player1 = ""
fa_page16_row2_player2 = ""
fa_page16_row2_player3 = ""
fa_page16_row2_player4 = ""

fa_page16_row3_target = ""
fa_page16_row3_task = nil
fa_page16_row3_player1 = ""
fa_page16_row3_player2 = ""
fa_page16_row3_player3 = ""
fa_page16_row3_player4 = ""

fa_page16_row4_target = ""
fa_page16_row4_task = nil
fa_page16_row4_player1 = ""
fa_page16_row4_player2 = ""
fa_page16_row4_player3 = ""
fa_page16_row4_player4 = ""

fa_page16_row5_target = ""
fa_page16_row5_task = nil
fa_page16_row5_player1 = ""
fa_page16_row5_player2 = ""
fa_page16_row5_player3 = ""
fa_page16_row5_player4 = ""

fa_page16_row6_target = ""
fa_page16_row6_task = nil
fa_page16_row6_player1 = ""
fa_page16_row6_player2 = ""
fa_page16_row6_player3 = ""
fa_page16_row6_player4 = ""

fa_page16_row7_target = ""
fa_page16_row7_task = nil
fa_page16_row7_player1 = ""
fa_page16_row7_player2 = ""
fa_page16_row7_player3 = ""
fa_page16_row7_player4 = ""

fa_page16_row8_target = ""
fa_page16_row8_task = nil
fa_page16_row8_player1 = ""
fa_page16_row8_player2 = ""
fa_page16_row8_player3 = ""
fa_page16_row8_player4 = ""

fa_page16_row9_target = ""
fa_page16_row9_task = nil
fa_page16_row9_player1 = ""
fa_page16_row9_player2 = ""
fa_page16_row9_player3 = ""
fa_page16_row9_player4 = ""

-- page17 variables
fa_page17_assignment_name = "Unused"
fa_page17_extra_instructions = ""
fa_page17_internal_notes = ""

fa_page17_row1_target = ""
fa_page17_row1_task = nil
fa_page17_row1_player1 = ""
fa_page17_row1_player2 = ""
fa_page17_row1_player3 = ""
fa_page17_row1_player4 = ""

fa_page17_row2_target = ""
fa_page17_row2_task = nil
fa_page17_row2_player1 = ""
fa_page17_row2_player2 = ""
fa_page17_row2_player3 = ""
fa_page17_row2_player4 = ""

fa_page17_row3_target = ""
fa_page17_row3_task = nil
fa_page17_row3_player1 = ""
fa_page17_row3_player2 = ""
fa_page17_row3_player3 = ""
fa_page17_row3_player4 = ""

fa_page17_row4_target = ""
fa_page17_row4_task = nil
fa_page17_row4_player1 = ""
fa_page17_row4_player2 = ""
fa_page17_row4_player3 = ""
fa_page17_row4_player4 = ""

fa_page17_row5_target = ""
fa_page17_row5_task = nil
fa_page17_row5_player1 = ""
fa_page17_row5_player2 = ""
fa_page17_row5_player3 = ""
fa_page17_row5_player4 = ""

fa_page17_row6_target = ""
fa_page17_row6_task = nil
fa_page17_row6_player1 = ""
fa_page17_row6_player2 = ""
fa_page17_row6_player3 = ""
fa_page17_row6_player4 = ""

fa_page17_row7_target = ""
fa_page17_row7_task = nil
fa_page17_row7_player1 = ""
fa_page17_row7_player2 = ""
fa_page17_row7_player3 = ""
fa_page17_row7_player4 = ""

fa_page17_row8_target = ""
fa_page17_row8_task = nil
fa_page17_row8_player1 = ""
fa_page17_row8_player2 = ""
fa_page17_row8_player3 = ""
fa_page17_row8_player4 = ""

fa_page17_row9_target = ""
fa_page17_row9_task = nil
fa_page17_row9_player1 = ""
fa_page17_row9_player2 = ""
fa_page17_row9_player3 = ""
fa_page17_row9_player4 = ""

-- page18 variables
fa_page18_assignment_name = "Unused"
fa_page18_extra_instructions = ""
fa_page18_internal_notes = ""

fa_page18_row1_target = ""
fa_page18_row1_task = nil
fa_page18_row1_player1 = ""
fa_page18_row1_player2 = ""
fa_page18_row1_player3 = ""
fa_page18_row1_player4 = ""

fa_page18_row2_target = ""
fa_page18_row2_task = nil
fa_page18_row2_player1 = ""
fa_page18_row2_player2 = ""
fa_page18_row2_player3 = ""
fa_page18_row2_player4 = ""

fa_page18_row3_target = ""
fa_page18_row3_task = nil
fa_page18_row3_player1 = ""
fa_page18_row3_player2 = ""
fa_page18_row3_player3 = ""
fa_page18_row3_player4 = ""

fa_page18_row4_target = ""
fa_page18_row4_task = nil
fa_page18_row4_player1 = ""
fa_page18_row4_player2 = ""
fa_page18_row4_player3 = ""
fa_page18_row4_player4 = ""

fa_page18_row5_target = ""
fa_page18_row5_task = nil
fa_page18_row5_player1 = ""
fa_page18_row5_player2 = ""
fa_page18_row5_player3 = ""
fa_page18_row5_player4 = ""

fa_page18_row6_target = ""
fa_page18_row6_task = nil
fa_page18_row6_player1 = ""
fa_page18_row6_player2 = ""
fa_page18_row6_player3 = ""
fa_page18_row6_player4 = ""

fa_page18_row7_target = ""
fa_page18_row7_task = nil
fa_page18_row7_player1 = ""
fa_page18_row7_player2 = ""
fa_page18_row7_player3 = ""
fa_page18_row7_player4 = ""

fa_page18_row8_target = ""
fa_page18_row8_task = nil
fa_page18_row8_player1 = ""
fa_page18_row8_player2 = ""
fa_page18_row8_player3 = ""
fa_page18_row8_player4 = ""

fa_page18_row9_target = ""
fa_page18_row9_task = nil
fa_page18_row9_player1 = ""
fa_page18_row9_player2 = ""
fa_page18_row9_player3 = ""
fa_page18_row9_player4 = ""

-- page19 variables
fa_page19_assignment_name = "Unused"
fa_page19_extra_instructions = ""
fa_page19_internal_notes = ""

fa_page19_row1_target = ""
fa_page19_row1_task = nil
fa_page19_row1_player1 = ""
fa_page19_row1_player2 = ""
fa_page19_row1_player3 = ""
fa_page19_row1_player4 = ""

fa_page19_row2_target = ""
fa_page19_row2_task = nil
fa_page19_row2_player1 = ""
fa_page19_row2_player2 = ""
fa_page19_row2_player3 = ""
fa_page19_row2_player4 = ""

fa_page19_row3_target = ""
fa_page19_row3_task = nil
fa_page19_row3_player1 = ""
fa_page19_row3_player2 = ""
fa_page19_row3_player3 = ""
fa_page19_row3_player4 = ""

fa_page19_row4_target = ""
fa_page19_row4_task = nil
fa_page19_row4_player1 = ""
fa_page19_row4_player2 = ""
fa_page19_row4_player3 = ""
fa_page19_row4_player4 = ""

fa_page19_row5_target = ""
fa_page19_row5_task = nil
fa_page19_row5_player1 = ""
fa_page19_row5_player2 = ""
fa_page19_row5_player3 = ""
fa_page19_row5_player4 = ""

fa_page19_row6_target = ""
fa_page19_row6_task = nil
fa_page19_row6_player1 = ""
fa_page19_row6_player2 = ""
fa_page19_row6_player3 = ""
fa_page19_row6_player4 = ""

fa_page19_row7_target = ""
fa_page19_row7_task = nil
fa_page19_row7_player1 = ""
fa_page19_row7_player2 = ""
fa_page19_row7_player3 = ""
fa_page19_row7_player4 = ""

fa_page19_row8_target = ""
fa_page19_row8_task = nil
fa_page19_row8_player1 = ""
fa_page19_row8_player2 = ""
fa_page19_row8_player3 = ""
fa_page19_row8_player4 = ""

fa_page19_row9_target = ""
fa_page19_row9_task = nil
fa_page19_row9_player1 = ""
fa_page19_row9_player2 = ""
fa_page19_row9_player3 = ""
fa_page19_row9_player4 = ""

-- page20 variables
fa_page20_assignment_name = "Unused"
fa_page20_extra_instructions = ""
fa_page20_internal_notes = ""

fa_page20_row1_target = ""
fa_page20_row1_task = nil
fa_page20_row1_player1 = ""
fa_page20_row1_player2 = ""
fa_page20_row1_player3 = ""
fa_page20_row1_player4 = ""

fa_page20_row2_target = ""
fa_page20_row2_task = nil
fa_page20_row2_player1 = ""
fa_page20_row2_player2 = ""
fa_page20_row2_player3 = ""
fa_page20_row2_player4 = ""

fa_page20_row3_target = ""
fa_page20_row3_task = nil
fa_page20_row3_player1 = ""
fa_page20_row3_player2 = ""
fa_page20_row3_player3 = ""
fa_page20_row3_player4 = ""

fa_page20_row4_target = ""
fa_page20_row4_task = nil
fa_page20_row4_player1 = ""
fa_page20_row4_player2 = ""
fa_page20_row4_player3 = ""
fa_page20_row4_player4 = ""

fa_page20_row5_target = ""
fa_page20_row5_task = nil
fa_page20_row5_player1 = ""
fa_page20_row5_player2 = ""
fa_page20_row5_player3 = ""
fa_page20_row5_player4 = ""

fa_page20_row6_target = ""
fa_page20_row6_task = nil
fa_page20_row6_player1 = ""
fa_page20_row6_player2 = ""
fa_page20_row6_player3 = ""
fa_page20_row6_player4 = ""

fa_page20_row7_target = ""
fa_page20_row7_task = nil
fa_page20_row7_player1 = ""
fa_page20_row7_player2 = ""
fa_page20_row7_player3 = ""
fa_page20_row7_player4 = ""

fa_page20_row8_target = ""
fa_page20_row8_task = nil
fa_page20_row8_player1 = ""
fa_page20_row8_player2 = ""
fa_page20_row8_player3 = ""
fa_page20_row8_player4 = ""

fa_page20_row9_target = ""
fa_page20_row9_task = nil
fa_page20_row9_player1 = ""
fa_page20_row9_player2 = ""
fa_page20_row9_player3 = ""
fa_page20_row9_player4 = ""

-- page21 variables
fa_page21_assignment_name = "Unused"
fa_page21_extra_instructions = ""
fa_page21_internal_notes = ""

fa_page21_row1_target = ""
fa_page21_row1_task = nil
fa_page21_row1_player1 = ""
fa_page21_row1_player2 = ""
fa_page21_row1_player3 = ""
fa_page21_row1_player4 = ""

fa_page21_row2_target = ""
fa_page21_row2_task = nil
fa_page21_row2_player1 = ""
fa_page21_row2_player2 = ""
fa_page21_row2_player3 = ""
fa_page21_row2_player4 = ""

fa_page21_row3_target = ""
fa_page21_row3_task = nil
fa_page21_row3_player1 = ""
fa_page21_row3_player2 = ""
fa_page21_row3_player3 = ""
fa_page21_row3_player4 = ""

fa_page21_row4_target = ""
fa_page21_row4_task = nil
fa_page21_row4_player1 = ""
fa_page21_row4_player2 = ""
fa_page21_row4_player3 = ""
fa_page21_row4_player4 = ""

fa_page21_row5_target = ""
fa_page21_row5_task = nil
fa_page21_row5_player1 = ""
fa_page21_row5_player2 = ""
fa_page21_row5_player3 = ""
fa_page21_row5_player4 = ""

fa_page21_row6_target = ""
fa_page21_row6_task = nil
fa_page21_row6_player1 = ""
fa_page21_row6_player2 = ""
fa_page21_row6_player3 = ""
fa_page21_row6_player4 = ""

fa_page21_row7_target = ""
fa_page21_row7_task = nil
fa_page21_row7_player1 = ""
fa_page21_row7_player2 = ""
fa_page21_row7_player3 = ""
fa_page21_row7_player4 = ""

fa_page21_row8_target = ""
fa_page21_row8_task = nil
fa_page21_row8_player1 = ""
fa_page21_row8_player2 = ""
fa_page21_row8_player3 = ""
fa_page21_row8_player4 = ""

fa_page21_row9_target = ""
fa_page21_row9_task = nil
fa_page21_row9_player1 = ""
fa_page21_row9_player2 = ""
fa_page21_row9_player3 = ""
fa_page21_row9_player4 = ""

-- page22 variables
fa_page22_assignment_name = "Unused"
fa_page22_extra_instructions = ""
fa_page22_internal_notes = ""

fa_page22_row1_target = ""
fa_page22_row1_task = nil
fa_page22_row1_player1 = ""
fa_page22_row1_player2 = ""
fa_page22_row1_player3 = ""
fa_page22_row1_player4 = ""

fa_page22_row2_target = ""
fa_page22_row2_task = nil
fa_page22_row2_player1 = ""
fa_page22_row2_player2 = ""
fa_page22_row2_player3 = ""
fa_page22_row2_player4 = ""

fa_page22_row3_target = ""
fa_page22_row3_task = nil
fa_page22_row3_player1 = ""
fa_page22_row3_player2 = ""
fa_page22_row3_player3 = ""
fa_page22_row3_player4 = ""

fa_page22_row4_target = ""
fa_page22_row4_task = nil
fa_page22_row4_player1 = ""
fa_page22_row4_player2 = ""
fa_page22_row4_player3 = ""
fa_page22_row4_player4 = ""

fa_page22_row5_target = ""
fa_page22_row5_task = nil
fa_page22_row5_player1 = ""
fa_page22_row5_player2 = ""
fa_page22_row5_player3 = ""
fa_page22_row5_player4 = ""

fa_page22_row6_target = ""
fa_page22_row6_task = nil
fa_page22_row6_player1 = ""
fa_page22_row6_player2 = ""
fa_page22_row6_player3 = ""
fa_page22_row6_player4 = ""

fa_page22_row7_target = ""
fa_page22_row7_task = nil
fa_page22_row7_player1 = ""
fa_page22_row7_player2 = ""
fa_page22_row7_player3 = ""
fa_page22_row7_player4 = ""

fa_page22_row8_target = ""
fa_page22_row8_task = nil
fa_page22_row8_player1 = ""
fa_page22_row8_player2 = ""
fa_page22_row8_player3 = ""
fa_page22_row8_player4 = ""

fa_page22_row9_target = ""
fa_page22_row9_task = nil
fa_page22_row9_player1 = ""
fa_page22_row9_player2 = ""
fa_page22_row9_player3 = ""
fa_page22_row9_player4 = ""

-- page23 variables
fa_page23_assignment_name = "Unused"
fa_page23_extra_instructions = ""
fa_page23_internal_notes = ""

fa_page23_row1_target = ""
fa_page23_row1_task = nil
fa_page23_row1_player1 = ""
fa_page23_row1_player2 = ""
fa_page23_row1_player3 = ""
fa_page23_row1_player4 = ""

fa_page23_row2_target = ""
fa_page23_row2_task = nil
fa_page23_row2_player1 = ""
fa_page23_row2_player2 = ""
fa_page23_row2_player3 = ""
fa_page23_row2_player4 = ""

fa_page23_row3_target = ""
fa_page23_row3_task = nil
fa_page23_row3_player1 = ""
fa_page23_row3_player2 = ""
fa_page23_row3_player3 = ""
fa_page23_row3_player4 = ""

fa_page23_row4_target = ""
fa_page23_row4_task = nil
fa_page23_row4_player1 = ""
fa_page23_row4_player2 = ""
fa_page23_row4_player3 = ""
fa_page23_row4_player4 = ""

fa_page23_row5_target = ""
fa_page23_row5_task = nil
fa_page23_row5_player1 = ""
fa_page23_row5_player2 = ""
fa_page23_row5_player3 = ""
fa_page23_row5_player4 = ""

fa_page23_row6_target = ""
fa_page23_row6_task = nil
fa_page23_row6_player1 = ""
fa_page23_row6_player2 = ""
fa_page23_row6_player3 = ""
fa_page23_row6_player4 = ""

fa_page23_row7_target = ""
fa_page23_row7_task = nil
fa_page23_row7_player1 = ""
fa_page23_row7_player2 = ""
fa_page23_row7_player3 = ""
fa_page23_row7_player4 = ""

fa_page23_row8_target = ""
fa_page23_row8_task = nil
fa_page23_row8_player1 = ""
fa_page23_row8_player2 = ""
fa_page23_row8_player3 = ""
fa_page23_row8_player4 = ""

fa_page23_row9_target = ""
fa_page23_row9_task = nil
fa_page23_row9_player1 = ""
fa_page23_row9_player2 = ""
fa_page23_row9_player3 = ""
fa_page23_row9_player4 = ""

-- page24 variables
fa_page24_assignment_name = "Unused"
fa_page24_extra_instructions = ""
fa_page24_internal_notes = ""

fa_page24_row1_target = ""
fa_page24_row1_task = nil
fa_page24_row1_player1 = ""
fa_page24_row1_player2 = ""
fa_page24_row1_player3 = ""
fa_page24_row1_player4 = ""

fa_page24_row2_target = ""
fa_page24_row2_task = nil
fa_page24_row2_player1 = ""
fa_page24_row2_player2 = ""
fa_page24_row2_player3 = ""
fa_page24_row2_player4 = ""

fa_page24_row3_target = ""
fa_page24_row3_task = nil
fa_page24_row3_player1 = ""
fa_page24_row3_player2 = ""
fa_page24_row3_player3 = ""
fa_page24_row3_player4 = ""

fa_page24_row4_target = ""
fa_page24_row4_task = nil
fa_page24_row4_player1 = ""
fa_page24_row4_player2 = ""
fa_page24_row4_player3 = ""
fa_page24_row4_player4 = ""

fa_page24_row5_target = ""
fa_page24_row5_task = nil
fa_page24_row5_player1 = ""
fa_page24_row5_player2 = ""
fa_page24_row5_player3 = ""
fa_page24_row5_player4 = ""

fa_page24_row6_target = ""
fa_page24_row6_task = nil
fa_page24_row6_player1 = ""
fa_page24_row6_player2 = ""
fa_page24_row6_player3 = ""
fa_page24_row6_player4 = ""

fa_page24_row7_target = ""
fa_page24_row7_task = nil
fa_page24_row7_player1 = ""
fa_page24_row7_player2 = ""
fa_page24_row7_player3 = ""
fa_page24_row7_player4 = ""

fa_page24_row8_target = ""
fa_page24_row8_task = nil
fa_page24_row8_player1 = ""
fa_page24_row8_player2 = ""
fa_page24_row8_player3 = ""
fa_page24_row8_player4 = ""

fa_page24_row9_target = ""
fa_page24_row9_task = nil
fa_page24_row9_player1 = ""
fa_page24_row9_player2 = ""
fa_page24_row9_player3 = ""
fa_page24_row9_player4 = ""

-- page25 variables
fa_page25_assignment_name = "Unused"
fa_page25_extra_instructions = ""
fa_page25_internal_notes = ""

fa_page25_row1_target = ""
fa_page25_row1_task = nil
fa_page25_row1_player1 = ""
fa_page25_row1_player2 = ""
fa_page25_row1_player3 = ""
fa_page25_row1_player4 = ""

fa_page25_row2_target = ""
fa_page25_row2_task = nil
fa_page25_row2_player1 = ""
fa_page25_row2_player2 = ""
fa_page25_row2_player3 = ""
fa_page25_row2_player4 = ""

fa_page25_row3_target = ""
fa_page25_row3_task = nil
fa_page25_row3_player1 = ""
fa_page25_row3_player2 = ""
fa_page25_row3_player3 = ""
fa_page25_row3_player4 = ""

fa_page25_row4_target = ""
fa_page25_row4_task = nil
fa_page25_row4_player1 = ""
fa_page25_row4_player2 = ""
fa_page25_row4_player3 = ""
fa_page25_row4_player4 = ""

fa_page25_row5_target = ""
fa_page25_row5_task = nil
fa_page25_row5_player1 = ""
fa_page25_row5_player2 = ""
fa_page25_row5_player3 = ""
fa_page25_row5_player4 = ""

fa_page25_row6_target = ""
fa_page25_row6_task = nil
fa_page25_row6_player1 = ""
fa_page25_row6_player2 = ""
fa_page25_row6_player3 = ""
fa_page25_row6_player4 = ""

fa_page25_row7_target = ""
fa_page25_row7_task = nil
fa_page25_row7_player1 = ""
fa_page25_row7_player2 = ""
fa_page25_row7_player3 = ""
fa_page25_row7_player4 = ""

fa_page25_row8_target = ""
fa_page25_row8_task = nil
fa_page25_row8_player1 = ""
fa_page25_row8_player2 = ""
fa_page25_row8_player3 = ""
fa_page25_row8_player4 = ""

fa_page25_row9_target = ""
fa_page25_row9_task = nil
fa_page25_row9_player1 = ""
fa_page25_row9_player2 = ""
fa_page25_row9_player3 = ""
fa_page25_row9_player4 = ""


-- Function to change settings back to defaults
function fa_setDefaults()
	fa_config_report_channel = ""
	fa_config_channel_name = ""
	fa_config_test_data = false
	fa_config_logging = false
	fa_resetAssignments("all","all","all")
	AceConfigDialog:Close("Forgiven_Assignments")
end



-- Function to capture a list of all players in the party/raid
function fa_capturePlayers()
	if fa_config_logging then Forgiven_Assignments:Print("capturing list of players in group/raid..") end
	
	-- Default target list and sorting table
	fa_target_list = {
		["{crâne}"]= skullIcon.."{crâne}",
		["{croix}"]= crossIcon.."{croix}",
		["{carré}"]= squareIcon.."{carré}",
		["{lune}"]= moonIcon.."{lune}",
		["{triangle}"]= triangleIcon.."{triangle}",
		["{losange}"]= diamondIcon.."{losange}",
		["{cercle}"]= circleIcon.."{cercle}",
		["{etoile}"]= starIcon.."{etoile}",
		["Boss"]="Boss",
		["Adds"]="Adds",
		["Raid"]="Raid",
		["Melee"]="Melee",
		["Ranged"]="Ranged",
		["Main-tank"]="Main-tank",
		["Off-tank"]="Off-tank",
		["[placeholder]"]= shieldIcon.."[placeholder]",
	}
	fa_targetSort_list = {
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
	}
	
	-- Default list of task types for dropdown	
	fa_task_list = {
		["Tank"]="Tank",
		["Heals"]="Heals",
		["DPS"]="DPS",
		["Polymorph"]="Polymorph",
		["Fear"]="Fear",
		["Banish"]="Banish",
		["Enslave"]="Enslave",
		["Shackle"]="Shackle",
		["MindControl"]="MindControl",
		["Hibernate"]="Hibernate",
		["Trap"]="Trap",
		["Kite"]="Kite",
		["Sap"]="Sap",
		["Interrupt"]="Interrupt",
		["DispelMagic"]="DispelMagic",
		["RemoveCurse"]="RemoveCurse",
		["CurePoison"]="CurePoison",
		["CureDisease"]="CureDisease",
		["Other"]="Other",
	}
	fa_taskSort_list = { 
		"Tank",
		"Heals",
		"DPS",
		"Polymorph",
		"Fear",
		"Banish",
		"Enslave",
		"Shackle",
		"MindControl",
		"Hibernate",
		"Trap",
		"Kite",
		"Sap",
		"Interrupt",
		"DispelMagic",
		"RemoveCurse",
		"CurePoison",
		"CureDisease",
		"Other",
	}
	
	-- Create blank player lists for each task type, manually adding a clear button
	fa_tank_list = {["clear_player"]="-- clear player --"}
	fa_heals_list = {["clear_player"]="-- clear player --"}
	fa_polymorph_list = {["clear_player"]="-- clear player --"}
	fa_fear_list = {["clear_player"]="-- clear player --"}
	fa_banish_list = {["clear_player"]="-- clear player --"}
	fa_enslave_list = {["clear_player"]="-- clear player --"}
	fa_shackle_list = {["clear_player"]="-- clear player --"}
	fa_mindcontrol_list = {["clear_player"]="-- clear player --"}
	fa_hibernate_list = {["clear_player"]="-- clear player --"}
	fa_trap_list = {["clear_player"]="-- clear player --"}
	fa_kite_list = {["clear_player"]="-- clear player --"}
	fa_sap_list = {["clear_player"]="-- clear player --"}
	fa_interrupt_list = {["clear_player"]="-- clear player --"}
	fa_dispelmagic_list = {["clear_player"]="-- clear player --"}
	fa_removecurse_list = {["clear_player"]="-- clear player --"}
	fa_curepoison_list = {["clear_player"]="-- clear player --"}
	fa_curedisease_list = {["clear_player"]="-- clear player --"}
	fa_other_list = {["clear_player"]="-- clear player --"}
	
	
	-- Function to filter players into what tasks they can do
	local function filterTasks(player,class)
	
		-- Add individual classes to relevant lists
		if class == "DRUID" then	
			fa_tank_list[player]=druidIcon..player
			fa_heals_list[player]=druidIcon..player
			fa_hibernate_list[player]=druidIcon..player
			fa_removecurse_list[player]=druidIcon..player
			fa_curepoison_list[player]=druidIcon..player
			fa_other_list[player]=druidIcon..player
		
		elseif class == "HUNTER" then
			fa_trap_list[player]=hunterIcon..player
			fa_kite_list[player]=hunterIcon..player
			fa_other_list[player]=hunterIcon..player
		
		elseif class == "MAGE" then
			fa_polymorph_list[player]=mageIcon..player
			fa_kite_list[player]=mageIcon..player
			fa_interrupt_list[player]=mageIcon..player
			fa_removecurse_list[player]=mageIcon..player
			fa_other_list[player]=mageIcon..player
		
		elseif class == "PALADIN" then
			fa_tank_list[player]=paladinIcon..player
			fa_heals_list[player]=paladinIcon..player
			fa_dispelmagic_list[player]=paladinIcon..player
			fa_curepoison_list[player]=paladinIcon..player
			fa_curedisease_list[player]=paladinIcon..player
			fa_other_list[player]=paladinIcon..player
			
		elseif class == "PRIEST" then
			fa_heals_list[player]=priestIcon..player
			fa_fear_list[player]=priestIcon..player
			fa_shackle_list[player]=priestIcon..player
			fa_mindcontrol_list[player]=priestIcon..player
			fa_dispelmagic_list[player]=priestIcon..player
			fa_curedisease_list[player]=priestIcon..player
			fa_other_list[player]=priestIcon..player
		
		elseif class == "ROGUE" then
			fa_sap_list[player]=rogueIcon..player
			fa_interrupt_list[player]=rogueIcon..player
			fa_other_list[player]=rogueIcon..player
		
		elseif class == "SHAMAN" then
			fa_heals_list[player]=shamanIcon..player
			fa_interrupt_list[player]=shamanIcon..player
			fa_curepoison_list[player]=shamanIcon..player
			fa_curedisease_list[player]=shamanIcon..player
			fa_other_list[player]=shamanIcon..player
		
		elseif class == "WARLOCK" then
			fa_fear_list[player]=warlockIcon..player
			fa_banish_list[player]=warlockIcon..player
			fa_enslave_list[player]=warlockIcon..player
			fa_other_list[player]=warlockIcon..player
		
		elseif class == "WARRIOR" then
			fa_tank_list[player]=warriorIcon..player
			fa_interrupt_list[player]=warriorIcon..player
			fa_other_list[player]=warriorIcon..player
		end
	end

	
	-- Gather a list of all raid members, then filter into task lists
	if IsInRaid() then
		for i=1,40 do
			if (UnitName('raid'..i)) then
				local playerName, realm = UnitName("raid"..i)
				local className, classFilename, classID = UnitClass(UnitName('raid'..i))
				filterTasks(playerName,classFilename)
				
				-- Add anybody with main tank assignment to targets for healing assignments
				if GetPartyAssignment("MAINTANK","raid"..i) then
					fa_target_list[playerName]=shieldIcon..playerName
					tinsert(fa_targetSort_list,playerName)
				end
			end
		end
		
	-- Gather a list of all party members, then filter into task lists
	elseif IsInGroup() then
		for i=1,4 do
			if (UnitName('party'..i)) then
				local playerName, realm = UnitName("party"..i)
				local className, classFilename, classID = UnitClass(UnitName('party'..i))
				filterTasks(playerName,classFilename)
			end
		end
		
		-- Add the player individually as they aren't included in UnitName party
		local playerName, realm = UnitName("player")
		local className, classFilename, classID = UnitClass(UnitName("player"))
		filterTasks(playerName,classFilename)
	
	-- Add a fallback entry to inform user that they are not in a group
	else
		fa_tank_list = {["Empty"]="No party/raid"}
		fa_heals_list = {["Empty"]="No party/raid"}
		fa_polymorph_list = {["Empty"]="No party/raid"}
		fa_fear_list = {["Empty"]="No party/raid"}
		fa_banish_list = {["Empty"]="No party/raid"}
		fa_enslave_list = {["Empty"]="No party/raid"}
		fa_shackle_list = {["Empty"]="No party/raid"}
		fa_mindcontrol_list = {["Empty"]="No party/raid"}
		fa_hibernate_list = {["Empty"]="No party/raid"}
		fa_trap_list = {["Empty"]="No party/raid"}
		fa_kite_list = {["Empty"]="No party/raid"}
		fa_sap_list = {["Empty"]="No party/raid"}
		fa_interrupt_list = {["Empty"]="No party/raid"}
		fa_dispelmagic_list = {["Empty"]="No party/raid"}
		fa_removecurse_list = {["Empty"]="No party/raid"}
		fa_curepoison_list = {["Empty"]="No party/raid"}
		fa_curedisease_list = {["Empty"]="No party/raid"}
		fa_other_list = {["Empty"]="No party/raid"}
	end
end



-- Function to clean up players saved in variables if they are no longer in the group
function fa_cleanupPlayers()
	if fa_config_logging then Forgiven_Assignments:Print("cleaning up player assignments..") end
	-- Table of all assigned player variables
	fa_assignedPlayers = {
		-- page1 variables
		["fa_page1_row1_player1"]=fa_page1_row1_player1,
		["fa_page1_row1_player2"]=fa_page1_row1_player2,
		["fa_page1_row1_player3"]=fa_page1_row1_player3,
		["fa_page1_row1_player4"]=fa_page1_row1_player4,

		["fa_page1_row2_player1"]=fa_page1_row2_player1,
		["fa_page1_row2_player2"]=fa_page1_row2_player2,
		["fa_page1_row2_player3"]=fa_page1_row2_player3,
		["fa_page1_row2_player4"]=fa_page1_row2_player4,

		["fa_page1_row3_player1"]=fa_page1_row3_player1,
		["fa_page1_row3_player2"]=fa_page1_row3_player2,
		["fa_page1_row3_player3"]=fa_page1_row3_player3,
		["fa_page1_row3_player4"]=fa_page1_row3_player4,

		["fa_page1_row4_player1"]=fa_page1_row4_player1,
		["fa_page1_row4_player2"]=fa_page1_row4_player2,
		["fa_page1_row4_player3"]=fa_page1_row4_player3,
		["fa_page1_row4_player4"]=fa_page1_row4_player4,

		["fa_page1_row5_player1"]=fa_page1_row5_player1,
		["fa_page1_row5_player2"]=fa_page1_row5_player2,
		["fa_page1_row5_player3"]=fa_page1_row5_player3,
		["fa_page1_row5_player4"]=fa_page1_row5_player4,

		["fa_page1_row6_player1"]=fa_page1_row6_player1,
		["fa_page1_row6_player2"]=fa_page1_row6_player2,
		["fa_page1_row6_player3"]=fa_page1_row6_player3,
		["fa_page1_row6_player4"]=fa_page1_row6_player4,

		["fa_page1_row7_player1"]=fa_page1_row7_player1,
		["fa_page1_row7_player2"]=fa_page1_row7_player2,
		["fa_page1_row7_player3"]=fa_page1_row7_player3,
		["fa_page1_row7_player4"]=fa_page1_row7_player4,

		["fa_page1_row8_player1"]=fa_page1_row8_player1,
		["fa_page1_row8_player2"]=fa_page1_row8_player2,
		["fa_page1_row8_player3"]=fa_page1_row8_player3,
		["fa_page1_row8_player4"]=fa_page1_row8_player4,

		["fa_page1_row9_player1"]=fa_page1_row9_player1,
		["fa_page1_row9_player2"]=fa_page1_row9_player2,
		["fa_page1_row9_player3"]=fa_page1_row9_player3,
		["fa_page1_row9_player4"]=fa_page1_row9_player4,

		-- page2 variables
		["fa_page2_row1_player1"]=fa_page2_row1_player1,
		["fa_page2_row1_player2"]=fa_page2_row1_player2,
		["fa_page2_row1_player3"]=fa_page2_row1_player3,
		["fa_page2_row1_player4"]=fa_page2_row1_player4,

		["fa_page2_row2_player1"]=fa_page2_row2_player1,
		["fa_page2_row2_player2"]=fa_page2_row2_player2,
		["fa_page2_row2_player3"]=fa_page2_row2_player3,
		["fa_page2_row2_player4"]=fa_page2_row2_player4,

		["fa_page2_row3_player1"]=fa_page2_row3_player1,
		["fa_page2_row3_player2"]=fa_page2_row3_player2,
		["fa_page2_row3_player3"]=fa_page2_row3_player3,
		["fa_page2_row3_player4"]=fa_page2_row3_player4,

		["fa_page2_row4_player1"]=fa_page2_row4_player1,
		["fa_page2_row4_player2"]=fa_page2_row4_player2,
		["fa_page2_row4_player3"]=fa_page2_row4_player3,
		["fa_page2_row4_player4"]=fa_page2_row4_player4,

		["fa_page2_row5_player1"]=fa_page2_row5_player1,
		["fa_page2_row5_player2"]=fa_page2_row5_player2,
		["fa_page2_row5_player3"]=fa_page2_row5_player3,
		["fa_page2_row5_player4"]=fa_page2_row5_player4,

		["fa_page2_row6_player1"]=fa_page2_row6_player1,
		["fa_page2_row6_player2"]=fa_page2_row6_player2,
		["fa_page2_row6_player3"]=fa_page2_row6_player3,
		["fa_page2_row6_player4"]=fa_page2_row6_player4,

		["fa_page2_row7_player1"]=fa_page2_row7_player1,
		["fa_page2_row7_player2"]=fa_page2_row7_player2,
		["fa_page2_row7_player3"]=fa_page2_row7_player3,
		["fa_page2_row7_player4"]=fa_page2_row7_player4,

		["fa_page2_row8_player1"]=fa_page2_row8_player1,
		["fa_page2_row8_player2"]=fa_page2_row8_player2,
		["fa_page2_row8_player3"]=fa_page2_row8_player3,
		["fa_page2_row8_player4"]=fa_page2_row8_player4,

		["fa_page2_row9_player1"]=fa_page2_row9_player1,
		["fa_page2_row9_player2"]=fa_page2_row9_player2,
		["fa_page2_row9_player3"]=fa_page2_row9_player3,
		["fa_page2_row9_player4"]=fa_page2_row9_player4,

		-- page3 variables
		["fa_page3_row1_player1"]=fa_page3_row1_player1,
		["fa_page3_row1_player2"]=fa_page3_row1_player2,
		["fa_page3_row1_player3"]=fa_page3_row1_player3,
		["fa_page3_row1_player4"]=fa_page3_row1_player4,

		["fa_page3_row2_player1"]=fa_page3_row2_player1,
		["fa_page3_row2_player2"]=fa_page3_row2_player2,
		["fa_page3_row2_player3"]=fa_page3_row2_player3,
		["fa_page3_row2_player4"]=fa_page3_row2_player4,

		["fa_page3_row3_player1"]=fa_page3_row3_player1,
		["fa_page3_row3_player2"]=fa_page3_row3_player2,
		["fa_page3_row3_player3"]=fa_page3_row3_player3,
		["fa_page3_row3_player4"]=fa_page3_row3_player4,

		["fa_page3_row4_player1"]=fa_page3_row4_player1,
		["fa_page3_row4_player2"]=fa_page3_row4_player2,
		["fa_page3_row4_player3"]=fa_page3_row4_player3,
		["fa_page3_row4_player4"]=fa_page3_row4_player4,

		["fa_page3_row5_player1"]=fa_page3_row5_player1,
		["fa_page3_row5_player2"]=fa_page3_row5_player2,
		["fa_page3_row5_player3"]=fa_page3_row5_player3,
		["fa_page3_row5_player4"]=fa_page3_row5_player4,

		["fa_page3_row6_player1"]=fa_page3_row6_player1,
		["fa_page3_row6_player2"]=fa_page3_row6_player2,
		["fa_page3_row6_player3"]=fa_page3_row6_player3,
		["fa_page3_row6_player4"]=fa_page3_row6_player4,

		["fa_page3_row7_player1"]=fa_page3_row7_player1,
		["fa_page3_row7_player2"]=fa_page3_row7_player2,
		["fa_page3_row7_player3"]=fa_page3_row7_player3,
		["fa_page3_row7_player4"]=fa_page3_row7_player4,

		["fa_page3_row8_player1"]=fa_page3_row8_player1,
		["fa_page3_row8_player2"]=fa_page3_row8_player2,
		["fa_page3_row8_player3"]=fa_page3_row8_player3,
		["fa_page3_row8_player4"]=fa_page3_row8_player4,

		["fa_page3_row9_player1"]=fa_page3_row9_player1,
		["fa_page3_row9_player2"]=fa_page3_row9_player2,
		["fa_page3_row9_player3"]=fa_page3_row9_player3,
		["fa_page3_row9_player4"]=fa_page3_row9_player4,

		-- page4 variables
		["fa_page4_row1_player1"]=fa_page4_row1_player1,
		["fa_page4_row1_player2"]=fa_page4_row1_player2,
		["fa_page4_row1_player3"]=fa_page4_row1_player3,
		["fa_page4_row1_player4"]=fa_page4_row1_player4,

		["fa_page4_row2_player1"]=fa_page4_row2_player1,
		["fa_page4_row2_player2"]=fa_page4_row2_player2,
		["fa_page4_row2_player3"]=fa_page4_row2_player3,
		["fa_page4_row2_player4"]=fa_page4_row2_player4,

		["fa_page4_row3_player1"]=fa_page4_row3_player1,
		["fa_page4_row3_player2"]=fa_page4_row3_player2,
		["fa_page4_row3_player3"]=fa_page4_row3_player3,
		["fa_page4_row3_player4"]=fa_page4_row3_player4,

		["fa_page4_row4_player1"]=fa_page4_row4_player1,
		["fa_page4_row4_player2"]=fa_page4_row4_player2,
		["fa_page4_row4_player3"]=fa_page4_row4_player3,
		["fa_page4_row4_player4"]=fa_page4_row4_player4,

		["fa_page4_row5_player1"]=fa_page4_row5_player1,
		["fa_page4_row5_player2"]=fa_page4_row5_player2,
		["fa_page4_row5_player3"]=fa_page4_row5_player3,
		["fa_page4_row5_player4"]=fa_page4_row5_player4,

		["fa_page4_row6_player1"]=fa_page4_row6_player1,
		["fa_page4_row6_player2"]=fa_page4_row6_player2,
		["fa_page4_row6_player3"]=fa_page4_row6_player3,
		["fa_page4_row6_player4"]=fa_page4_row6_player4,

		["fa_page4_row7_player1"]=fa_page4_row7_player1,
		["fa_page4_row7_player2"]=fa_page4_row7_player2,
		["fa_page4_row7_player3"]=fa_page4_row7_player3,
		["fa_page4_row7_player4"]=fa_page4_row7_player4,

		["fa_page4_row8_player1"]=fa_page4_row8_player1,
		["fa_page4_row8_player2"]=fa_page4_row8_player2,
		["fa_page4_row8_player3"]=fa_page4_row8_player3,
		["fa_page4_row8_player4"]=fa_page4_row8_player4,

		["fa_page4_row9_player1"]=fa_page4_row9_player1,
		["fa_page4_row9_player2"]=fa_page4_row9_player2,
		["fa_page4_row9_player3"]=fa_page4_row9_player3,
		["fa_page4_row9_player4"]=fa_page4_row9_player4,

		-- page5 variables
		["fa_page5_row1_player1"]=fa_page5_row1_player1,
		["fa_page5_row1_player2"]=fa_page5_row1_player2,
		["fa_page5_row1_player3"]=fa_page5_row1_player3,
		["fa_page5_row1_player4"]=fa_page5_row1_player4,

		["fa_page5_row2_player1"]=fa_page5_row2_player1,
		["fa_page5_row2_player2"]=fa_page5_row2_player2,
		["fa_page5_row2_player3"]=fa_page5_row2_player3,
		["fa_page5_row2_player4"]=fa_page5_row2_player4,

		["fa_page5_row3_player1"]=fa_page5_row3_player1,
		["fa_page5_row3_player2"]=fa_page5_row3_player2,
		["fa_page5_row3_player3"]=fa_page5_row3_player3,
		["fa_page5_row3_player4"]=fa_page5_row3_player4,

		["fa_page5_row4_player1"]=fa_page5_row4_player1,
		["fa_page5_row4_player2"]=fa_page5_row4_player2,
		["fa_page5_row4_player3"]=fa_page5_row4_player3,
		["fa_page5_row4_player4"]=fa_page5_row4_player4,

		["fa_page5_row5_player1"]=fa_page5_row5_player1,
		["fa_page5_row5_player2"]=fa_page5_row5_player2,
		["fa_page5_row5_player3"]=fa_page5_row5_player3,
		["fa_page5_row5_player4"]=fa_page5_row5_player4,

		["fa_page5_row6_player1"]=fa_page5_row6_player1,
		["fa_page5_row6_player2"]=fa_page5_row6_player2,
		["fa_page5_row6_player3"]=fa_page5_row6_player3,
		["fa_page5_row6_player4"]=fa_page5_row6_player4,

		["fa_page5_row7_player1"]=fa_page5_row7_player1,
		["fa_page5_row7_player2"]=fa_page5_row7_player2,
		["fa_page5_row7_player3"]=fa_page5_row7_player3,
		["fa_page5_row7_player4"]=fa_page5_row7_player4,

		["fa_page5_row8_player1"]=fa_page5_row8_player1,
		["fa_page5_row8_player2"]=fa_page5_row8_player2,
		["fa_page5_row8_player3"]=fa_page5_row8_player3,
		["fa_page5_row8_player4"]=fa_page5_row8_player4,

		["fa_page5_row9_player1"]=fa_page5_row9_player1,
		["fa_page5_row9_player2"]=fa_page5_row9_player2,
		["fa_page5_row9_player3"]=fa_page5_row9_player3,
		["fa_page5_row9_player4"]=fa_page5_row9_player4,

		-- page6 variables
		["fa_page6_row1_player1"]=fa_page6_row1_player1,
		["fa_page6_row1_player2"]=fa_page6_row1_player2,
		["fa_page6_row1_player3"]=fa_page6_row1_player3,
		["fa_page6_row1_player4"]=fa_page6_row1_player4,

		["fa_page6_row2_player1"]=fa_page6_row2_player1,
		["fa_page6_row2_player2"]=fa_page6_row2_player2,
		["fa_page6_row2_player3"]=fa_page6_row2_player3,
		["fa_page6_row2_player4"]=fa_page6_row2_player4,

		["fa_page6_row3_player1"]=fa_page6_row3_player1,
		["fa_page6_row3_player2"]=fa_page6_row3_player2,
		["fa_page6_row3_player3"]=fa_page6_row3_player3,
		["fa_page6_row3_player4"]=fa_page6_row3_player4,

		["fa_page6_row4_player1"]=fa_page6_row4_player1,
		["fa_page6_row4_player2"]=fa_page6_row4_player2,
		["fa_page6_row4_player3"]=fa_page6_row4_player3,
		["fa_page6_row4_player4"]=fa_page6_row4_player4,

		["fa_page6_row5_player1"]=fa_page6_row5_player1,
		["fa_page6_row5_player2"]=fa_page6_row5_player2,
		["fa_page6_row5_player3"]=fa_page6_row5_player3,
		["fa_page6_row5_player4"]=fa_page6_row5_player4,

		["fa_page6_row6_player1"]=fa_page6_row6_player1,
		["fa_page6_row6_player2"]=fa_page6_row6_player2,
		["fa_page6_row6_player3"]=fa_page6_row6_player3,
		["fa_page6_row6_player4"]=fa_page6_row6_player4,

		["fa_page6_row7_player1"]=fa_page6_row7_player1,
		["fa_page6_row7_player2"]=fa_page6_row7_player2,
		["fa_page6_row7_player3"]=fa_page6_row7_player3,
		["fa_page6_row7_player4"]=fa_page6_row7_player4,

		["fa_page6_row8_player1"]=fa_page6_row8_player1,
		["fa_page6_row8_player2"]=fa_page6_row8_player2,
		["fa_page6_row8_player3"]=fa_page6_row8_player3,
		["fa_page6_row8_player4"]=fa_page6_row8_player4,

		["fa_page6_row9_player1"]=fa_page6_row9_player1,
		["fa_page6_row9_player2"]=fa_page6_row9_player2,
		["fa_page6_row9_player3"]=fa_page6_row9_player3,
		["fa_page6_row9_player4"]=fa_page6_row9_player4,

		-- page7 variables
		["fa_page7_row1_player1"]=fa_page7_row1_player1,
		["fa_page7_row1_player2"]=fa_page7_row1_player2,
		["fa_page7_row1_player3"]=fa_page7_row1_player3,
		["fa_page7_row1_player4"]=fa_page7_row1_player4,

		["fa_page7_row2_player1"]=fa_page7_row2_player1,
		["fa_page7_row2_player2"]=fa_page7_row2_player2,
		["fa_page7_row2_player3"]=fa_page7_row2_player3,
		["fa_page7_row2_player4"]=fa_page7_row2_player4,

		["fa_page7_row3_player1"]=fa_page7_row3_player1,
		["fa_page7_row3_player2"]=fa_page7_row3_player2,
		["fa_page7_row3_player3"]=fa_page7_row3_player3,
		["fa_page7_row3_player4"]=fa_page7_row3_player4,

		["fa_page7_row4_player1"]=fa_page7_row4_player1,
		["fa_page7_row4_player2"]=fa_page7_row4_player2,
		["fa_page7_row4_player3"]=fa_page7_row4_player3,
		["fa_page7_row4_player4"]=fa_page7_row4_player4,

		["fa_page7_row5_player1"]=fa_page7_row5_player1,
		["fa_page7_row5_player2"]=fa_page7_row5_player2,
		["fa_page7_row5_player3"]=fa_page7_row5_player3,
		["fa_page7_row5_player4"]=fa_page7_row5_player4,

		["fa_page7_row6_player1"]=fa_page7_row6_player1,
		["fa_page7_row6_player2"]=fa_page7_row6_player2,
		["fa_page7_row6_player3"]=fa_page7_row6_player3,
		["fa_page7_row6_player4"]=fa_page7_row6_player4,

		["fa_page7_row7_player1"]=fa_page7_row7_player1,
		["fa_page7_row7_player2"]=fa_page7_row7_player2,
		["fa_page7_row7_player3"]=fa_page7_row7_player3,
		["fa_page7_row7_player4"]=fa_page7_row7_player4,

		["fa_page7_row8_player1"]=fa_page7_row8_player1,
		["fa_page7_row8_player2"]=fa_page7_row8_player2,
		["fa_page7_row8_player3"]=fa_page7_row8_player3,
		["fa_page7_row8_player4"]=fa_page7_row8_player4,

		["fa_page7_row9_player1"]=fa_page7_row9_player1,
		["fa_page7_row9_player2"]=fa_page7_row9_player2,
		["fa_page7_row9_player3"]=fa_page7_row9_player3,
		["fa_page7_row9_player4"]=fa_page7_row9_player4,

		-- page8 variables
		["fa_page8_row1_player1"]=fa_page8_row1_player1,
		["fa_page8_row1_player2"]=fa_page8_row1_player2,
		["fa_page8_row1_player3"]=fa_page8_row1_player3,
		["fa_page8_row1_player4"]=fa_page8_row1_player4,

		["fa_page8_row2_player1"]=fa_page8_row2_player1,
		["fa_page8_row2_player2"]=fa_page8_row2_player2,
		["fa_page8_row2_player3"]=fa_page8_row2_player3,
		["fa_page8_row2_player4"]=fa_page8_row2_player4,

		["fa_page8_row3_player1"]=fa_page8_row3_player1,
		["fa_page8_row3_player2"]=fa_page8_row3_player2,
		["fa_page8_row3_player3"]=fa_page8_row3_player3,
		["fa_page8_row3_player4"]=fa_page8_row3_player4,

		["fa_page8_row4_player1"]=fa_page8_row4_player1,
		["fa_page8_row4_player2"]=fa_page8_row4_player2,
		["fa_page8_row4_player3"]=fa_page8_row4_player3,
		["fa_page8_row4_player4"]=fa_page8_row4_player4,

		["fa_page8_row5_player1"]=fa_page8_row5_player1,
		["fa_page8_row5_player2"]=fa_page8_row5_player2,
		["fa_page8_row5_player3"]=fa_page8_row5_player3,
		["fa_page8_row5_player4"]=fa_page8_row5_player4,

		["fa_page8_row6_player1"]=fa_page8_row6_player1,
		["fa_page8_row6_player2"]=fa_page8_row6_player2,
		["fa_page8_row6_player3"]=fa_page8_row6_player3,
		["fa_page8_row6_player4"]=fa_page8_row6_player4,

		["fa_page8_row7_player1"]=fa_page8_row7_player1,
		["fa_page8_row7_player2"]=fa_page8_row7_player2,
		["fa_page8_row7_player3"]=fa_page8_row7_player3,
		["fa_page8_row7_player4"]=fa_page8_row7_player4,

		["fa_page8_row8_player1"]=fa_page8_row8_player1,
		["fa_page8_row8_player2"]=fa_page8_row8_player2,
		["fa_page8_row8_player3"]=fa_page8_row8_player3,
		["fa_page8_row8_player4"]=fa_page8_row8_player4,

		["fa_page8_row9_player1"]=fa_page8_row9_player1,
		["fa_page8_row9_player2"]=fa_page8_row9_player2,
		["fa_page8_row9_player3"]=fa_page8_row9_player3,
		["fa_page8_row9_player4"]=fa_page8_row9_player4,

		-- page9 variables
		["fa_page9_row1_player1"]=fa_page9_row1_player1,
		["fa_page9_row1_player2"]=fa_page9_row1_player2,
		["fa_page9_row1_player3"]=fa_page9_row1_player3,
		["fa_page9_row1_player4"]=fa_page9_row1_player4,

		["fa_page9_row2_player1"]=fa_page9_row2_player1,
		["fa_page9_row2_player2"]=fa_page9_row2_player2,
		["fa_page9_row2_player3"]=fa_page9_row2_player3,
		["fa_page9_row2_player4"]=fa_page9_row2_player4,

		["fa_page9_row3_player1"]=fa_page9_row3_player1,
		["fa_page9_row3_player2"]=fa_page9_row3_player2,
		["fa_page9_row3_player3"]=fa_page9_row3_player3,
		["fa_page9_row3_player4"]=fa_page9_row3_player4,

		["fa_page9_row4_player1"]=fa_page9_row4_player1,
		["fa_page9_row4_player2"]=fa_page9_row4_player2,
		["fa_page9_row4_player3"]=fa_page9_row4_player3,
		["fa_page9_row4_player4"]=fa_page9_row4_player4,

		["fa_page9_row5_player1"]=fa_page9_row5_player1,
		["fa_page9_row5_player2"]=fa_page9_row5_player2,
		["fa_page9_row5_player3"]=fa_page9_row5_player3,
		["fa_page9_row5_player4"]=fa_page9_row5_player4,

		["fa_page9_row6_player1"]=fa_page9_row6_player1,
		["fa_page9_row6_player2"]=fa_page9_row6_player2,
		["fa_page9_row6_player3"]=fa_page9_row6_player3,
		["fa_page9_row6_player4"]=fa_page9_row6_player4,

		["fa_page9_row7_player1"]=fa_page9_row7_player1,
		["fa_page9_row7_player2"]=fa_page9_row7_player2,
		["fa_page9_row7_player3"]=fa_page9_row7_player3,
		["fa_page9_row7_player4"]=fa_page9_row7_player4,

		["fa_page9_row8_player1"]=fa_page9_row8_player1,
		["fa_page9_row8_player2"]=fa_page9_row8_player2,
		["fa_page9_row8_player3"]=fa_page9_row8_player3,
		["fa_page9_row8_player4"]=fa_page9_row8_player4,

		["fa_page9_row9_player1"]=fa_page9_row9_player1,
		["fa_page9_row9_player2"]=fa_page9_row9_player2,
		["fa_page9_row9_player3"]=fa_page9_row9_player3,
		["fa_page9_row9_player4"]=fa_page9_row9_player4,

		-- page10 variables
		["fa_page10_row1_player1"]=fa_page10_row1_player1,
		["fa_page10_row1_player2"]=fa_page10_row1_player2,
		["fa_page10_row1_player3"]=fa_page10_row1_player3,
		["fa_page10_row1_player4"]=fa_page10_row1_player4,

		["fa_page10_row2_player1"]=fa_page10_row2_player1,
		["fa_page10_row2_player2"]=fa_page10_row2_player2,
		["fa_page10_row2_player3"]=fa_page10_row2_player3,
		["fa_page10_row2_player4"]=fa_page10_row2_player4,

		["fa_page10_row3_player1"]=fa_page10_row3_player1,
		["fa_page10_row3_player2"]=fa_page10_row3_player2,
		["fa_page10_row3_player3"]=fa_page10_row3_player3,
		["fa_page10_row3_player4"]=fa_page10_row3_player4,

		["fa_page10_row4_player1"]=fa_page10_row4_player1,
		["fa_page10_row4_player2"]=fa_page10_row4_player2,
		["fa_page10_row4_player3"]=fa_page10_row4_player3,
		["fa_page10_row4_player4"]=fa_page10_row4_player4,

		["fa_page10_row5_player1"]=fa_page10_row5_player1,
		["fa_page10_row5_player2"]=fa_page10_row5_player2,
		["fa_page10_row5_player3"]=fa_page10_row5_player3,
		["fa_page10_row5_player4"]=fa_page10_row5_player4,

		["fa_page10_row6_player1"]=fa_page10_row6_player1,
		["fa_page10_row6_player2"]=fa_page10_row6_player2,
		["fa_page10_row6_player3"]=fa_page10_row6_player3,
		["fa_page10_row6_player4"]=fa_page10_row6_player4,

		["fa_page10_row7_player1"]=fa_page10_row7_player1,
		["fa_page10_row7_player2"]=fa_page10_row7_player2,
		["fa_page10_row7_player3"]=fa_page10_row7_player3,
		["fa_page10_row7_player4"]=fa_page10_row7_player4,

		["fa_page10_row8_player1"]=fa_page10_row8_player1,
		["fa_page10_row8_player2"]=fa_page10_row8_player2,
		["fa_page10_row8_player3"]=fa_page10_row8_player3,
		["fa_page10_row8_player4"]=fa_page10_row8_player4,

		["fa_page10_row9_player1"]=fa_page10_row9_player1,
		["fa_page10_row9_player2"]=fa_page10_row9_player2,
		["fa_page10_row9_player3"]=fa_page10_row9_player3,
		["fa_page10_row9_player4"]=fa_page10_row9_player4,

		-- page11 variables
		["fa_page11_row1_player1"]=fa_page11_row1_player1,
		["fa_page11_row1_player2"]=fa_page11_row1_player2,
		["fa_page11_row1_player3"]=fa_page11_row1_player3,
		["fa_page11_row1_player4"]=fa_page11_row1_player4,

		["fa_page11_row2_player1"]=fa_page11_row2_player1,
		["fa_page11_row2_player2"]=fa_page11_row2_player2,
		["fa_page11_row2_player3"]=fa_page11_row2_player3,
		["fa_page11_row2_player4"]=fa_page11_row2_player4,

		["fa_page11_row3_player1"]=fa_page11_row3_player1,
		["fa_page11_row3_player2"]=fa_page11_row3_player2,
		["fa_page11_row3_player3"]=fa_page11_row3_player3,
		["fa_page11_row3_player4"]=fa_page11_row3_player4,

		["fa_page11_row4_player1"]=fa_page11_row4_player1,
		["fa_page11_row4_player2"]=fa_page11_row4_player2,
		["fa_page11_row4_player3"]=fa_page11_row4_player3,
		["fa_page11_row4_player4"]=fa_page11_row4_player4,

		["fa_page11_row5_player1"]=fa_page11_row5_player1,
		["fa_page11_row5_player2"]=fa_page11_row5_player2,
		["fa_page11_row5_player3"]=fa_page11_row5_player3,
		["fa_page11_row5_player4"]=fa_page11_row5_player4,

		["fa_page11_row6_player1"]=fa_page11_row6_player1,
		["fa_page11_row6_player2"]=fa_page11_row6_player2,
		["fa_page11_row6_player3"]=fa_page11_row6_player3,
		["fa_page11_row6_player4"]=fa_page11_row6_player4,

		["fa_page11_row7_player1"]=fa_page11_row7_player1,
		["fa_page11_row7_player2"]=fa_page11_row7_player2,
		["fa_page11_row7_player3"]=fa_page11_row7_player3,
		["fa_page11_row7_player4"]=fa_page11_row7_player4,

		["fa_page11_row8_player1"]=fa_page11_row8_player1,
		["fa_page11_row8_player2"]=fa_page11_row8_player2,
		["fa_page11_row8_player3"]=fa_page11_row8_player3,
		["fa_page11_row8_player4"]=fa_page11_row8_player4,

		["fa_page11_row9_player1"]=fa_page11_row9_player1,
		["fa_page11_row9_player2"]=fa_page11_row9_player2,
		["fa_page11_row9_player3"]=fa_page11_row9_player3,
		["fa_page11_row9_player4"]=fa_page11_row9_player4,

		-- page12 variables
		["fa_page12_row1_player1"]=fa_page12_row1_player1,
		["fa_page12_row1_player2"]=fa_page12_row1_player2,
		["fa_page12_row1_player3"]=fa_page12_row1_player3,
		["fa_page12_row1_player4"]=fa_page12_row1_player4,

		["fa_page12_row2_player1"]=fa_page12_row2_player1,
		["fa_page12_row2_player2"]=fa_page12_row2_player2,
		["fa_page12_row2_player3"]=fa_page12_row2_player3,
		["fa_page12_row2_player4"]=fa_page12_row2_player4,

		["fa_page12_row3_player1"]=fa_page12_row3_player1,
		["fa_page12_row3_player2"]=fa_page12_row3_player2,
		["fa_page12_row3_player3"]=fa_page12_row3_player3,
		["fa_page12_row3_player4"]=fa_page12_row3_player4,

		["fa_page12_row4_player1"]=fa_page12_row4_player1,
		["fa_page12_row4_player2"]=fa_page12_row4_player2,
		["fa_page12_row4_player3"]=fa_page12_row4_player3,
		["fa_page12_row4_player4"]=fa_page12_row4_player4,

		["fa_page12_row5_player1"]=fa_page12_row5_player1,
		["fa_page12_row5_player2"]=fa_page12_row5_player2,
		["fa_page12_row5_player3"]=fa_page12_row5_player3,
		["fa_page12_row5_player4"]=fa_page12_row5_player4,

		["fa_page12_row6_player1"]=fa_page12_row6_player1,
		["fa_page12_row6_player2"]=fa_page12_row6_player2,
		["fa_page12_row6_player3"]=fa_page12_row6_player3,
		["fa_page12_row6_player4"]=fa_page12_row6_player4,

		["fa_page12_row7_player1"]=fa_page12_row7_player1,
		["fa_page12_row7_player2"]=fa_page12_row7_player2,
		["fa_page12_row7_player3"]=fa_page12_row7_player3,
		["fa_page12_row7_player4"]=fa_page12_row7_player4,

		["fa_page12_row8_player1"]=fa_page12_row8_player1,
		["fa_page12_row8_player2"]=fa_page12_row8_player2,
		["fa_page12_row8_player3"]=fa_page12_row8_player3,
		["fa_page12_row8_player4"]=fa_page12_row8_player4,

		["fa_page12_row9_player1"]=fa_page12_row9_player1,
		["fa_page12_row9_player2"]=fa_page12_row9_player2,
		["fa_page12_row9_player3"]=fa_page12_row9_player3,
		["fa_page12_row9_player4"]=fa_page12_row9_player4,

		-- page13 variables
		["fa_page13_row1_player1"]=fa_page13_row1_player1,
		["fa_page13_row1_player2"]=fa_page13_row1_player2,
		["fa_page13_row1_player3"]=fa_page13_row1_player3,
		["fa_page13_row1_player4"]=fa_page13_row1_player4,

		["fa_page13_row2_player1"]=fa_page13_row2_player1,
		["fa_page13_row2_player2"]=fa_page13_row2_player2,
		["fa_page13_row2_player3"]=fa_page13_row2_player3,
		["fa_page13_row2_player4"]=fa_page13_row2_player4,

		["fa_page13_row3_player1"]=fa_page13_row3_player1,
		["fa_page13_row3_player2"]=fa_page13_row3_player2,
		["fa_page13_row3_player3"]=fa_page13_row3_player3,
		["fa_page13_row3_player4"]=fa_page13_row3_player4,

		["fa_page13_row4_player1"]=fa_page13_row4_player1,
		["fa_page13_row4_player2"]=fa_page13_row4_player2,
		["fa_page13_row4_player3"]=fa_page13_row4_player3,
		["fa_page13_row4_player4"]=fa_page13_row4_player4,

		["fa_page13_row5_player1"]=fa_page13_row5_player1,
		["fa_page13_row5_player2"]=fa_page13_row5_player2,
		["fa_page13_row5_player3"]=fa_page13_row5_player3,
		["fa_page13_row5_player4"]=fa_page13_row5_player4,

		["fa_page13_row6_player1"]=fa_page13_row6_player1,
		["fa_page13_row6_player2"]=fa_page13_row6_player2,
		["fa_page13_row6_player3"]=fa_page13_row6_player3,
		["fa_page13_row6_player4"]=fa_page13_row6_player4,

		["fa_page13_row7_player1"]=fa_page13_row7_player1,
		["fa_page13_row7_player2"]=fa_page13_row7_player2,
		["fa_page13_row7_player3"]=fa_page13_row7_player3,
		["fa_page13_row7_player4"]=fa_page13_row7_player4,

		["fa_page13_row8_player1"]=fa_page13_row8_player1,
		["fa_page13_row8_player2"]=fa_page13_row8_player2,
		["fa_page13_row8_player3"]=fa_page13_row8_player3,
		["fa_page13_row8_player4"]=fa_page13_row8_player4,

		["fa_page13_row9_player1"]=fa_page13_row9_player1,
		["fa_page13_row9_player2"]=fa_page13_row9_player2,
		["fa_page13_row9_player3"]=fa_page13_row9_player3,
		["fa_page13_row9_player4"]=fa_page13_row9_player4,

		-- page14 variables
		["fa_page14_row1_player1"]=fa_page14_row1_player1,
		["fa_page14_row1_player2"]=fa_page14_row1_player2,
		["fa_page14_row1_player3"]=fa_page14_row1_player3,
		["fa_page14_row1_player4"]=fa_page14_row1_player4,

		["fa_page14_row2_player1"]=fa_page14_row2_player1,
		["fa_page14_row2_player2"]=fa_page14_row2_player2,
		["fa_page14_row2_player3"]=fa_page14_row2_player3,
		["fa_page14_row2_player4"]=fa_page14_row2_player4,

		["fa_page14_row3_player1"]=fa_page14_row3_player1,
		["fa_page14_row3_player2"]=fa_page14_row3_player2,
		["fa_page14_row3_player3"]=fa_page14_row3_player3,
		["fa_page14_row3_player4"]=fa_page14_row3_player4,

		["fa_page14_row4_player1"]=fa_page14_row4_player1,
		["fa_page14_row4_player2"]=fa_page14_row4_player2,
		["fa_page14_row4_player3"]=fa_page14_row4_player3,
		["fa_page14_row4_player4"]=fa_page14_row4_player4,

		["fa_page14_row5_player1"]=fa_page14_row5_player1,
		["fa_page14_row5_player2"]=fa_page14_row5_player2,
		["fa_page14_row5_player3"]=fa_page14_row5_player3,
		["fa_page14_row5_player4"]=fa_page14_row5_player4,

		["fa_page14_row6_player1"]=fa_page14_row6_player1,
		["fa_page14_row6_player2"]=fa_page14_row6_player2,
		["fa_page14_row6_player3"]=fa_page14_row6_player3,
		["fa_page14_row6_player4"]=fa_page14_row6_player4,

		["fa_page14_row7_player1"]=fa_page14_row7_player1,
		["fa_page14_row7_player2"]=fa_page14_row7_player2,
		["fa_page14_row7_player3"]=fa_page14_row7_player3,
		["fa_page14_row7_player4"]=fa_page14_row7_player4,

		["fa_page14_row8_player1"]=fa_page14_row8_player1,
		["fa_page14_row8_player2"]=fa_page14_row8_player2,
		["fa_page14_row8_player3"]=fa_page14_row8_player3,
		["fa_page14_row8_player4"]=fa_page14_row8_player4,

		["fa_page14_row9_player1"]=fa_page14_row9_player1,
		["fa_page14_row9_player2"]=fa_page14_row9_player2,
		["fa_page14_row9_player3"]=fa_page14_row9_player3,
		["fa_page14_row9_player4"]=fa_page14_row9_player4,

		-- page15 variables
		["fa_page15_row1_player1"]=fa_page15_row1_player1,
		["fa_page15_row1_player2"]=fa_page15_row1_player2,
		["fa_page15_row1_player3"]=fa_page15_row1_player3,
		["fa_page15_row1_player4"]=fa_page15_row1_player4,

		["fa_page15_row2_player1"]=fa_page15_row2_player1,
		["fa_page15_row2_player2"]=fa_page15_row2_player2,
		["fa_page15_row2_player3"]=fa_page15_row2_player3,
		["fa_page15_row2_player4"]=fa_page15_row2_player4,

		["fa_page15_row3_player1"]=fa_page15_row3_player1,
		["fa_page15_row3_player2"]=fa_page15_row3_player2,
		["fa_page15_row3_player3"]=fa_page15_row3_player3,
		["fa_page15_row3_player4"]=fa_page15_row3_player4,

		["fa_page15_row4_player1"]=fa_page15_row4_player1,
		["fa_page15_row4_player2"]=fa_page15_row4_player2,
		["fa_page15_row4_player3"]=fa_page15_row4_player3,
		["fa_page15_row4_player4"]=fa_page15_row4_player4,

		["fa_page15_row5_player1"]=fa_page15_row5_player1,
		["fa_page15_row5_player2"]=fa_page15_row5_player2,
		["fa_page15_row5_player3"]=fa_page15_row5_player3,
		["fa_page15_row5_player4"]=fa_page15_row5_player4,

		["fa_page15_row6_player1"]=fa_page15_row6_player1,
		["fa_page15_row6_player2"]=fa_page15_row6_player2,
		["fa_page15_row6_player3"]=fa_page15_row6_player3,
		["fa_page15_row6_player4"]=fa_page15_row6_player4,

		["fa_page15_row7_player1"]=fa_page15_row7_player1,
		["fa_page15_row7_player2"]=fa_page15_row7_player2,
		["fa_page15_row7_player3"]=fa_page15_row7_player3,
		["fa_page15_row7_player4"]=fa_page15_row7_player4,

		["fa_page15_row8_player1"]=fa_page15_row8_player1,
		["fa_page15_row8_player2"]=fa_page15_row8_player2,
		["fa_page15_row8_player3"]=fa_page15_row8_player3,
		["fa_page15_row8_player4"]=fa_page15_row8_player4,

		["fa_page15_row9_player1"]=fa_page15_row9_player1,
		["fa_page15_row9_player2"]=fa_page15_row9_player2,
		["fa_page15_row9_player3"]=fa_page15_row9_player3,
		["fa_page15_row9_player4"]=fa_page15_row9_player4,
		
		-- page16 variables
		["fa_page16_row1_player1"]=fa_page16_row1_player1,
		["fa_page16_row1_player2"]=fa_page16_row1_player2,
		["fa_page16_row1_player3"]=fa_page16_row1_player3,
		["fa_page16_row1_player4"]=fa_page16_row1_player4,

		["fa_page16_row2_player1"]=fa_page16_row2_player1,
		["fa_page16_row2_player2"]=fa_page16_row2_player2,
		["fa_page16_row2_player3"]=fa_page16_row2_player3,
		["fa_page16_row2_player4"]=fa_page16_row2_player4,

		["fa_page16_row3_player1"]=fa_page16_row3_player1,
		["fa_page16_row3_player2"]=fa_page16_row3_player2,
		["fa_page16_row3_player3"]=fa_page16_row3_player3,
		["fa_page16_row3_player4"]=fa_page16_row3_player4,

		["fa_page16_row4_player1"]=fa_page16_row4_player1,
		["fa_page16_row4_player2"]=fa_page16_row4_player2,
		["fa_page16_row4_player3"]=fa_page16_row4_player3,
		["fa_page16_row4_player4"]=fa_page16_row4_player4,

		["fa_page16_row5_player1"]=fa_page16_row5_player1,
		["fa_page16_row5_player2"]=fa_page16_row5_player2,
		["fa_page16_row5_player3"]=fa_page16_row5_player3,
		["fa_page16_row5_player4"]=fa_page16_row5_player4,

		["fa_page16_row6_player1"]=fa_page16_row6_player1,
		["fa_page16_row6_player2"]=fa_page16_row6_player2,
		["fa_page16_row6_player3"]=fa_page16_row6_player3,
		["fa_page16_row6_player4"]=fa_page16_row6_player4,

		["fa_page16_row7_player1"]=fa_page16_row7_player1,
		["fa_page16_row7_player2"]=fa_page16_row7_player2,
		["fa_page16_row7_player3"]=fa_page16_row7_player3,
		["fa_page16_row7_player4"]=fa_page16_row7_player4,

		["fa_page16_row8_player1"]=fa_page16_row8_player1,
		["fa_page16_row8_player2"]=fa_page16_row8_player2,
		["fa_page16_row8_player3"]=fa_page16_row8_player3,
		["fa_page16_row8_player4"]=fa_page16_row8_player4,

		["fa_page16_row9_player1"]=fa_page16_row9_player1,
		["fa_page16_row9_player2"]=fa_page16_row9_player2,
		["fa_page16_row9_player3"]=fa_page16_row9_player3,
		["fa_page16_row9_player4"]=fa_page16_row9_player4,

		-- page17 variables
		["fa_page17_row1_player1"]=fa_page17_row1_player1,
		["fa_page17_row1_player2"]=fa_page17_row1_player2,
		["fa_page17_row1_player3"]=fa_page17_row1_player3,
		["fa_page17_row1_player4"]=fa_page17_row1_player4,

		["fa_page17_row2_player1"]=fa_page17_row2_player1,
		["fa_page17_row2_player2"]=fa_page17_row2_player2,
		["fa_page17_row2_player3"]=fa_page17_row2_player3,
		["fa_page17_row2_player4"]=fa_page17_row2_player4,

		["fa_page17_row3_player1"]=fa_page17_row3_player1,
		["fa_page17_row3_player2"]=fa_page17_row3_player2,
		["fa_page17_row3_player3"]=fa_page17_row3_player3,
		["fa_page17_row3_player4"]=fa_page17_row3_player4,

		["fa_page17_row4_player1"]=fa_page17_row4_player1,
		["fa_page17_row4_player2"]=fa_page17_row4_player2,
		["fa_page17_row4_player3"]=fa_page17_row4_player3,
		["fa_page17_row4_player4"]=fa_page17_row4_player4,

		["fa_page17_row5_player1"]=fa_page17_row5_player1,
		["fa_page17_row5_player2"]=fa_page17_row5_player2,
		["fa_page17_row5_player3"]=fa_page17_row5_player3,
		["fa_page17_row5_player4"]=fa_page17_row5_player4,

		["fa_page17_row6_player1"]=fa_page17_row6_player1,
		["fa_page17_row6_player2"]=fa_page17_row6_player2,
		["fa_page17_row6_player3"]=fa_page17_row6_player3,
		["fa_page17_row6_player4"]=fa_page17_row6_player4,

		["fa_page17_row7_player1"]=fa_page17_row7_player1,
		["fa_page17_row7_player2"]=fa_page17_row7_player2,
		["fa_page17_row7_player3"]=fa_page17_row7_player3,
		["fa_page17_row7_player4"]=fa_page17_row7_player4,

		["fa_page17_row8_player1"]=fa_page17_row8_player1,
		["fa_page17_row8_player2"]=fa_page17_row8_player2,
		["fa_page17_row8_player3"]=fa_page17_row8_player3,
		["fa_page17_row8_player4"]=fa_page17_row8_player4,

		["fa_page17_row9_player1"]=fa_page17_row9_player1,
		["fa_page17_row9_player2"]=fa_page17_row9_player2,
		["fa_page17_row9_player3"]=fa_page17_row9_player3,
		["fa_page17_row9_player4"]=fa_page17_row9_player4,

		-- page18 variables
		["fa_page18_row1_player1"]=fa_page18_row1_player1,
		["fa_page18_row1_player2"]=fa_page18_row1_player2,
		["fa_page18_row1_player3"]=fa_page18_row1_player3,
		["fa_page18_row1_player4"]=fa_page18_row1_player4,

		["fa_page18_row2_player1"]=fa_page18_row2_player1,
		["fa_page18_row2_player2"]=fa_page18_row2_player2,
		["fa_page18_row2_player3"]=fa_page18_row2_player3,
		["fa_page18_row2_player4"]=fa_page18_row2_player4,

		["fa_page18_row3_player1"]=fa_page18_row3_player1,
		["fa_page18_row3_player2"]=fa_page18_row3_player2,
		["fa_page18_row3_player3"]=fa_page18_row3_player3,
		["fa_page18_row3_player4"]=fa_page18_row3_player4,

		["fa_page18_row4_player1"]=fa_page18_row4_player1,
		["fa_page18_row4_player2"]=fa_page18_row4_player2,
		["fa_page18_row4_player3"]=fa_page18_row4_player3,
		["fa_page18_row4_player4"]=fa_page18_row4_player4,

		["fa_page18_row5_player1"]=fa_page18_row5_player1,
		["fa_page18_row5_player2"]=fa_page18_row5_player2,
		["fa_page18_row5_player3"]=fa_page18_row5_player3,
		["fa_page18_row5_player4"]=fa_page18_row5_player4,

		["fa_page18_row6_player1"]=fa_page18_row6_player1,
		["fa_page18_row6_player2"]=fa_page18_row6_player2,
		["fa_page18_row6_player3"]=fa_page18_row6_player3,
		["fa_page18_row6_player4"]=fa_page18_row6_player4,

		["fa_page18_row7_player1"]=fa_page18_row7_player1,
		["fa_page18_row7_player2"]=fa_page18_row7_player2,
		["fa_page18_row7_player3"]=fa_page18_row7_player3,
		["fa_page18_row7_player4"]=fa_page18_row7_player4,

		["fa_page18_row8_player1"]=fa_page18_row8_player1,
		["fa_page18_row8_player2"]=fa_page18_row8_player2,
		["fa_page18_row8_player3"]=fa_page18_row8_player3,
		["fa_page18_row8_player4"]=fa_page18_row8_player4,

		["fa_page18_row9_player1"]=fa_page18_row9_player1,
		["fa_page18_row9_player2"]=fa_page18_row9_player2,
		["fa_page18_row9_player3"]=fa_page18_row9_player3,
		["fa_page18_row9_player4"]=fa_page18_row9_player4,

		-- page19 variables
		["fa_page19_row1_player1"]=fa_page19_row1_player1,
		["fa_page19_row1_player2"]=fa_page19_row1_player2,
		["fa_page19_row1_player3"]=fa_page19_row1_player3,
		["fa_page19_row1_player4"]=fa_page19_row1_player4,

		["fa_page19_row2_player1"]=fa_page19_row2_player1,
		["fa_page19_row2_player2"]=fa_page19_row2_player2,
		["fa_page19_row2_player3"]=fa_page19_row2_player3,
		["fa_page19_row2_player4"]=fa_page19_row2_player4,

		["fa_page19_row3_player1"]=fa_page19_row3_player1,
		["fa_page19_row3_player2"]=fa_page19_row3_player2,
		["fa_page19_row3_player3"]=fa_page19_row3_player3,
		["fa_page19_row3_player4"]=fa_page19_row3_player4,

		["fa_page19_row4_player1"]=fa_page19_row4_player1,
		["fa_page19_row4_player2"]=fa_page19_row4_player2,
		["fa_page19_row4_player3"]=fa_page19_row4_player3,
		["fa_page19_row4_player4"]=fa_page19_row4_player4,

		["fa_page19_row5_player1"]=fa_page19_row5_player1,
		["fa_page19_row5_player2"]=fa_page19_row5_player2,
		["fa_page19_row5_player3"]=fa_page19_row5_player3,
		["fa_page19_row5_player4"]=fa_page19_row5_player4,

		["fa_page19_row6_player1"]=fa_page19_row6_player1,
		["fa_page19_row6_player2"]=fa_page19_row6_player2,
		["fa_page19_row6_player3"]=fa_page19_row6_player3,
		["fa_page19_row6_player4"]=fa_page19_row6_player4,

		["fa_page19_row7_player1"]=fa_page19_row7_player1,
		["fa_page19_row7_player2"]=fa_page19_row7_player2,
		["fa_page19_row7_player3"]=fa_page19_row7_player3,
		["fa_page19_row7_player4"]=fa_page19_row7_player4,

		["fa_page19_row8_player1"]=fa_page19_row8_player1,
		["fa_page19_row8_player2"]=fa_page19_row8_player2,
		["fa_page19_row8_player3"]=fa_page19_row8_player3,
		["fa_page19_row8_player4"]=fa_page19_row8_player4,

		["fa_page19_row9_player1"]=fa_page19_row9_player1,
		["fa_page19_row9_player2"]=fa_page19_row9_player2,
		["fa_page19_row9_player3"]=fa_page19_row9_player3,
		["fa_page19_row9_player4"]=fa_page19_row9_player4,

		-- page20 variables
		["fa_page20_row1_player1"]=fa_page20_row1_player1,
		["fa_page20_row1_player2"]=fa_page20_row1_player2,
		["fa_page20_row1_player3"]=fa_page20_row1_player3,
		["fa_page20_row1_player4"]=fa_page20_row1_player4,

		["fa_page20_row2_player1"]=fa_page20_row2_player1,
		["fa_page20_row2_player2"]=fa_page20_row2_player2,
		["fa_page20_row2_player3"]=fa_page20_row2_player3,
		["fa_page20_row2_player4"]=fa_page20_row2_player4,

		["fa_page20_row3_player1"]=fa_page20_row3_player1,
		["fa_page20_row3_player2"]=fa_page20_row3_player2,
		["fa_page20_row3_player3"]=fa_page20_row3_player3,
		["fa_page20_row3_player4"]=fa_page20_row3_player4,

		["fa_page20_row4_player1"]=fa_page20_row4_player1,
		["fa_page20_row4_player2"]=fa_page20_row4_player2,
		["fa_page20_row4_player3"]=fa_page20_row4_player3,
		["fa_page20_row4_player4"]=fa_page20_row4_player4,

		["fa_page20_row5_player1"]=fa_page20_row5_player1,
		["fa_page20_row5_player2"]=fa_page20_row5_player2,
		["fa_page20_row5_player3"]=fa_page20_row5_player3,
		["fa_page20_row5_player4"]=fa_page20_row5_player4,

		["fa_page20_row6_player1"]=fa_page20_row6_player1,
		["fa_page20_row6_player2"]=fa_page20_row6_player2,
		["fa_page20_row6_player3"]=fa_page20_row6_player3,
		["fa_page20_row6_player4"]=fa_page20_row6_player4,

		["fa_page20_row7_player1"]=fa_page20_row7_player1,
		["fa_page20_row7_player2"]=fa_page20_row7_player2,
		["fa_page20_row7_player3"]=fa_page20_row7_player3,
		["fa_page20_row7_player4"]=fa_page20_row7_player4,

		["fa_page20_row8_player1"]=fa_page20_row8_player1,
		["fa_page20_row8_player2"]=fa_page20_row8_player2,
		["fa_page20_row8_player3"]=fa_page20_row8_player3,
		["fa_page20_row8_player4"]=fa_page20_row8_player4,

		["fa_page20_row9_player1"]=fa_page20_row9_player1,
		["fa_page20_row9_player2"]=fa_page20_row9_player2,
		["fa_page20_row9_player3"]=fa_page20_row9_player3,
		["fa_page20_row9_player4"]=fa_page20_row9_player4,

		-- page21 variables
		["fa_page21_row1_player1"]=fa_page21_row1_player1,
		["fa_page21_row1_player2"]=fa_page21_row1_player2,
		["fa_page21_row1_player3"]=fa_page21_row1_player3,
		["fa_page21_row1_player4"]=fa_page21_row1_player4,

		["fa_page21_row2_player1"]=fa_page21_row2_player1,
		["fa_page21_row2_player2"]=fa_page21_row2_player2,
		["fa_page21_row2_player3"]=fa_page21_row2_player3,
		["fa_page21_row2_player4"]=fa_page21_row2_player4,

		["fa_page21_row3_player1"]=fa_page21_row3_player1,
		["fa_page21_row3_player2"]=fa_page21_row3_player2,
		["fa_page21_row3_player3"]=fa_page21_row3_player3,
		["fa_page21_row3_player4"]=fa_page21_row3_player4,

		["fa_page21_row4_player1"]=fa_page21_row4_player1,
		["fa_page21_row4_player2"]=fa_page21_row4_player2,
		["fa_page21_row4_player3"]=fa_page21_row4_player3,
		["fa_page21_row4_player4"]=fa_page21_row4_player4,

		["fa_page21_row5_player1"]=fa_page21_row5_player1,
		["fa_page21_row5_player2"]=fa_page21_row5_player2,
		["fa_page21_row5_player3"]=fa_page21_row5_player3,
		["fa_page21_row5_player4"]=fa_page21_row5_player4,

		["fa_page21_row6_player1"]=fa_page21_row6_player1,
		["fa_page21_row6_player2"]=fa_page21_row6_player2,
		["fa_page21_row6_player3"]=fa_page21_row6_player3,
		["fa_page21_row6_player4"]=fa_page21_row6_player4,

		["fa_page21_row7_player1"]=fa_page21_row7_player1,
		["fa_page21_row7_player2"]=fa_page21_row7_player2,
		["fa_page21_row7_player3"]=fa_page21_row7_player3,
		["fa_page21_row7_player4"]=fa_page21_row7_player4,

		["fa_page21_row8_player1"]=fa_page21_row8_player1,
		["fa_page21_row8_player2"]=fa_page21_row8_player2,
		["fa_page21_row8_player3"]=fa_page21_row8_player3,
		["fa_page21_row8_player4"]=fa_page21_row8_player4,

		["fa_page21_row9_player1"]=fa_page21_row9_player1,
		["fa_page21_row9_player2"]=fa_page21_row9_player2,
		["fa_page21_row9_player3"]=fa_page21_row9_player3,
		["fa_page21_row9_player4"]=fa_page21_row9_player4,

		-- page22 variables
		["fa_page22_row1_player1"]=fa_page22_row1_player1,
		["fa_page22_row1_player2"]=fa_page22_row1_player2,
		["fa_page22_row1_player3"]=fa_page22_row1_player3,
		["fa_page22_row1_player4"]=fa_page22_row1_player4,

		["fa_page22_row2_player1"]=fa_page22_row2_player1,
		["fa_page22_row2_player2"]=fa_page22_row2_player2,
		["fa_page22_row2_player3"]=fa_page22_row2_player3,
		["fa_page22_row2_player4"]=fa_page22_row2_player4,

		["fa_page22_row3_player1"]=fa_page22_row3_player1,
		["fa_page22_row3_player2"]=fa_page22_row3_player2,
		["fa_page22_row3_player3"]=fa_page22_row3_player3,
		["fa_page22_row3_player4"]=fa_page22_row3_player4,

		["fa_page22_row4_player1"]=fa_page22_row4_player1,
		["fa_page22_row4_player2"]=fa_page22_row4_player2,
		["fa_page22_row4_player3"]=fa_page22_row4_player3,
		["fa_page22_row4_player4"]=fa_page22_row4_player4,

		["fa_page22_row5_player1"]=fa_page22_row5_player1,
		["fa_page22_row5_player2"]=fa_page22_row5_player2,
		["fa_page22_row5_player3"]=fa_page22_row5_player3,
		["fa_page22_row5_player4"]=fa_page22_row5_player4,

		["fa_page22_row6_player1"]=fa_page22_row6_player1,
		["fa_page22_row6_player2"]=fa_page22_row6_player2,
		["fa_page22_row6_player3"]=fa_page22_row6_player3,
		["fa_page22_row6_player4"]=fa_page22_row6_player4,

		["fa_page22_row7_player1"]=fa_page22_row7_player1,
		["fa_page22_row7_player2"]=fa_page22_row7_player2,
		["fa_page22_row7_player3"]=fa_page22_row7_player3,
		["fa_page22_row7_player4"]=fa_page22_row7_player4,

		["fa_page22_row8_player1"]=fa_page22_row8_player1,
		["fa_page22_row8_player2"]=fa_page22_row8_player2,
		["fa_page22_row8_player3"]=fa_page22_row8_player3,
		["fa_page22_row8_player4"]=fa_page22_row8_player4,

		["fa_page22_row9_player1"]=fa_page22_row9_player1,
		["fa_page22_row9_player2"]=fa_page22_row9_player2,
		["fa_page22_row9_player3"]=fa_page22_row9_player3,
		["fa_page22_row9_player4"]=fa_page22_row9_player4,

		-- page23 variables
		["fa_page23_row1_player1"]=fa_page23_row1_player1,
		["fa_page23_row1_player2"]=fa_page23_row1_player2,
		["fa_page23_row1_player3"]=fa_page23_row1_player3,
		["fa_page23_row1_player4"]=fa_page23_row1_player4,

		["fa_page23_row2_player1"]=fa_page23_row2_player1,
		["fa_page23_row2_player2"]=fa_page23_row2_player2,
		["fa_page23_row2_player3"]=fa_page23_row2_player3,
		["fa_page23_row2_player4"]=fa_page23_row2_player4,

		["fa_page23_row3_player1"]=fa_page23_row3_player1,
		["fa_page23_row3_player2"]=fa_page23_row3_player2,
		["fa_page23_row3_player3"]=fa_page23_row3_player3,
		["fa_page23_row3_player4"]=fa_page23_row3_player4,

		["fa_page23_row4_player1"]=fa_page23_row4_player1,
		["fa_page23_row4_player2"]=fa_page23_row4_player2,
		["fa_page23_row4_player3"]=fa_page23_row4_player3,
		["fa_page23_row4_player4"]=fa_page23_row4_player4,

		["fa_page23_row5_player1"]=fa_page23_row5_player1,
		["fa_page23_row5_player2"]=fa_page23_row5_player2,
		["fa_page23_row5_player3"]=fa_page23_row5_player3,
		["fa_page23_row5_player4"]=fa_page23_row5_player4,

		["fa_page23_row6_player1"]=fa_page23_row6_player1,
		["fa_page23_row6_player2"]=fa_page23_row6_player2,
		["fa_page23_row6_player3"]=fa_page23_row6_player3,
		["fa_page23_row6_player4"]=fa_page23_row6_player4,

		["fa_page23_row7_player1"]=fa_page23_row7_player1,
		["fa_page23_row7_player2"]=fa_page23_row7_player2,
		["fa_page23_row7_player3"]=fa_page23_row7_player3,
		["fa_page23_row7_player4"]=fa_page23_row7_player4,

		["fa_page23_row8_player1"]=fa_page23_row8_player1,
		["fa_page23_row8_player2"]=fa_page23_row8_player2,
		["fa_page23_row8_player3"]=fa_page23_row8_player3,
		["fa_page23_row8_player4"]=fa_page23_row8_player4,

		["fa_page23_row9_player1"]=fa_page23_row9_player1,
		["fa_page23_row9_player2"]=fa_page23_row9_player2,
		["fa_page23_row9_player3"]=fa_page23_row9_player3,
		["fa_page23_row9_player4"]=fa_page23_row9_player4,

		-- page24 variables
		["fa_page24_row1_player1"]=fa_page24_row1_player1,
		["fa_page24_row1_player2"]=fa_page24_row1_player2,
		["fa_page24_row1_player3"]=fa_page24_row1_player3,
		["fa_page24_row1_player4"]=fa_page24_row1_player4,

		["fa_page24_row2_player1"]=fa_page24_row2_player1,
		["fa_page24_row2_player2"]=fa_page24_row2_player2,
		["fa_page24_row2_player3"]=fa_page24_row2_player3,
		["fa_page24_row2_player4"]=fa_page24_row2_player4,

		["fa_page24_row3_player1"]=fa_page24_row3_player1,
		["fa_page24_row3_player2"]=fa_page24_row3_player2,
		["fa_page24_row3_player3"]=fa_page24_row3_player3,
		["fa_page24_row3_player4"]=fa_page24_row3_player4,

		["fa_page24_row4_player1"]=fa_page24_row4_player1,
		["fa_page24_row4_player2"]=fa_page24_row4_player2,
		["fa_page24_row4_player3"]=fa_page24_row4_player3,
		["fa_page24_row4_player4"]=fa_page24_row4_player4,

		["fa_page24_row5_player1"]=fa_page24_row5_player1,
		["fa_page24_row5_player2"]=fa_page24_row5_player2,
		["fa_page24_row5_player3"]=fa_page24_row5_player3,
		["fa_page24_row5_player4"]=fa_page24_row5_player4,

		["fa_page24_row6_player1"]=fa_page24_row6_player1,
		["fa_page24_row6_player2"]=fa_page24_row6_player2,
		["fa_page24_row6_player3"]=fa_page24_row6_player3,
		["fa_page24_row6_player4"]=fa_page24_row6_player4,

		["fa_page24_row7_player1"]=fa_page24_row7_player1,
		["fa_page24_row7_player2"]=fa_page24_row7_player2,
		["fa_page24_row7_player3"]=fa_page24_row7_player3,
		["fa_page24_row7_player4"]=fa_page24_row7_player4,

		["fa_page24_row8_player1"]=fa_page24_row8_player1,
		["fa_page24_row8_player2"]=fa_page24_row8_player2,
		["fa_page24_row8_player3"]=fa_page24_row8_player3,
		["fa_page24_row8_player4"]=fa_page24_row8_player4,

		["fa_page24_row9_player1"]=fa_page24_row9_player1,
		["fa_page24_row9_player2"]=fa_page24_row9_player2,
		["fa_page24_row9_player3"]=fa_page24_row9_player3,
		["fa_page24_row9_player4"]=fa_page24_row9_player4,

		-- page25 variables
		["fa_page25_row1_player1"]=fa_page25_row1_player1,
		["fa_page25_row1_player2"]=fa_page25_row1_player2,
		["fa_page25_row1_player3"]=fa_page25_row1_player3,
		["fa_page25_row1_player4"]=fa_page25_row1_player4,

		["fa_page25_row2_player1"]=fa_page25_row2_player1,
		["fa_page25_row2_player2"]=fa_page25_row2_player2,
		["fa_page25_row2_player3"]=fa_page25_row2_player3,
		["fa_page25_row2_player4"]=fa_page25_row2_player4,

		["fa_page25_row3_player1"]=fa_page25_row3_player1,
		["fa_page25_row3_player2"]=fa_page25_row3_player2,
		["fa_page25_row3_player3"]=fa_page25_row3_player3,
		["fa_page25_row3_player4"]=fa_page25_row3_player4,

		["fa_page25_row4_player1"]=fa_page25_row4_player1,
		["fa_page25_row4_player2"]=fa_page25_row4_player2,
		["fa_page25_row4_player3"]=fa_page25_row4_player3,
		["fa_page25_row4_player4"]=fa_page25_row4_player4,

		["fa_page25_row5_player1"]=fa_page25_row5_player1,
		["fa_page25_row5_player2"]=fa_page25_row5_player2,
		["fa_page25_row5_player3"]=fa_page25_row5_player3,
		["fa_page25_row5_player4"]=fa_page25_row5_player4,

		["fa_page25_row6_player1"]=fa_page25_row6_player1,
		["fa_page25_row6_player2"]=fa_page25_row6_player2,
		["fa_page25_row6_player3"]=fa_page25_row6_player3,
		["fa_page25_row6_player4"]=fa_page25_row6_player4,

		["fa_page25_row7_player1"]=fa_page25_row7_player1,
		["fa_page25_row7_player2"]=fa_page25_row7_player2,
		["fa_page25_row7_player3"]=fa_page25_row7_player3,
		["fa_page25_row7_player4"]=fa_page25_row7_player4,

		["fa_page25_row8_player1"]=fa_page25_row8_player1,
		["fa_page25_row8_player2"]=fa_page25_row8_player2,
		["fa_page25_row8_player3"]=fa_page25_row8_player3,
		["fa_page25_row8_player4"]=fa_page25_row8_player4,

		["fa_page25_row9_player1"]=fa_page25_row9_player1,
		["fa_page25_row9_player2"]=fa_page25_row9_player2,
		["fa_page25_row9_player3"]=fa_page25_row9_player3,
		["fa_page25_row9_player4"]=fa_page25_row9_player4,
	}
	
	-- Table of all players currently in the group
	fa_groupPlayers = {}
	
	if IsInRaid() then
		for i=1,40 do
			if (UnitName('raid'..i)) then
				local playerName, realm = UnitName("raid"..i)
				tinsert(fa_groupPlayers, playerName)
			end
		end
		
	elseif IsInGroup() then
		for i=1,4 do
			if (UnitName('party'..i)) then
				local playerName, realm = UnitName("party"..i)
				tinsert(fa_groupPlayers, playerName)
			end
		end
		
		-- Add the player individually as they aren't included in UnitName party
		local playerName, realm = UnitName("player")
		tinsert(fa_groupPlayers,playerName)
	end
	
	
	-- Compare the lists and remove anybody who is no longer in the group
	fa_removedPlayers = {}
	
	-- For every assigned player variable that isn't empty
	for playerKey, playerVal in pairs(fa_assignedPlayers) do
		if playerVal ~= "" then
		
			-- Check if the player exists in the group list
			local playerExists = false
			
			for groupKey, groupVal in pairs(fa_groupPlayers) do
				if playerVal == groupVal then
					playerExists = true
				end
			end
			
			-- If they don't exist, reset the variable and add them to a list for reporting
			if playerExists == false then
				_G[playerKey] = ""
				tinsert(fa_removedPlayers, playerVal)
			end
		end
	end
	
	
	-- Report any players that have been removed from assignments
	if #fa_removedPlayers ~= 0 then
	
		-- Create a string with all of the removed players
		local removedStr = ""
		for removedKey, removedVal in pairs(fa_removedPlayers) do
			removedStr = removedStr..removedVal.." "
		end
		
		-- Add commas between player names
		local commaStr,x=string.gsub(removedStr,"(%a)%s(%a)","%1, %2")
		
		Forgiven_Assignments:Print("removed players no longer in the group: "..commaStr)
	end
end


-- Function to load dummy data instead of real party data
function fa_loadTestData()

	fa_target_list = {
		["{skull}"]= skullIcon.."{skull}",
		["{cross}"]= crossIcon.."{cross}",
		["{square}"]= squareIcon.."{square}",
		["{moon}"]= moonIcon.."{moon}",
		["{triangle}"]= triangleIcon.."{triangle}",
		["{diamond}"]= diamondIcon.."{diamond}",
		["{circle}"]= circleIcon.."{circle}",
		["{star}"]= starIcon.."{star}",
		["Boss"]="Boss",
		["Adds"]="Adds",
		["Raid"]="Raid",
		["Melee"]="Melee",
		["Ranged"]="Ranged",
		["Main-tank"]="Main-tank",
		["Off-tank"]="Off-tank",
		["Bearforce"]= shieldIcon.."Bearforce",
		["Clawandorder"]= shieldIcon.."Clawandorder",
		["Platetrain"]= shieldIcon.."Platetrain",
		["Realsteel"]= shieldIcon.."Realsteel",
		["[placeholder]"]= shieldIcon.."[placeholder]",
	}
	fa_targetSort_list = {
		"{skull}",
		"{cross}",
		"{square}",
		"{moon}",
		"{triangle}",
		"{diamond}",
		"{circle}",
		"{star}",
		"Boss",
		"Adds",
		"Raid",
		"Melee",
		"Ranged",
		"Main-tank",
		"Off-tank",
		"Bearforce",
		"Clawandorder",
		"Platetrain",
		"Realsteel",
		"[placeholder]",
	}	
	fa_tank_list = {
		["Bearforce"]= druidIcon.."Bearforce",
		["Naturalist"]= druidIcon.."Naturalist",
		["Moonfury"]= druidIcon.."Moonfury",
		["Clawandorder"]= druidIcon.."Clawandorder",
		["Starsurge"]= druidIcon.."Starsurge",
		
		["Swordsman"]= warriorIcon.."Swordsman",
		["Platetrain"]= warriorIcon.."Platetrain",
		["Realsteel"]= warriorIcon.."Realsteel",
		["Enraged"]= warriorIcon.."Enraged",
		["Sundered"]= warriorIcon.."Sundered",
		
		["clear_player"]="-- clear player --"
	}
	fa_heals_list = {
		["Bearforce"]= druidIcon.."Bearforce",
		["Naturalist"]= druidIcon.."Naturalist",
		["Moonfury"]= druidIcon.."Moonfury",
		["Clawandorder"]= druidIcon.."Clawandorder",
		["Starsurge"]= druidIcon.."Starsurge",
		
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["Shockjock"]= shamanIcon.."Shockjock",
		["Totemic"]= shamanIcon.."Totemic",
		["Thunda"]= shamanIcon.."Thunda",
		["Shamwow"]= shamanIcon.."Shamwow",
		["Tidal"]= shamanIcon.."Tidal",
		
		["clear_player"]="-- clear player --"
	}
	fa_polymorph_list = {
		["Frosty"]= mageIcon.."Frosty",
		["Arcanist"]= mageIcon.."Arcanist",
		["Pyroclasm"]= mageIcon.."Pyroclasm",
		["Merlin"]= mageIcon.."Merlin",
		["Refreshments"]= mageIcon.."Refreshments",
		
		["clear_player"]="-- clear player --"
	}
	fa_fear_list = {
		["Demonic"]= warlockIcon.."Demonic",
		["Shadowed"]= warlockIcon.."Shadowed",
		["Brimstone"]= warlockIcon.."Brimstone",
		["Dot"]= warlockIcon.."Dot",
		["Soulwrath"]= warlockIcon.."Soulwrath",
		
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["clear_player"]="-- clear player --"
	}
	fa_banish_list = {
		["Demonic"]= warlockIcon.."Demonic",
		["Shadowed"]= warlockIcon.."Shadowed",
		["Brimstone"]= warlockIcon.."Brimstone",
		["Dot"]= warlockIcon.."Dot",
		["Soulwrath"]= warlockIcon.."Soulwrath",
		
		["clear_player"]="-- clear player --"
	}
	fa_enslave_list = {
		["Demonic"]= warlockIcon.."Demonic",
		["Shadowed"]= warlockIcon.."Shadowed",
		["Brimstone"]= warlockIcon.."Brimstone",
		["Dot"]= warlockIcon.."Dot",
		["Soulwrath"]= warlockIcon.."Soulwrath",
		
		["clear_player"]="-- clear player --"
	}
	fa_shackle_list = {
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["clear_player"]="-- clear player --"
	}
	fa_mindcontrol_list = {
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["clear_player"]="-- clear player --"
	}
	fa_hibernate_list = {
		["Bearforce"]= druidIcon.."Bearforce",
		["Naturalist"]= druidIcon.."Naturalist",
		["Moonfury"]= druidIcon.."Moonfury",
		["Clawandorder"]= druidIcon.."Clawandorder",
		["Starsurge"]= druidIcon.."Starsurge",
		
		["clear_player"]="-- clear player --"
	}
	fa_trap_list = {
		["Robinhood"]= hunterIcon.."Robinhood",
		["Longshot"]= hunterIcon.."Longshot",
		["Beastlord"]= hunterIcon.."Beastlord",
		["Trapper"]= hunterIcon.."Trapper",
		["Ranger"]= hunterIcon.."Ranger",
		
		["clear_player"]="-- clear player --"
	}
	fa_kite_list = {
		["Robinhood"]= hunterIcon.."Robinhood",
		["Longshot"]= hunterIcon.."Longshot",
		["Beastlord"]= hunterIcon.."Beastlord",
		["Trapper"]= hunterIcon.."Trapper",
		["Ranger"]= hunterIcon.."Ranger",
		
		["Frosty"]= mageIcon.."Frosty",
		["Arcanist"]= mageIcon.."Arcanist",
		["Pyroclasm"]= mageIcon.."Pyroclasm",
		["Merlin"]= mageIcon.."Merlin",
		["Refreshments"]= mageIcon.."Refreshments",
		
		["clear_player"]="-- clear player --"
	}
	fa_sap_list = {
		["Sneaky"]= rogueIcon.."Sneaky",
		["Coldblade"]= rogueIcon.."Coldblade",
		["Scoundrel"]= rogueIcon.."Scoundrel",
		["Thief"]= rogueIcon.."Thief",
		["Sapped"]= rogueIcon.."Sapped",
		
		["clear_player"]="-- clear player --"
	}
	fa_interrupt_list = {
		["Frosty"]= mageIcon.."Frosty",
		["Arcanist"]= mageIcon.."Arcanist",
		["Pyroclasm"]= mageIcon.."Pyroclasm",
		["Merlin"]= mageIcon.."Merlin",
		["Refreshments"]= mageIcon.."Refreshments",
		
		
		["Sneaky"]= rogueIcon.."Sneaky",
		["Coldblade"]= rogueIcon.."Coldblade",
		["Scoundrel"]= rogueIcon.."Scoundrel",
		["Thief"]= rogueIcon.."Thief",
		["Sapped"]= rogueIcon.."Sapped",
		
		["Swordsman"]= warriorIcon.."Swordsman",
		["Platetrain"]= warriorIcon.."Platetrain",
		["Realsteel"]= warriorIcon.."Realsteel",
		["Enraged"]= warriorIcon.."Enraged",
		["Sundered"]= warriorIcon.."Sundered",
		
		["Shockjock"]= shamanIcon.."Shockjock",
		["Totemic"]= shamanIcon.."Totemic",
		["Thunda"]= shamanIcon.."Thunda",
		["Shamwow"]= shamanIcon.."Shamwow",
		["Tidal"]= shamanIcon.."Tidal",
		
		["clear_player"]="-- clear player --"
	}
	fa_dispelmagic_list = {
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["clear_player"]="-- clear player --"
	}
	fa_removecurse_list = {
		["Frosty"]= mageIcon.."Frosty",
		["Arcanist"]= mageIcon.."Arcanist",
		["Pyroclasm"]= mageIcon.."Pyroclasm",
		["Merlin"]= mageIcon.."Merlin",
		["Refreshments"]= mageIcon.."Refreshments",
		
		["Bearforce"]= druidIcon.."Bearforce",
		["Naturalist"]= druidIcon.."Naturalist",
		["Moonfury"]= druidIcon.."Moonfury",
		["Clawandorder"]= druidIcon.."Clawandorder",
		["Starsurge"]= druidIcon.."Starsurge",
		
		["clear_player"]="-- clear player --"
	}
	fa_curepoison_list = {
		["Bearforce"]= druidIcon.."Bearforce",
		["Naturalist"]= druidIcon.."Naturalist",
		["Moonfury"]= druidIcon.."Moonfury",
		["Clawandorder"]= druidIcon.."Clawandorder",
		["Starsurge"]= druidIcon.."Starsurge",
		
		["Shockjock"]= shamanIcon.."Shockjock",
		["Totemic"]= shamanIcon.."Totemic",
		["Thunda"]= shamanIcon.."Thunda",
		["Shamwow"]= shamanIcon.."Shamwow",
		["Tidal"]= shamanIcon.."Tidal",
		
		["clear_player"]="-- clear player --"
	}
	fa_curedisease_list = {
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["Shockjock"]= shamanIcon.."Shockjock",
		["Totemic"]= shamanIcon.."Totemic",
		["Thunda"]= shamanIcon.."Thunda",
		["Shamwow"]= shamanIcon.."Shamwow",
		["Tidal"]= shamanIcon.."Tidal",
		
		["clear_player"]="-- clear player --"
	}
	fa_other_list = {
		["Bearforce"]= druidIcon.."Bearforce",
		["Naturalist"]= druidIcon.."Naturalist",
		["Moonfury"]= druidIcon.."Moonfury",
		["Clawandorder"]= druidIcon.."Clawandorder",
		["Starsurge"]= druidIcon.."Starsurge",
		
		["Swordsman"]= warriorIcon.."Swordsman",
		["Platetrain"]= warriorIcon.."Platetrain",
		["Realsteel"]= warriorIcon.."Realsteel",
		["Enraged"]= warriorIcon.."Enraged",
		["Sundered"]= warriorIcon.."Sundered",
		
		["Dawnlight"]= priestIcon.."Dawnlight",
		["Holywrath"]= priestIcon.."Holywrath",
		["Transcend"]= priestIcon.."Transcend",
		["Blessed"]= priestIcon.."Blessed",
		["Faith"]= priestIcon.."Faith",
		
		["Shockjock"]= shamanIcon.."Shockjock",
		["Totemic"]= shamanIcon.."Totemic",
		["Thunda"]= shamanIcon.."Thunda",
		["Shamwow"]= shamanIcon.."Shamwow",
		["Tidal"]= shamanIcon.."Tidal",
		
		["Frosty"]= mageIcon.."Frosty",
		["Arcanist"]= mageIcon.."Arcanist",
		["Pyroclasm"]= mageIcon.."Pyroclasm",
		["Merlin"]= mageIcon.."Merlin",
		["Refreshments"]= mageIcon.."Refreshments",
		
		["Demonic"]= warlockIcon.."Demonic",
		["Shadowed"]= warlockIcon.."Shadowed",
		["Brimstone"]= warlockIcon.."Brimstone",
		["Dot"]= warlockIcon.."Dot",
		["Soulwrath"]= warlockIcon.."Soulwrath",
		
		["Robinhood"]= hunterIcon.."Robinhood",
		["Longshot"]= hunterIcon.."Longshot",
		["Beastlord"]= hunterIcon.."Beastlord",
		["Trapper"]= hunterIcon.."Trapper",
		["Ranger"]= hunterIcon.."Ranger",
		
		["Sneaky"]= rogueIcon.."Sneaky",
		["Coldblade"]= rogueIcon.."Coldblade",
		["Scoundrel"]= rogueIcon.."Scoundrel",
		["Thief"]= rogueIcon.."Thief",
		["Sapped"]= rogueIcon.."Sapped",
		
		["clear_player"]="-- clear player --"
	}
end



-- Function to list players in a task group
function fa_displayPlayers(task)
	
	-- Reformat request and convert it if necessary
	if task == nil or task == "DPS" then task = "other" end
	task = string.lower(task)
	
	-- Return the relevant list
	return _G["fa_"..task.."_list"]
end



-- Function to preview assignments for user
function fa_previewAssignments(pageNum)
	if fa_config_logging then
		Forgiven_Assignments:Print("displaying preview of current assignments for "..pageNum)
	end
	
	-- Replace raid marker chat shortcode with textures
	local function replaceRaidMarkers(str)
		local str, x = string.gsub(str,"{crâne}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Skull.tga:0|t")
		local str, x = string.gsub(str,"{croix}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Cross.tga:0|t")
		local str, x = string.gsub(str,"{carré}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Square.tga:0|t")
		local str, x = string.gsub(str,"{lune}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Moon.tga:0|t")
		local str, x = string.gsub(str,"{triangle}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Triangle.tga:0|t")
		local str, x = string.gsub(str,"{losange}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Diamond.tga:0|t")
		local str, x = string.gsub(str,"{cercle}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Circle.tga:0|t")
		local str, x = string.gsub(str,"{etoile}","|TInterface\\AddOns\\Forgiven_Assignments\\Textures\\Star.tga:0|t")
		return str
	end
	
	
	if	_G["fa_"..pageNum.."_assignment_name"] ~= "Unused" and
		_G["fa_"..pageNum.."_assignment_name"] ~= ""
	then
		print("~".._G["fa_"..pageNum.."_assignment_name"].."~")
	end
	
	if	_G["fa_"..pageNum.."_row1_target"] ~= "" and
		_G["fa_"..pageNum.."_row1_task"] ~= nil and
		_G["fa_"..pageNum.."_row1_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row1_target"].." - ".._G["fa_"..pageNum.."_row1_task"]..": ".._G["fa_"..pageNum.."_row1_player1"].." ".._G["fa_"..pageNum.."_row1_player2"].." ".._G["fa_"..pageNum.."_row1_player3"].." ".._G["fa_"..pageNum.."_row1_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row2_target"] ~= "" and
		_G["fa_"..pageNum.."_row2_task"] ~= nil and
		_G["fa_"..pageNum.."_row2_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row2_target"].." - ".._G["fa_"..pageNum.."_row2_task"]..": ".._G["fa_"..pageNum.."_row2_player1"].." ".._G["fa_"..pageNum.."_row2_player2"].." ".._G["fa_"..pageNum.."_row2_player3"].." ".._G["fa_"..pageNum.."_row2_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row3_target"] ~= "" and
		_G["fa_"..pageNum.."_row3_task"] ~= nil and
		_G["fa_"..pageNum.."_row3_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row3_target"].." - ".._G["fa_"..pageNum.."_row3_task"]..": ".._G["fa_"..pageNum.."_row3_player1"].." ".._G["fa_"..pageNum.."_row3_player2"].." ".._G["fa_"..pageNum.."_row3_player3"].." ".._G["fa_"..pageNum.."_row3_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row4_target"] ~= "" and
		_G["fa_"..pageNum.."_row4_task"] ~= nil and
		_G["fa_"..pageNum.."_row4_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row4_target"].." - ".._G["fa_"..pageNum.."_row4_task"]..": ".._G["fa_"..pageNum.."_row4_player1"].." ".._G["fa_"..pageNum.."_row4_player2"].." ".._G["fa_"..pageNum.."_row4_player3"].." ".._G["fa_"..pageNum.."_row4_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row5_target"] ~= "" and
		_G["fa_"..pageNum.."_row5_task"] ~= nil and
		_G["fa_"..pageNum.."_row5_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row5_target"].." - ".._G["fa_"..pageNum.."_row5_task"]..": ".._G["fa_"..pageNum.."_row5_player1"].." ".._G["fa_"..pageNum.."_row5_player2"].." ".._G["fa_"..pageNum.."_row5_player3"].." ".._G["fa_"..pageNum.."_row5_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row6_target"] ~= "" and
		_G["fa_"..pageNum.."_row6_task"] ~= nil and
		_G["fa_"..pageNum.."_row6_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row6_target"].." - ".._G["fa_"..pageNum.."_row6_task"]..": ".._G["fa_"..pageNum.."_row6_player1"].." ".._G["fa_"..pageNum.."_row6_player2"].." ".._G["fa_"..pageNum.."_row6_player3"].." ".._G["fa_"..pageNum.."_row6_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row7_target"] ~= "" and
		_G["fa_"..pageNum.."_row7_task"] ~= nil and
		_G["fa_"..pageNum.."_row7_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row7_target"].." - ".._G["fa_"..pageNum.."_row7_task"]..": ".._G["fa_"..pageNum.."_row7_player1"].." ".._G["fa_"..pageNum.."_row7_player2"].." ".._G["fa_"..pageNum.."_row7_player3"].." ".._G["fa_"..pageNum.."_row7_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row8_target"] ~= "" and
		_G["fa_"..pageNum.."_row8_task"] ~= nil and
		_G["fa_"..pageNum.."_row8_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row8_target"].." - ".._G["fa_"..pageNum.."_row8_task"]..": ".._G["fa_"..pageNum.."_row8_player1"].." ".._G["fa_"..pageNum.."_row8_player2"].." ".._G["fa_"..pageNum.."_row8_player3"].." ".._G["fa_"..pageNum.."_row8_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_row9_target"] ~= "" and
		_G["fa_"..pageNum.."_row9_task"] ~= nil and
		_G["fa_"..pageNum.."_row9_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row9_target"].." - ".._G["fa_"..pageNum.."_row9_task"]..": ".._G["fa_"..pageNum.."_row9_player1"].." ".._G["fa_"..pageNum.."_row9_player2"].." ".._G["fa_"..pageNum.."_row9_player3"].." ".._G["fa_"..pageNum.."_row9_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		print(replaceRaidMarkers(commaStr))
	end
	
	if	_G["fa_"..pageNum.."_extra_instructions"] ~= ""	then
		print(_G["fa_"..pageNum.."_extra_instructions"])
	end
end



-- Function to report the assignments in chat channels
function fa_reportAssignments(pageNum)
	if fa_config_logging then
		Forgiven_Assignments:Print("reporting "..pageNum.." assignments to "..fa_config_report_channel)
	end
	
	if	_G["fa_"..pageNum.."_assignment_name"] ~= "Unused" and
		_G["fa_"..pageNum.."_assignment_name"] ~= ""
	then
		SendChatMessage("~".._G["fa_"..pageNum.."_assignment_name"].."~", fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row1_target"] ~= "" and
		_G["fa_"..pageNum.."_row1_task"] ~= nil and
		_G["fa_"..pageNum.."_row1_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row1_target"].." - ".._G["fa_"..pageNum.."_row1_task"]..": ".._G["fa_"..pageNum.."_row1_player1"].." ".._G["fa_"..pageNum.."_row1_player2"].." ".._G["fa_"..pageNum.."_row1_player3"].." ".._G["fa_"..pageNum.."_row1_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row2_target"] ~= "" and
		_G["fa_"..pageNum.."_row2_task"] ~= nil and
		_G["fa_"..pageNum.."_row2_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row2_target"].." - ".._G["fa_"..pageNum.."_row2_task"]..": ".._G["fa_"..pageNum.."_row2_player1"].." ".._G["fa_"..pageNum.."_row2_player2"].." ".._G["fa_"..pageNum.."_row2_player3"].." ".._G["fa_"..pageNum.."_row2_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row3_target"] ~= "" and
		_G["fa_"..pageNum.."_row3_task"] ~= nil and
		_G["fa_"..pageNum.."_row3_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row3_target"].." - ".._G["fa_"..pageNum.."_row3_task"]..": ".._G["fa_"..pageNum.."_row3_player1"].." ".._G["fa_"..pageNum.."_row3_player2"].." ".._G["fa_"..pageNum.."_row3_player3"].." ".._G["fa_"..pageNum.."_row3_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row4_target"] ~= "" and
		_G["fa_"..pageNum.."_row4_task"] ~= nil and
		_G["fa_"..pageNum.."_row4_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row4_target"].." - ".._G["fa_"..pageNum.."_row4_task"]..": ".._G["fa_"..pageNum.."_row4_player1"].." ".._G["fa_"..pageNum.."_row4_player2"].." ".._G["fa_"..pageNum.."_row4_player3"].." ".._G["fa_"..pageNum.."_row4_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row5_target"] ~= "" and
		_G["fa_"..pageNum.."_row5_task"] ~= nil and
		_G["fa_"..pageNum.."_row5_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row5_target"].." - ".._G["fa_"..pageNum.."_row5_task"]..": ".._G["fa_"..pageNum.."_row5_player1"].." ".._G["fa_"..pageNum.."_row5_player2"].." ".._G["fa_"..pageNum.."_row5_player3"].." ".._G["fa_"..pageNum.."_row5_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row6_target"] ~= "" and
		_G["fa_"..pageNum.."_row6_task"] ~= nil and
		_G["fa_"..pageNum.."_row6_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row6_target"].." - ".._G["fa_"..pageNum.."_row6_task"]..": ".._G["fa_"..pageNum.."_row6_player1"].." ".._G["fa_"..pageNum.."_row6_player2"].." ".._G["fa_"..pageNum.."_row6_player3"].." ".._G["fa_"..pageNum.."_row6_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row7_target"] ~= "" and
		_G["fa_"..pageNum.."_row7_task"] ~= nil and
		_G["fa_"..pageNum.."_row7_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row7_target"].." - ".._G["fa_"..pageNum.."_row7_task"]..": ".._G["fa_"..pageNum.."_row7_player1"].." ".._G["fa_"..pageNum.."_row7_player2"].." ".._G["fa_"..pageNum.."_row7_player3"].." ".._G["fa_"..pageNum.."_row7_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row8_target"] ~= "" and
		_G["fa_"..pageNum.."_row8_task"] ~= nil and
		_G["fa_"..pageNum.."_row8_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row8_target"].." - ".._G["fa_"..pageNum.."_row8_task"]..": ".._G["fa_"..pageNum.."_row8_player1"].." ".._G["fa_"..pageNum.."_row8_player2"].." ".._G["fa_"..pageNum.."_row8_player3"].." ".._G["fa_"..pageNum.."_row8_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_row9_target"] ~= "" and
		_G["fa_"..pageNum.."_row9_task"] ~= nil and
		_G["fa_"..pageNum.."_row9_player1"] ~= ""
	then
		local concatStr = _G["fa_"..pageNum.."_row9_target"].." - ".._G["fa_"..pageNum.."_row9_task"]..": ".._G["fa_"..pageNum.."_row9_player1"].." ".._G["fa_"..pageNum.."_row9_player2"].." ".._G["fa_"..pageNum.."_row9_player3"].." ".._G["fa_"..pageNum.."_row9_player4"]
		local commaStr,x=string.gsub(concatStr,"(%a)%s(%a)","%1, %2")
		SendChatMessage(commaStr, fa_config_report_channel, nil , fa_config_channel_name)
	end
	
	if	_G["fa_"..pageNum.."_extra_instructions"] ~= "" then
		SendChatMessage(_G["fa_"..pageNum.."_extra_instructions"], fa_config_report_channel, nil , fa_config_channel_name)
	end
end


-- Function to reset assignments
function fa_resetAssignments(rowNum,pageNum,target)	
	
	-- Reset one row on a page
	if
		rowNum ~= "all"
	then
		if fa_config_logging then
			Forgiven_Assignments:Print("resetting assignments for "..rowNum..", "..pageNum)
		end
		
		_G["fa_"..pageNum.."_"..rowNum.."_target"] = nil
		_G["fa_"..pageNum.."_"..rowNum.."_task"] = nil
		_G["fa_"..pageNum.."_"..rowNum.."_player1"] = ""
		_G["fa_"..pageNum.."_"..rowNum.."_player2"] = ""
		_G["fa_"..pageNum.."_"..rowNum.."_player3"] = ""
		_G["fa_"..pageNum.."_"..rowNum.."_player4"] = ""
		
	-- Reset all rows on a page
	elseif
		rowNum == "all" and
		pageNum ~= "all"
	then
		if fa_config_logging then
			Forgiven_Assignments:Print("resetting all assignments for "..pageNum)
		end
		
		_G["fa_"..pageNum.."_row1_target"] = nil
		_G["fa_"..pageNum.."_row1_task"] = nil
		_G["fa_"..pageNum.."_row1_player1"] = ""
		_G["fa_"..pageNum.."_row1_player2"] = ""
		_G["fa_"..pageNum.."_row1_player3"] = ""
		_G["fa_"..pageNum.."_row1_player4"] = ""
		
		_G["fa_"..pageNum.."_row2_target"] = nil
		_G["fa_"..pageNum.."_row2_task"] = nil
		_G["fa_"..pageNum.."_row2_player1"] = ""
		_G["fa_"..pageNum.."_row2_player2"] = ""
		_G["fa_"..pageNum.."_row2_player3"] = ""
		_G["fa_"..pageNum.."_row2_player4"] = ""
	
		_G["fa_"..pageNum.."_row3_target"] = nil
		_G["fa_"..pageNum.."_row3_task"] = nil
		_G["fa_"..pageNum.."_row3_player1"] = ""
		_G["fa_"..pageNum.."_row3_player2"] = ""
		_G["fa_"..pageNum.."_row3_player3"] = ""
		_G["fa_"..pageNum.."_row3_player4"] = ""
		
		_G["fa_"..pageNum.."_row4_target"] = nil
		_G["fa_"..pageNum.."_row4_task"] = nil
		_G["fa_"..pageNum.."_row4_player1"] = ""
		_G["fa_"..pageNum.."_row4_player2"] = ""
		_G["fa_"..pageNum.."_row4_player3"] = ""
		_G["fa_"..pageNum.."_row4_player4"] = ""
		
		_G["fa_"..pageNum.."_row5_target"] = nil
		_G["fa_"..pageNum.."_row5_task"] = nil
		_G["fa_"..pageNum.."_row5_player1"] = ""
		_G["fa_"..pageNum.."_row5_player2"] = ""
		_G["fa_"..pageNum.."_row5_player3"] = ""
		_G["fa_"..pageNum.."_row5_player4"] = ""
		
		_G["fa_"..pageNum.."_row6_target"] = nil
		_G["fa_"..pageNum.."_row6_task"] = nil
		_G["fa_"..pageNum.."_row6_player1"] = ""
		_G["fa_"..pageNum.."_row6_player2"] = ""
		_G["fa_"..pageNum.."_row6_player3"] = ""
		_G["fa_"..pageNum.."_row6_player4"] = ""
		
		_G["fa_"..pageNum.."_row7_target"] = nil
		_G["fa_"..pageNum.."_row7_task"] = nil
		_G["fa_"..pageNum.."_row7_player1"] = ""
		_G["fa_"..pageNum.."_row7_player2"] = ""
		_G["fa_"..pageNum.."_row7_player3"] = ""
		_G["fa_"..pageNum.."_row7_player4"] = ""
		
		_G["fa_"..pageNum.."_row8_target"] = nil
		_G["fa_"..pageNum.."_row8_task"] = nil
		_G["fa_"..pageNum.."_row8_player1"] = ""
		_G["fa_"..pageNum.."_row8_player2"] = ""
		_G["fa_"..pageNum.."_row8_player3"] = ""
		_G["fa_"..pageNum.."_row8_player4"] = ""
		
		_G["fa_"..pageNum.."_row9_target"] = nil
		_G["fa_"..pageNum.."_row9_task"] = nil
		_G["fa_"..pageNum.."_row9_player1"] = ""
		_G["fa_"..pageNum.."_row9_player2"] = ""
		_G["fa_"..pageNum.."_row9_player3"] = ""
		_G["fa_"..pageNum.."_row9_player4"] = ""
			
	-- Reset all players across all pages
	elseif
		rowNum == "all" and
		pageNum == "all" and
		target == "players"
	then
		if fa_config_logging then
			Forgiven_Assignments:Print("resetting player assignments for all pages")
		end
		
		-- page1 variables
		fa_page1_row1_player1 = ""
		fa_page1_row1_player2 = ""
		fa_page1_row1_player3 = ""
		fa_page1_row1_player4 = ""

		fa_page1_row2_player1 = ""
		fa_page1_row2_player2 = ""
		fa_page1_row2_player3 = ""
		fa_page1_row2_player4 = ""

		fa_page1_row3_player1 = ""
		fa_page1_row3_player2 = ""
		fa_page1_row3_player3 = ""
		fa_page1_row3_player4 = ""

		fa_page1_row4_player1 = ""
		fa_page1_row4_player2 = ""
		fa_page1_row4_player3 = ""
		fa_page1_row4_player4 = ""

		fa_page1_row5_player1 = ""
		fa_page1_row5_player2 = ""
		fa_page1_row5_player3 = ""
		fa_page1_row5_player4 = ""

		fa_page1_row6_player1 = ""
		fa_page1_row6_player2 = ""
		fa_page1_row6_player3 = ""
		fa_page1_row6_player4 = ""

		fa_page1_row7_player1 = ""
		fa_page1_row7_player2 = ""
		fa_page1_row7_player3 = ""
		fa_page1_row7_player4 = ""

		fa_page1_row8_player1 = ""
		fa_page1_row8_player2 = ""
		fa_page1_row8_player3 = ""
		fa_page1_row8_player4 = ""

		fa_page1_row9_player1 = ""
		fa_page1_row9_player2 = ""
		fa_page1_row9_player3 = ""
		fa_page1_row9_player4 = ""

		-- page2 variables
		fa_page2_row1_player1 = ""
		fa_page2_row1_player2 = ""
		fa_page2_row1_player3 = ""
		fa_page2_row1_player4 = ""

		fa_page2_row2_player1 = ""
		fa_page2_row2_player2 = ""
		fa_page2_row2_player3 = ""
		fa_page2_row2_player4 = ""

		fa_page2_row3_player1 = ""
		fa_page2_row3_player2 = ""
		fa_page2_row3_player3 = ""
		fa_page2_row3_player4 = ""

		fa_page2_row4_player1 = ""
		fa_page2_row4_player2 = ""
		fa_page2_row4_player3 = ""
		fa_page2_row4_player4 = ""

		fa_page2_row5_player1 = ""
		fa_page2_row5_player2 = ""
		fa_page2_row5_player3 = ""
		fa_page2_row5_player4 = ""

		fa_page2_row6_player1 = ""
		fa_page2_row6_player2 = ""
		fa_page2_row6_player3 = ""
		fa_page2_row6_player4 = ""

		fa_page2_row7_player1 = ""
		fa_page2_row7_player2 = ""
		fa_page2_row7_player3 = ""
		fa_page2_row7_player4 = ""

		fa_page2_row8_player1 = ""
		fa_page2_row8_player2 = ""
		fa_page2_row8_player3 = ""
		fa_page2_row8_player4 = ""

		fa_page2_row9_player1 = ""
		fa_page2_row9_player2 = ""
		fa_page2_row9_player3 = ""
		fa_page2_row9_player4 = ""

		-- page3 variables
		fa_page3_row1_player1 = ""
		fa_page3_row1_player2 = ""
		fa_page3_row1_player3 = ""
		fa_page3_row1_player4 = ""

		fa_page3_row2_player1 = ""
		fa_page3_row2_player2 = ""
		fa_page3_row2_player3 = ""
		fa_page3_row2_player4 = ""

		fa_page3_row3_player1 = ""
		fa_page3_row3_player2 = ""
		fa_page3_row3_player3 = ""
		fa_page3_row3_player4 = ""

		fa_page3_row4_player1 = ""
		fa_page3_row4_player2 = ""
		fa_page3_row4_player3 = ""
		fa_page3_row4_player4 = ""

		fa_page3_row5_player1 = ""
		fa_page3_row5_player2 = ""
		fa_page3_row5_player3 = ""
		fa_page3_row5_player4 = ""

		fa_page3_row6_player1 = ""
		fa_page3_row6_player2 = ""
		fa_page3_row6_player3 = ""
		fa_page3_row6_player4 = ""

		fa_page3_row7_player1 = ""
		fa_page3_row7_player2 = ""
		fa_page3_row7_player3 = ""
		fa_page3_row7_player4 = ""

		fa_page3_row8_player1 = ""
		fa_page3_row8_player2 = ""
		fa_page3_row8_player3 = ""
		fa_page3_row8_player4 = ""

		fa_page3_row9_player1 = ""
		fa_page3_row9_player2 = ""
		fa_page3_row9_player3 = ""
		fa_page3_row9_player4 = ""

		-- page4 variables
		fa_page4_row1_player1 = ""
		fa_page4_row1_player2 = ""
		fa_page4_row1_player3 = ""
		fa_page4_row1_player4 = ""

		fa_page4_row2_player1 = ""
		fa_page4_row2_player2 = ""
		fa_page4_row2_player3 = ""
		fa_page4_row2_player4 = ""

		fa_page4_row3_player1 = ""
		fa_page4_row3_player2 = ""
		fa_page4_row3_player3 = ""
		fa_page4_row3_player4 = ""

		fa_page4_row4_player1 = ""
		fa_page4_row4_player2 = ""
		fa_page4_row4_player3 = ""
		fa_page4_row4_player4 = ""

		fa_page4_row5_player1 = ""
		fa_page4_row5_player2 = ""
		fa_page4_row5_player3 = ""
		fa_page4_row5_player4 = ""

		fa_page4_row6_player1 = ""
		fa_page4_row6_player2 = ""
		fa_page4_row6_player3 = ""
		fa_page4_row6_player4 = ""

		fa_page4_row7_player1 = ""
		fa_page4_row7_player2 = ""
		fa_page4_row7_player3 = ""
		fa_page4_row7_player4 = ""

		fa_page4_row8_player1 = ""
		fa_page4_row8_player2 = ""
		fa_page4_row8_player3 = ""
		fa_page4_row8_player4 = ""

		fa_page4_row9_player1 = ""
		fa_page4_row9_player2 = ""
		fa_page4_row9_player3 = ""
		fa_page4_row9_player4 = ""

		-- page5 variables
		fa_page5_row1_player1 = ""
		fa_page5_row1_player2 = ""
		fa_page5_row1_player3 = ""
		fa_page5_row1_player4 = ""

		fa_page5_row2_player1 = ""
		fa_page5_row2_player2 = ""
		fa_page5_row2_player3 = ""
		fa_page5_row2_player4 = ""

		fa_page5_row3_player1 = ""
		fa_page5_row3_player2 = ""
		fa_page5_row3_player3 = ""
		fa_page5_row3_player4 = ""

		fa_page5_row4_player1 = ""
		fa_page5_row4_player2 = ""
		fa_page5_row4_player3 = ""
		fa_page5_row4_player4 = ""

		fa_page5_row5_player1 = ""
		fa_page5_row5_player2 = ""
		fa_page5_row5_player3 = ""
		fa_page5_row5_player4 = ""

		fa_page5_row6_player1 = ""
		fa_page5_row6_player2 = ""
		fa_page5_row6_player3 = ""
		fa_page5_row6_player4 = ""

		fa_page5_row7_player1 = ""
		fa_page5_row7_player2 = ""
		fa_page5_row7_player3 = ""
		fa_page5_row7_player4 = ""

		fa_page5_row8_player1 = ""
		fa_page5_row8_player2 = ""
		fa_page5_row8_player3 = ""
		fa_page5_row8_player4 = ""

		fa_page5_row9_player1 = ""
		fa_page5_row9_player2 = ""
		fa_page5_row9_player3 = ""
		fa_page5_row9_player4 = ""

		-- page6 variables
		fa_page6_row1_player1 = ""
		fa_page6_row1_player2 = ""
		fa_page6_row1_player3 = ""
		fa_page6_row1_player4 = ""

		fa_page6_row2_player1 = ""
		fa_page6_row2_player2 = ""
		fa_page6_row2_player3 = ""
		fa_page6_row2_player4 = ""

		fa_page6_row3_player1 = ""
		fa_page6_row3_player2 = ""
		fa_page6_row3_player3 = ""
		fa_page6_row3_player4 = ""

		fa_page6_row4_player1 = ""
		fa_page6_row4_player2 = ""
		fa_page6_row4_player3 = ""
		fa_page6_row4_player4 = ""

		fa_page6_row5_player1 = ""
		fa_page6_row5_player2 = ""
		fa_page6_row5_player3 = ""
		fa_page6_row5_player4 = ""

		fa_page6_row6_player1 = ""
		fa_page6_row6_player2 = ""
		fa_page6_row6_player3 = ""
		fa_page6_row6_player4 = ""

		fa_page6_row7_player1 = ""
		fa_page6_row7_player2 = ""
		fa_page6_row7_player3 = ""
		fa_page6_row7_player4 = ""

		fa_page6_row8_player1 = ""
		fa_page6_row8_player2 = ""
		fa_page6_row8_player3 = ""
		fa_page6_row8_player4 = ""

		fa_page6_row9_player1 = ""
		fa_page6_row9_player2 = ""
		fa_page6_row9_player3 = ""
		fa_page6_row9_player4 = ""

		-- page7 variables
		fa_page7_row1_player1 = ""
		fa_page7_row1_player2 = ""
		fa_page7_row1_player3 = ""
		fa_page7_row1_player4 = ""

		fa_page7_row2_player1 = ""
		fa_page7_row2_player2 = ""
		fa_page7_row2_player3 = ""
		fa_page7_row2_player4 = ""

		fa_page7_row3_player1 = ""
		fa_page7_row3_player2 = ""
		fa_page7_row3_player3 = ""
		fa_page7_row3_player4 = ""

		fa_page7_row4_player1 = ""
		fa_page7_row4_player2 = ""
		fa_page7_row4_player3 = ""
		fa_page7_row4_player4 = ""

		fa_page7_row5_player1 = ""
		fa_page7_row5_player2 = ""
		fa_page7_row5_player3 = ""
		fa_page7_row5_player4 = ""

		fa_page7_row6_player1 = ""
		fa_page7_row6_player2 = ""
		fa_page7_row6_player3 = ""
		fa_page7_row6_player4 = ""

		fa_page7_row7_player1 = ""
		fa_page7_row7_player2 = ""
		fa_page7_row7_player3 = ""
		fa_page7_row7_player4 = ""

		fa_page7_row8_player1 = ""
		fa_page7_row8_player2 = ""
		fa_page7_row8_player3 = ""
		fa_page7_row8_player4 = ""

		fa_page7_row9_player1 = ""
		fa_page7_row9_player2 = ""
		fa_page7_row9_player3 = ""
		fa_page7_row9_player4 = ""

		-- page8 variables
		fa_page8_row1_player1 = ""
		fa_page8_row1_player2 = ""
		fa_page8_row1_player3 = ""
		fa_page8_row1_player4 = ""

		fa_page8_row2_player1 = ""
		fa_page8_row2_player2 = ""
		fa_page8_row2_player3 = ""
		fa_page8_row2_player4 = ""

		fa_page8_row3_player1 = ""
		fa_page8_row3_player2 = ""
		fa_page8_row3_player3 = ""
		fa_page8_row3_player4 = ""

		fa_page8_row4_player1 = ""
		fa_page8_row4_player2 = ""
		fa_page8_row4_player3 = ""
		fa_page8_row4_player4 = ""

		fa_page8_row5_player1 = ""
		fa_page8_row5_player2 = ""
		fa_page8_row5_player3 = ""
		fa_page8_row5_player4 = ""

		fa_page8_row6_player1 = ""
		fa_page8_row6_player2 = ""
		fa_page8_row6_player3 = ""
		fa_page8_row6_player4 = ""

		fa_page8_row7_player1 = ""
		fa_page8_row7_player2 = ""
		fa_page8_row7_player3 = ""
		fa_page8_row7_player4 = ""

		fa_page8_row8_player1 = ""
		fa_page8_row8_player2 = ""
		fa_page8_row8_player3 = ""
		fa_page8_row8_player4 = ""

		fa_page8_row9_player1 = ""
		fa_page8_row9_player2 = ""
		fa_page8_row9_player3 = ""
		fa_page8_row9_player4 = ""

		-- page9 variables
		fa_page9_row1_player1 = ""
		fa_page9_row1_player2 = ""
		fa_page9_row1_player3 = ""
		fa_page9_row1_player4 = ""

		fa_page9_row2_player1 = ""
		fa_page9_row2_player2 = ""
		fa_page9_row2_player3 = ""
		fa_page9_row2_player4 = ""

		fa_page9_row3_player1 = ""
		fa_page9_row3_player2 = ""
		fa_page9_row3_player3 = ""
		fa_page9_row3_player4 = ""

		fa_page9_row4_player1 = ""
		fa_page9_row4_player2 = ""
		fa_page9_row4_player3 = ""
		fa_page9_row4_player4 = ""

		fa_page9_row5_player1 = ""
		fa_page9_row5_player2 = ""
		fa_page9_row5_player3 = ""
		fa_page9_row5_player4 = ""

		fa_page9_row6_player1 = ""
		fa_page9_row6_player2 = ""
		fa_page9_row6_player3 = ""
		fa_page9_row6_player4 = ""

		fa_page9_row7_player1 = ""
		fa_page9_row7_player2 = ""
		fa_page9_row7_player3 = ""
		fa_page9_row7_player4 = ""

		fa_page9_row8_player1 = ""
		fa_page9_row8_player2 = ""
		fa_page9_row8_player3 = ""
		fa_page9_row8_player4 = ""

		fa_page9_row9_player1 = ""
		fa_page9_row9_player2 = ""
		fa_page9_row9_player3 = ""
		fa_page9_row9_player4 = ""

		-- page10 variables
		fa_page10_row1_player1 = ""
		fa_page10_row1_player2 = ""
		fa_page10_row1_player3 = ""
		fa_page10_row1_player4 = ""

		fa_page10_row2_player1 = ""
		fa_page10_row2_player2 = ""
		fa_page10_row2_player3 = ""
		fa_page10_row2_player4 = ""

		fa_page10_row3_player1 = ""
		fa_page10_row3_player2 = ""
		fa_page10_row3_player3 = ""
		fa_page10_row3_player4 = ""

		fa_page10_row4_player1 = ""
		fa_page10_row4_player2 = ""
		fa_page10_row4_player3 = ""
		fa_page10_row4_player4 = ""

		fa_page10_row5_player1 = ""
		fa_page10_row5_player2 = ""
		fa_page10_row5_player3 = ""
		fa_page10_row5_player4 = ""

		fa_page10_row6_player1 = ""
		fa_page10_row6_player2 = ""
		fa_page10_row6_player3 = ""
		fa_page10_row6_player4 = ""

		fa_page10_row7_player1 = ""
		fa_page10_row7_player2 = ""
		fa_page10_row7_player3 = ""
		fa_page10_row7_player4 = ""

		fa_page10_row8_player1 = ""
		fa_page10_row8_player2 = ""
		fa_page10_row8_player3 = ""
		fa_page10_row8_player4 = ""

		fa_page10_row9_player1 = ""
		fa_page10_row9_player2 = ""
		fa_page10_row9_player3 = ""
		fa_page10_row9_player4 = ""

		-- page11 variables
		fa_page11_row1_player1 = ""
		fa_page11_row1_player2 = ""
		fa_page11_row1_player3 = ""
		fa_page11_row1_player4 = ""

		fa_page11_row2_player1 = ""
		fa_page11_row2_player2 = ""
		fa_page11_row2_player3 = ""
		fa_page11_row2_player4 = ""

		fa_page11_row3_player1 = ""
		fa_page11_row3_player2 = ""
		fa_page11_row3_player3 = ""
		fa_page11_row3_player4 = ""

		fa_page11_row4_player1 = ""
		fa_page11_row4_player2 = ""
		fa_page11_row4_player3 = ""
		fa_page11_row4_player4 = ""

		fa_page11_row5_player1 = ""
		fa_page11_row5_player2 = ""
		fa_page11_row5_player3 = ""
		fa_page11_row5_player4 = ""

		fa_page11_row6_player1 = ""
		fa_page11_row6_player2 = ""
		fa_page11_row6_player3 = ""
		fa_page11_row6_player4 = ""

		fa_page11_row7_player1 = ""
		fa_page11_row7_player2 = ""
		fa_page11_row7_player3 = ""
		fa_page11_row7_player4 = ""

		fa_page11_row8_player1 = ""
		fa_page11_row8_player2 = ""
		fa_page11_row8_player3 = ""
		fa_page11_row8_player4 = ""

		fa_page11_row9_player1 = ""
		fa_page11_row9_player2 = ""
		fa_page11_row9_player3 = ""
		fa_page11_row9_player4 = ""

		-- page12 variables
		fa_page12_row1_player1 = ""
		fa_page12_row1_player2 = ""
		fa_page12_row1_player3 = ""
		fa_page12_row1_player4 = ""

		fa_page12_row2_player1 = ""
		fa_page12_row2_player2 = ""
		fa_page12_row2_player3 = ""
		fa_page12_row2_player4 = ""

		fa_page12_row3_player1 = ""
		fa_page12_row3_player2 = ""
		fa_page12_row3_player3 = ""
		fa_page12_row3_player4 = ""

		fa_page12_row4_player1 = ""
		fa_page12_row4_player2 = ""
		fa_page12_row4_player3 = ""
		fa_page12_row4_player4 = ""

		fa_page12_row5_player1 = ""
		fa_page12_row5_player2 = ""
		fa_page12_row5_player3 = ""
		fa_page12_row5_player4 = ""

		fa_page12_row6_player1 = ""
		fa_page12_row6_player2 = ""
		fa_page12_row6_player3 = ""
		fa_page12_row6_player4 = ""

		fa_page12_row7_player1 = ""
		fa_page12_row7_player2 = ""
		fa_page12_row7_player3 = ""
		fa_page12_row7_player4 = ""

		fa_page12_row8_player1 = ""
		fa_page12_row8_player2 = ""
		fa_page12_row8_player3 = ""
		fa_page12_row8_player4 = ""

		fa_page12_row9_player1 = ""
		fa_page12_row9_player2 = ""
		fa_page12_row9_player3 = ""
		fa_page12_row9_player4 = ""

		-- page13 variables
		fa_page13_row1_player1 = ""
		fa_page13_row1_player2 = ""
		fa_page13_row1_player3 = ""
		fa_page13_row1_player4 = ""

		fa_page13_row2_player1 = ""
		fa_page13_row2_player2 = ""
		fa_page13_row2_player3 = ""
		fa_page13_row2_player4 = ""

		fa_page13_row3_player1 = ""
		fa_page13_row3_player2 = ""
		fa_page13_row3_player3 = ""
		fa_page13_row3_player4 = ""

		fa_page13_row4_player1 = ""
		fa_page13_row4_player2 = ""
		fa_page13_row4_player3 = ""
		fa_page13_row4_player4 = ""

		fa_page13_row5_player1 = ""
		fa_page13_row5_player2 = ""
		fa_page13_row5_player3 = ""
		fa_page13_row5_player4 = ""

		fa_page13_row6_player1 = ""
		fa_page13_row6_player2 = ""
		fa_page13_row6_player3 = ""
		fa_page13_row6_player4 = ""

		fa_page13_row7_player1 = ""
		fa_page13_row7_player2 = ""
		fa_page13_row7_player3 = ""
		fa_page13_row7_player4 = ""

		fa_page13_row8_player1 = ""
		fa_page13_row8_player2 = ""
		fa_page13_row8_player3 = ""
		fa_page13_row8_player4 = ""

		fa_page13_row9_player1 = ""
		fa_page13_row9_player2 = ""
		fa_page13_row9_player3 = ""
		fa_page13_row9_player4 = ""

		-- page14 variables
		fa_page14_row1_player1 = ""
		fa_page14_row1_player2 = ""
		fa_page14_row1_player3 = ""
		fa_page14_row1_player4 = ""

		fa_page14_row2_player1 = ""
		fa_page14_row2_player2 = ""
		fa_page14_row2_player3 = ""
		fa_page14_row2_player4 = ""

		fa_page14_row3_player1 = ""
		fa_page14_row3_player2 = ""
		fa_page14_row3_player3 = ""
		fa_page14_row3_player4 = ""

		fa_page14_row4_player1 = ""
		fa_page14_row4_player2 = ""
		fa_page14_row4_player3 = ""
		fa_page14_row4_player4 = ""

		fa_page14_row5_player1 = ""
		fa_page14_row5_player2 = ""
		fa_page14_row5_player3 = ""
		fa_page14_row5_player4 = ""

		fa_page14_row6_player1 = ""
		fa_page14_row6_player2 = ""
		fa_page14_row6_player3 = ""
		fa_page14_row6_player4 = ""

		fa_page14_row7_player1 = ""
		fa_page14_row7_player2 = ""
		fa_page14_row7_player3 = ""
		fa_page14_row7_player4 = ""

		fa_page14_row8_player1 = ""
		fa_page14_row8_player2 = ""
		fa_page14_row8_player3 = ""
		fa_page14_row8_player4 = ""

		fa_page14_row9_player1 = ""
		fa_page14_row9_player2 = ""
		fa_page14_row9_player3 = ""
		fa_page14_row9_player4 = ""

		-- page15 variables
		fa_page15_row1_player1 = ""
		fa_page15_row1_player2 = ""
		fa_page15_row1_player3 = ""
		fa_page15_row1_player4 = ""

		fa_page15_row2_player1 = ""
		fa_page15_row2_player2 = ""
		fa_page15_row2_player3 = ""
		fa_page15_row2_player4 = ""

		fa_page15_row3_player1 = ""
		fa_page15_row3_player2 = ""
		fa_page15_row3_player3 = ""
		fa_page15_row3_player4 = ""

		fa_page15_row4_player1 = ""
		fa_page15_row4_player2 = ""
		fa_page15_row4_player3 = ""
		fa_page15_row4_player4 = ""

		fa_page15_row5_player1 = ""
		fa_page15_row5_player2 = ""
		fa_page15_row5_player3 = ""
		fa_page15_row5_player4 = ""

		fa_page15_row6_player1 = ""
		fa_page15_row6_player2 = ""
		fa_page15_row6_player3 = ""
		fa_page15_row6_player4 = ""

		fa_page15_row7_player1 = ""
		fa_page15_row7_player2 = ""
		fa_page15_row7_player3 = ""
		fa_page15_row7_player4 = ""

		fa_page15_row8_player1 = ""
		fa_page15_row8_player2 = ""
		fa_page15_row8_player3 = ""
		fa_page15_row8_player4 = ""

		fa_page15_row9_player1 = ""
		fa_page15_row9_player2 = ""
		fa_page15_row9_player3 = ""
		fa_page15_row9_player4 = ""
		
		-- page16 variables
		fa_page16_row1_player1 = ""
		fa_page16_row1_player2 = ""
		fa_page16_row1_player3 = ""
		fa_page16_row1_player4 = ""

		fa_page16_row2_player1 = ""
		fa_page16_row2_player2 = ""
		fa_page16_row2_player3 = ""
		fa_page16_row2_player4 = ""

		fa_page16_row3_player1 = ""
		fa_page16_row3_player2 = ""
		fa_page16_row3_player3 = ""
		fa_page16_row3_player4 = ""

		fa_page16_row4_player1 = ""
		fa_page16_row4_player2 = ""
		fa_page16_row4_player3 = ""
		fa_page16_row4_player4 = ""

		fa_page16_row5_player1 = ""
		fa_page16_row5_player2 = ""
		fa_page16_row5_player3 = ""
		fa_page16_row5_player4 = ""

		fa_page16_row6_player1 = ""
		fa_page16_row6_player2 = ""
		fa_page16_row6_player3 = ""
		fa_page16_row6_player4 = ""

		fa_page16_row7_player1 = ""
		fa_page16_row7_player2 = ""
		fa_page16_row7_player3 = ""
		fa_page16_row7_player4 = ""

		fa_page16_row8_player1 = ""
		fa_page16_row8_player2 = ""
		fa_page16_row8_player3 = ""
		fa_page16_row8_player4 = ""

		fa_page16_row9_player1 = ""
		fa_page16_row9_player2 = ""
		fa_page16_row9_player3 = ""
		fa_page16_row9_player4 = ""

		-- page17 variables
		fa_page17_row1_player1 = ""
		fa_page17_row1_player2 = ""
		fa_page17_row1_player3 = ""
		fa_page17_row1_player4 = ""

		fa_page17_row2_player1 = ""
		fa_page17_row2_player2 = ""
		fa_page17_row2_player3 = ""
		fa_page17_row2_player4 = ""

		fa_page17_row3_player1 = ""
		fa_page17_row3_player2 = ""
		fa_page17_row3_player3 = ""
		fa_page17_row3_player4 = ""

		fa_page17_row4_player1 = ""
		fa_page17_row4_player2 = ""
		fa_page17_row4_player3 = ""
		fa_page17_row4_player4 = ""

		fa_page17_row5_player1 = ""
		fa_page17_row5_player2 = ""
		fa_page17_row5_player3 = ""
		fa_page17_row5_player4 = ""

		fa_page17_row6_player1 = ""
		fa_page17_row6_player2 = ""
		fa_page17_row6_player3 = ""
		fa_page17_row6_player4 = ""

		fa_page17_row7_player1 = ""
		fa_page17_row7_player2 = ""
		fa_page17_row7_player3 = ""
		fa_page17_row7_player4 = ""

		fa_page17_row8_player1 = ""
		fa_page17_row8_player2 = ""
		fa_page17_row8_player3 = ""
		fa_page17_row8_player4 = ""

		fa_page17_row9_player1 = ""
		fa_page17_row9_player2 = ""
		fa_page17_row9_player3 = ""
		fa_page17_row9_player4 = ""

		-- page18 variables
		fa_page18_row1_player1 = ""
		fa_page18_row1_player2 = ""
		fa_page18_row1_player3 = ""
		fa_page18_row1_player4 = ""

		fa_page18_row2_player1 = ""
		fa_page18_row2_player2 = ""
		fa_page18_row2_player3 = ""
		fa_page18_row2_player4 = ""

		fa_page18_row3_player1 = ""
		fa_page18_row3_player2 = ""
		fa_page18_row3_player3 = ""
		fa_page18_row3_player4 = ""

		fa_page18_row4_player1 = ""
		fa_page18_row4_player2 = ""
		fa_page18_row4_player3 = ""
		fa_page18_row4_player4 = ""

		fa_page18_row5_player1 = ""
		fa_page18_row5_player2 = ""
		fa_page18_row5_player3 = ""
		fa_page18_row5_player4 = ""

		fa_page18_row6_player1 = ""
		fa_page18_row6_player2 = ""
		fa_page18_row6_player3 = ""
		fa_page18_row6_player4 = ""

		fa_page18_row7_player1 = ""
		fa_page18_row7_player2 = ""
		fa_page18_row7_player3 = ""
		fa_page18_row7_player4 = ""

		fa_page18_row8_player1 = ""
		fa_page18_row8_player2 = ""
		fa_page18_row8_player3 = ""
		fa_page18_row8_player4 = ""

		fa_page18_row9_player1 = ""
		fa_page18_row9_player2 = ""
		fa_page18_row9_player3 = ""
		fa_page18_row9_player4 = ""

		-- page19 variables
		fa_page19_row1_player1 = ""
		fa_page19_row1_player2 = ""
		fa_page19_row1_player3 = ""
		fa_page19_row1_player4 = ""

		fa_page19_row2_player1 = ""
		fa_page19_row2_player2 = ""
		fa_page19_row2_player3 = ""
		fa_page19_row2_player4 = ""

		fa_page19_row3_player1 = ""
		fa_page19_row3_player2 = ""
		fa_page19_row3_player3 = ""
		fa_page19_row3_player4 = ""

		fa_page19_row4_player1 = ""
		fa_page19_row4_player2 = ""
		fa_page19_row4_player3 = ""
		fa_page19_row4_player4 = ""

		fa_page19_row5_player1 = ""
		fa_page19_row5_player2 = ""
		fa_page19_row5_player3 = ""
		fa_page19_row5_player4 = ""

		fa_page19_row6_player1 = ""
		fa_page19_row6_player2 = ""
		fa_page19_row6_player3 = ""
		fa_page19_row6_player4 = ""

		fa_page19_row7_player1 = ""
		fa_page19_row7_player2 = ""
		fa_page19_row7_player3 = ""
		fa_page19_row7_player4 = ""

		fa_page19_row8_player1 = ""
		fa_page19_row8_player2 = ""
		fa_page19_row8_player3 = ""
		fa_page19_row8_player4 = ""

		fa_page19_row9_player1 = ""
		fa_page19_row9_player2 = ""
		fa_page19_row9_player3 = ""
		fa_page19_row9_player4 = ""

		-- page20 variables
		fa_page20_row1_player1 = ""
		fa_page20_row1_player2 = ""
		fa_page20_row1_player3 = ""
		fa_page20_row1_player4 = ""

		fa_page20_row2_player1 = ""
		fa_page20_row2_player2 = ""
		fa_page20_row2_player3 = ""
		fa_page20_row2_player4 = ""

		fa_page20_row3_player1 = ""
		fa_page20_row3_player2 = ""
		fa_page20_row3_player3 = ""
		fa_page20_row3_player4 = ""

		fa_page20_row4_player1 = ""
		fa_page20_row4_player2 = ""
		fa_page20_row4_player3 = ""
		fa_page20_row4_player4 = ""

		fa_page20_row5_player1 = ""
		fa_page20_row5_player2 = ""
		fa_page20_row5_player3 = ""
		fa_page20_row5_player4 = ""

		fa_page20_row6_player1 = ""
		fa_page20_row6_player2 = ""
		fa_page20_row6_player3 = ""
		fa_page20_row6_player4 = ""

		fa_page20_row7_player1 = ""
		fa_page20_row7_player2 = ""
		fa_page20_row7_player3 = ""
		fa_page20_row7_player4 = ""

		fa_page20_row8_player1 = ""
		fa_page20_row8_player2 = ""
		fa_page20_row8_player3 = ""
		fa_page20_row8_player4 = ""

		fa_page20_row9_player1 = ""
		fa_page20_row9_player2 = ""
		fa_page20_row9_player3 = ""
		fa_page20_row9_player4 = ""

		-- page21 variables
		fa_page21_row1_player1 = ""
		fa_page21_row1_player2 = ""
		fa_page21_row1_player3 = ""
		fa_page21_row1_player4 = ""

		fa_page21_row2_player1 = ""
		fa_page21_row2_player2 = ""
		fa_page21_row2_player3 = ""
		fa_page21_row2_player4 = ""

		fa_page21_row3_player1 = ""
		fa_page21_row3_player2 = ""
		fa_page21_row3_player3 = ""
		fa_page21_row3_player4 = ""

		fa_page21_row4_player1 = ""
		fa_page21_row4_player2 = ""
		fa_page21_row4_player3 = ""
		fa_page21_row4_player4 = ""

		fa_page21_row5_player1 = ""
		fa_page21_row5_player2 = ""
		fa_page21_row5_player3 = ""
		fa_page21_row5_player4 = ""

		fa_page21_row6_player1 = ""
		fa_page21_row6_player2 = ""
		fa_page21_row6_player3 = ""
		fa_page21_row6_player4 = ""

		fa_page21_row7_player1 = ""
		fa_page21_row7_player2 = ""
		fa_page21_row7_player3 = ""
		fa_page21_row7_player4 = ""

		fa_page21_row8_player1 = ""
		fa_page21_row8_player2 = ""
		fa_page21_row8_player3 = ""
		fa_page21_row8_player4 = ""

		fa_page21_row9_player1 = ""
		fa_page21_row9_player2 = ""
		fa_page21_row9_player3 = ""
		fa_page21_row9_player4 = ""

		-- page22 variables
		fa_page22_row1_player1 = ""
		fa_page22_row1_player2 = ""
		fa_page22_row1_player3 = ""
		fa_page22_row1_player4 = ""

		fa_page22_row2_player1 = ""
		fa_page22_row2_player2 = ""
		fa_page22_row2_player3 = ""
		fa_page22_row2_player4 = ""

		fa_page22_row3_player1 = ""
		fa_page22_row3_player2 = ""
		fa_page22_row3_player3 = ""
		fa_page22_row3_player4 = ""

		fa_page22_row4_player1 = ""
		fa_page22_row4_player2 = ""
		fa_page22_row4_player3 = ""
		fa_page22_row4_player4 = ""

		fa_page22_row5_player1 = ""
		fa_page22_row5_player2 = ""
		fa_page22_row5_player3 = ""
		fa_page22_row5_player4 = ""

		fa_page22_row6_player1 = ""
		fa_page22_row6_player2 = ""
		fa_page22_row6_player3 = ""
		fa_page22_row6_player4 = ""

		fa_page22_row7_player1 = ""
		fa_page22_row7_player2 = ""
		fa_page22_row7_player3 = ""
		fa_page22_row7_player4 = ""

		fa_page22_row8_player1 = ""
		fa_page22_row8_player2 = ""
		fa_page22_row8_player3 = ""
		fa_page22_row8_player4 = ""

		fa_page22_row9_player1 = ""
		fa_page22_row9_player2 = ""
		fa_page22_row9_player3 = ""
		fa_page22_row9_player4 = ""

		-- page23 variables
		fa_page23_row1_player1 = ""
		fa_page23_row1_player2 = ""
		fa_page23_row1_player3 = ""
		fa_page23_row1_player4 = ""

		fa_page23_row2_player1 = ""
		fa_page23_row2_player2 = ""
		fa_page23_row2_player3 = ""
		fa_page23_row2_player4 = ""

		fa_page23_row3_player1 = ""
		fa_page23_row3_player2 = ""
		fa_page23_row3_player3 = ""
		fa_page23_row3_player4 = ""

		fa_page23_row4_player1 = ""
		fa_page23_row4_player2 = ""
		fa_page23_row4_player3 = ""
		fa_page23_row4_player4 = ""

		fa_page23_row5_player1 = ""
		fa_page23_row5_player2 = ""
		fa_page23_row5_player3 = ""
		fa_page23_row5_player4 = ""

		fa_page23_row6_player1 = ""
		fa_page23_row6_player2 = ""
		fa_page23_row6_player3 = ""
		fa_page23_row6_player4 = ""

		fa_page23_row7_player1 = ""
		fa_page23_row7_player2 = ""
		fa_page23_row7_player3 = ""
		fa_page23_row7_player4 = ""

		fa_page23_row8_player1 = ""
		fa_page23_row8_player2 = ""
		fa_page23_row8_player3 = ""
		fa_page23_row8_player4 = ""

		fa_page23_row9_player1 = ""
		fa_page23_row9_player2 = ""
		fa_page23_row9_player3 = ""
		fa_page23_row9_player4 = ""

		-- page24 variables
		fa_page24_row1_player1 = ""
		fa_page24_row1_player2 = ""
		fa_page24_row1_player3 = ""
		fa_page24_row1_player4 = ""

		fa_page24_row2_player1 = ""
		fa_page24_row2_player2 = ""
		fa_page24_row2_player3 = ""
		fa_page24_row2_player4 = ""

		fa_page24_row3_player1 = ""
		fa_page24_row3_player2 = ""
		fa_page24_row3_player3 = ""
		fa_page24_row3_player4 = ""

		fa_page24_row4_player1 = ""
		fa_page24_row4_player2 = ""
		fa_page24_row4_player3 = ""
		fa_page24_row4_player4 = ""

		fa_page24_row5_player1 = ""
		fa_page24_row5_player2 = ""
		fa_page24_row5_player3 = ""
		fa_page24_row5_player4 = ""

		fa_page24_row6_player1 = ""
		fa_page24_row6_player2 = ""
		fa_page24_row6_player3 = ""
		fa_page24_row6_player4 = ""

		fa_page24_row7_player1 = ""
		fa_page24_row7_player2 = ""
		fa_page24_row7_player3 = ""
		fa_page24_row7_player4 = ""

		fa_page24_row8_player1 = ""
		fa_page24_row8_player2 = ""
		fa_page24_row8_player3 = ""
		fa_page24_row8_player4 = ""

		fa_page24_row9_player1 = ""
		fa_page24_row9_player2 = ""
		fa_page24_row9_player3 = ""
		fa_page24_row9_player4 = ""

		-- page25 variables
		fa_page25_row1_player1 = ""
		fa_page25_row1_player2 = ""
		fa_page25_row1_player3 = ""
		fa_page25_row1_player4 = ""

		fa_page25_row2_player1 = ""
		fa_page25_row2_player2 = ""
		fa_page25_row2_player3 = ""
		fa_page25_row2_player4 = ""

		fa_page25_row3_player1 = ""
		fa_page25_row3_player2 = ""
		fa_page25_row3_player3 = ""
		fa_page25_row3_player4 = ""

		fa_page25_row4_player1 = ""
		fa_page25_row4_player2 = ""
		fa_page25_row4_player3 = ""
		fa_page25_row4_player4 = ""

		fa_page25_row5_player1 = ""
		fa_page25_row5_player2 = ""
		fa_page25_row5_player3 = ""
		fa_page25_row5_player4 = ""

		fa_page25_row6_player1 = ""
		fa_page25_row6_player2 = ""
		fa_page25_row6_player3 = ""
		fa_page25_row6_player4 = ""

		fa_page25_row7_player1 = ""
		fa_page25_row7_player2 = ""
		fa_page25_row7_player3 = ""
		fa_page25_row7_player4 = ""

		fa_page25_row8_player1 = ""
		fa_page25_row8_player2 = ""
		fa_page25_row8_player3 = ""
		fa_page25_row8_player4 = ""

		fa_page25_row9_player1 = ""
		fa_page25_row9_player2 = ""
		fa_page25_row9_player3 = ""
		fa_page25_row9_player4 = ""
	
	-- Reset all players and assignments across all pages
	else
		if fa_config_logging then
			Forgiven_Assignments:Print("resetting all assignment pages to defaults")
		end
		
		-- page1 variables
		fa_page1_assignment_name = "Unused"
		fa_page1_extra_instructions = ""
		fa_page1_internal_notes = ""

		fa_page1_row1_target = ""
		fa_page1_row1_task_player1 = nil
		fa_page1_row1_player1 = ""
		fa_page1_row1_task_player2 = nil
		fa_page1_row1_player2 = ""
		fa_page1_row1_player3 = ""
		fa_page1_row1_player4 = ""

		fa_page1_row2_target = ""
		fa_page1_row2_task = nil
		fa_page1_row2_player1 = ""
		fa_page1_row2_player2 = ""
		fa_page1_row2_player3 = ""
		fa_page1_row2_player4 = ""

		fa_page1_row3_target = ""
		fa_page1_row3_task = nil
		fa_page1_row3_player1 = ""
		fa_page1_row3_player2 = ""
		fa_page1_row3_player3 = ""
		fa_page1_row3_player4 = ""

		fa_page1_row4_target = ""
		fa_page1_row4_task = nil
		fa_page1_row4_player1 = ""
		fa_page1_row4_player2 = ""
		fa_page1_row4_player3 = ""
		fa_page1_row4_player4 = ""

		fa_page1_row5_target = ""
		fa_page1_row5_task = nil
		fa_page1_row5_player1 = ""
		fa_page1_row5_player2 = ""
		fa_page1_row5_player3 = ""
		fa_page1_row5_player4 = ""

		fa_page1_row6_target = ""
		fa_page1_row6_task = nil
		fa_page1_row6_player1 = ""
		fa_page1_row6_player2 = ""
		fa_page1_row6_player3 = ""
		fa_page1_row6_player4 = ""

		fa_page1_row7_target = ""
		fa_page1_row7_task = nil
		fa_page1_row7_player1 = ""
		fa_page1_row7_player2 = ""
		fa_page1_row7_player3 = ""
		fa_page1_row7_player4 = ""

		fa_page1_row8_target = ""
		fa_page1_row8_task = nil
		fa_page1_row8_player1 = ""
		fa_page1_row8_player2 = ""
		fa_page1_row8_player3 = ""
		fa_page1_row8_player4 = ""

		fa_page1_row9_target = ""
		fa_page1_row9_task = nil
		fa_page1_row9_player1 = ""
		fa_page1_row9_player2 = ""
		fa_page1_row9_player3 = ""
		fa_page1_row9_player4 = ""

		-- page2 variables
		fa_page2_assignment_name = "Unused"
		fa_page2_extra_instructions = ""
		fa_page2_internal_notes = ""

		fa_page2_row1_target = ""
		fa_page2_row1_task = nil
		fa_page2_row1_player1 = ""
		fa_page2_row1_player2 = ""
		fa_page2_row1_player3 = ""
		fa_page2_row1_player4 = ""

		fa_page2_row2_target = ""
		fa_page2_row2_task = nil
		fa_page2_row2_player1 = ""
		fa_page2_row2_player2 = ""
		fa_page2_row2_player3 = ""
		fa_page2_row2_player4 = ""

		fa_page2_row3_target = ""
		fa_page2_row3_task = nil
		fa_page2_row3_player1 = ""
		fa_page2_row3_player2 = ""
		fa_page2_row3_player3 = ""
		fa_page2_row3_player4 = ""

		fa_page2_row4_target = ""
		fa_page2_row4_task = nil
		fa_page2_row4_player1 = ""
		fa_page2_row4_player2 = ""
		fa_page2_row4_player3 = ""
		fa_page2_row4_player4 = ""

		fa_page2_row5_target = ""
		fa_page2_row5_task = nil
		fa_page2_row5_player1 = ""
		fa_page2_row5_player2 = ""
		fa_page2_row5_player3 = ""
		fa_page2_row5_player4 = ""

		fa_page2_row6_target = ""
		fa_page2_row6_task = nil
		fa_page2_row6_player1 = ""
		fa_page2_row6_player2 = ""
		fa_page2_row6_player3 = ""
		fa_page2_row6_player4 = ""

		fa_page2_row7_target = ""
		fa_page2_row7_task = nil
		fa_page2_row7_player1 = ""
		fa_page2_row7_player2 = ""
		fa_page2_row7_player3 = ""
		fa_page2_row7_player4 = ""

		fa_page2_row8_target = ""
		fa_page2_row8_task = nil
		fa_page2_row8_player1 = ""
		fa_page2_row8_player2 = ""
		fa_page2_row8_player3 = ""
		fa_page2_row8_player4 = ""

		fa_page2_row9_target = ""
		fa_page2_row9_task = nil
		fa_page2_row9_player1 = ""
		fa_page2_row9_player2 = ""
		fa_page2_row9_player3 = ""
		fa_page2_row9_player4 = ""

		-- page3 variables
		fa_page3_assignment_name = "Unused"
		fa_page3_extra_instructions = ""
		fa_page3_internal_notes = ""

		fa_page3_row1_target = ""
		fa_page3_row1_task = nil
		fa_page3_row1_player1 = ""
		fa_page3_row1_player2 = ""
		fa_page3_row1_player3 = ""
		fa_page3_row1_player4 = ""

		fa_page3_row2_target = ""
		fa_page3_row2_task = nil
		fa_page3_row2_player1 = ""
		fa_page3_row2_player2 = ""
		fa_page3_row2_player3 = ""
		fa_page3_row2_player4 = ""

		fa_page3_row3_target = ""
		fa_page3_row3_task = nil
		fa_page3_row3_player1 = ""
		fa_page3_row3_player2 = ""
		fa_page3_row3_player3 = ""
		fa_page3_row3_player4 = ""

		fa_page3_row4_target = ""
		fa_page3_row4_task = nil
		fa_page3_row4_player1 = ""
		fa_page3_row4_player2 = ""
		fa_page3_row4_player3 = ""
		fa_page3_row4_player4 = ""

		fa_page3_row5_target = ""
		fa_page3_row5_task = nil
		fa_page3_row5_player1 = ""
		fa_page3_row5_player2 = ""
		fa_page3_row5_player3 = ""
		fa_page3_row5_player4 = ""

		fa_page3_row6_target = ""
		fa_page3_row6_task = nil
		fa_page3_row6_player1 = ""
		fa_page3_row6_player2 = ""
		fa_page3_row6_player3 = ""
		fa_page3_row6_player4 = ""

		fa_page3_row7_target = ""
		fa_page3_row7_task = nil
		fa_page3_row7_player1 = ""
		fa_page3_row7_player2 = ""
		fa_page3_row7_player3 = ""
		fa_page3_row7_player4 = ""

		fa_page3_row8_target = ""
		fa_page3_row8_task = nil
		fa_page3_row8_player1 = ""
		fa_page3_row8_player2 = ""
		fa_page3_row8_player3 = ""
		fa_page3_row8_player4 = ""

		fa_page3_row9_target = ""
		fa_page3_row9_task = nil
		fa_page3_row9_player1 = ""
		fa_page3_row9_player2 = ""
		fa_page3_row9_player3 = ""
		fa_page3_row9_player4 = ""

		-- page4 variables
		fa_page4_assignment_name = "Unused"
		fa_page4_extra_instructions = ""
		fa_page4_internal_notes = ""

		fa_page4_row1_target = ""
		fa_page4_row1_task = nil
		fa_page4_row1_player1 = ""
		fa_page4_row1_player2 = ""
		fa_page4_row1_player3 = ""
		fa_page4_row1_player4 = ""

		fa_page4_row2_target = ""
		fa_page4_row2_task = nil
		fa_page4_row2_player1 = ""
		fa_page4_row2_player2 = ""
		fa_page4_row2_player3 = ""
		fa_page4_row2_player4 = ""

		fa_page4_row3_target = ""
		fa_page4_row3_task = nil
		fa_page4_row3_player1 = ""
		fa_page4_row3_player2 = ""
		fa_page4_row3_player3 = ""
		fa_page4_row3_player4 = ""

		fa_page4_row4_target = ""
		fa_page4_row4_task = nil
		fa_page4_row4_player1 = ""
		fa_page4_row4_player2 = ""
		fa_page4_row4_player3 = ""
		fa_page4_row4_player4 = ""

		fa_page4_row5_target = ""
		fa_page4_row5_task = nil
		fa_page4_row5_player1 = ""
		fa_page4_row5_player2 = ""
		fa_page4_row5_player3 = ""
		fa_page4_row5_player4 = ""

		fa_page4_row6_target = ""
		fa_page4_row6_task = nil
		fa_page4_row6_player1 = ""
		fa_page4_row6_player2 = ""
		fa_page4_row6_player3 = ""
		fa_page4_row6_player4 = ""

		fa_page4_row7_target = ""
		fa_page4_row7_task = nil
		fa_page4_row7_player1 = ""
		fa_page4_row7_player2 = ""
		fa_page4_row7_player3 = ""
		fa_page4_row7_player4 = ""

		fa_page4_row8_target = ""
		fa_page4_row8_task = nil
		fa_page4_row8_player1 = ""
		fa_page4_row8_player2 = ""
		fa_page4_row8_player3 = ""
		fa_page4_row8_player4 = ""

		fa_page4_row9_target = ""
		fa_page4_row9_task = nil
		fa_page4_row9_player1 = ""
		fa_page4_row9_player2 = ""
		fa_page4_row9_player3 = ""
		fa_page4_row9_player4 = ""

		-- page5 variables
		fa_page5_assignment_name = "Unused"
		fa_page5_extra_instructions = ""
		fa_page5_internal_notes = ""

		fa_page5_row1_target = ""
		fa_page5_row1_task = nil
		fa_page5_row1_player1 = ""
		fa_page5_row1_player2 = ""
		fa_page5_row1_player3 = ""
		fa_page5_row1_player4 = ""

		fa_page5_row2_target = ""
		fa_page5_row2_task = nil
		fa_page5_row2_player1 = ""
		fa_page5_row2_player2 = ""
		fa_page5_row2_player3 = ""
		fa_page5_row2_player4 = ""

		fa_page5_row3_target = ""
		fa_page5_row3_task = nil
		fa_page5_row3_player1 = ""
		fa_page5_row3_player2 = ""
		fa_page5_row3_player3 = ""
		fa_page5_row3_player4 = ""

		fa_page5_row4_target = ""
		fa_page5_row4_task = nil
		fa_page5_row4_player1 = ""
		fa_page5_row4_player2 = ""
		fa_page5_row4_player3 = ""
		fa_page5_row4_player4 = ""

		fa_page5_row5_target = ""
		fa_page5_row5_task = nil
		fa_page5_row5_player1 = ""
		fa_page5_row5_player2 = ""
		fa_page5_row5_player3 = ""
		fa_page5_row5_player4 = ""

		fa_page5_row6_target = ""
		fa_page5_row6_task = nil
		fa_page5_row6_player1 = ""
		fa_page5_row6_player2 = ""
		fa_page5_row6_player3 = ""
		fa_page5_row6_player4 = ""

		fa_page5_row7_target = ""
		fa_page5_row7_task = nil
		fa_page5_row7_player1 = ""
		fa_page5_row7_player2 = ""
		fa_page5_row7_player3 = ""
		fa_page5_row7_player4 = ""

		fa_page5_row8_target = ""
		fa_page5_row8_task = nil
		fa_page5_row8_player1 = ""
		fa_page5_row8_player2 = ""
		fa_page5_row8_player3 = ""
		fa_page5_row8_player4 = ""

		fa_page5_row9_target = ""
		fa_page5_row9_task = nil
		fa_page5_row9_player1 = ""
		fa_page5_row9_player2 = ""
		fa_page5_row9_player3 = ""
		fa_page5_row9_player4 = ""

		-- page6 variables
		fa_page6_assignment_name = "Unused"
		fa_page6_extra_instructions = ""
		fa_page6_internal_notes = ""

		fa_page6_row1_target = ""
		fa_page6_row1_task = nil
		fa_page6_row1_player1 = ""
		fa_page6_row1_player2 = ""
		fa_page6_row1_player3 = ""
		fa_page6_row1_player4 = ""

		fa_page6_row2_target = ""
		fa_page6_row2_task = nil
		fa_page6_row2_player1 = ""
		fa_page6_row2_player2 = ""
		fa_page6_row2_player3 = ""
		fa_page6_row2_player4 = ""

		fa_page6_row3_target = ""
		fa_page6_row3_task = nil
		fa_page6_row3_player1 = ""
		fa_page6_row3_player2 = ""
		fa_page6_row3_player3 = ""
		fa_page6_row3_player4 = ""

		fa_page6_row4_target = ""
		fa_page6_row4_task = nil
		fa_page6_row4_player1 = ""
		fa_page6_row4_player2 = ""
		fa_page6_row4_player3 = ""
		fa_page6_row4_player4 = ""

		fa_page6_row5_target = ""
		fa_page6_row5_task = nil
		fa_page6_row5_player1 = ""
		fa_page6_row5_player2 = ""
		fa_page6_row5_player3 = ""
		fa_page6_row5_player4 = ""

		fa_page6_row6_target = ""
		fa_page6_row6_task = nil
		fa_page6_row6_player1 = ""
		fa_page6_row6_player2 = ""
		fa_page6_row6_player3 = ""
		fa_page6_row6_player4 = ""

		fa_page6_row7_target = ""
		fa_page6_row7_task = nil
		fa_page6_row7_player1 = ""
		fa_page6_row7_player2 = ""
		fa_page6_row7_player3 = ""
		fa_page6_row7_player4 = ""

		fa_page6_row8_target = ""
		fa_page6_row8_task = nil
		fa_page6_row8_player1 = ""
		fa_page6_row8_player2 = ""
		fa_page6_row8_player3 = ""
		fa_page6_row8_player4 = ""

		fa_page6_row9_target = ""
		fa_page6_row9_task = nil
		fa_page6_row9_player1 = ""
		fa_page6_row9_player2 = ""
		fa_page6_row9_player3 = ""
		fa_page6_row9_player4 = ""

		-- page7 variables
		fa_page7_assignment_name = "Unused"
		fa_page7_extra_instructions = ""
		fa_page7_internal_notes = ""

		fa_page7_row1_target = ""
		fa_page7_row1_task = nil
		fa_page7_row1_player1 = ""
		fa_page7_row1_player2 = ""
		fa_page7_row1_player3 = ""
		fa_page7_row1_player4 = ""

		fa_page7_row2_target = ""
		fa_page7_row2_task = nil
		fa_page7_row2_player1 = ""
		fa_page7_row2_player2 = ""
		fa_page7_row2_player3 = ""
		fa_page7_row2_player4 = ""

		fa_page7_row3_target = ""
		fa_page7_row3_task = nil
		fa_page7_row3_player1 = ""
		fa_page7_row3_player2 = ""
		fa_page7_row3_player3 = ""
		fa_page7_row3_player4 = ""

		fa_page7_row4_target = ""
		fa_page7_row4_task = nil
		fa_page7_row4_player1 = ""
		fa_page7_row4_player2 = ""
		fa_page7_row4_player3 = ""
		fa_page7_row4_player4 = ""

		fa_page7_row5_target = ""
		fa_page7_row5_task = nil
		fa_page7_row5_player1 = ""
		fa_page7_row5_player2 = ""
		fa_page7_row5_player3 = ""
		fa_page7_row5_player4 = ""

		fa_page7_row6_target = ""
		fa_page7_row6_task = nil
		fa_page7_row6_player1 = ""
		fa_page7_row6_player2 = ""
		fa_page7_row6_player3 = ""
		fa_page7_row6_player4 = ""

		fa_page7_row7_target = ""
		fa_page7_row7_task = nil
		fa_page7_row7_player1 = ""
		fa_page7_row7_player2 = ""
		fa_page7_row7_player3 = ""
		fa_page7_row7_player4 = ""

		fa_page7_row8_target = ""
		fa_page7_row8_task = nil
		fa_page7_row8_player1 = ""
		fa_page7_row8_player2 = ""
		fa_page7_row8_player3 = ""
		fa_page7_row8_player4 = ""

		fa_page7_row9_target = ""
		fa_page7_row9_task = nil
		fa_page7_row9_player1 = ""
		fa_page7_row9_player2 = ""
		fa_page7_row9_player3 = ""
		fa_page7_row9_player4 = ""

		-- page8 variables
		fa_page8_assignment_name = "Unused"
		fa_page8_extra_instructions = ""
		fa_page8_internal_notes = ""

		fa_page8_row1_target = ""
		fa_page8_row1_task = nil
		fa_page8_row1_player1 = ""
		fa_page8_row1_player2 = ""
		fa_page8_row1_player3 = ""
		fa_page8_row1_player4 = ""

		fa_page8_row2_target = ""
		fa_page8_row2_task = nil
		fa_page8_row2_player1 = ""
		fa_page8_row2_player2 = ""
		fa_page8_row2_player3 = ""
		fa_page8_row2_player4 = ""

		fa_page8_row3_target = ""
		fa_page8_row3_task = nil
		fa_page8_row3_player1 = ""
		fa_page8_row3_player2 = ""
		fa_page8_row3_player3 = ""
		fa_page8_row3_player4 = ""

		fa_page8_row4_target = ""
		fa_page8_row4_task = nil
		fa_page8_row4_player1 = ""
		fa_page8_row4_player2 = ""
		fa_page8_row4_player3 = ""
		fa_page8_row4_player4 = ""

		fa_page8_row5_target = ""
		fa_page8_row5_task = nil
		fa_page8_row5_player1 = ""
		fa_page8_row5_player2 = ""
		fa_page8_row5_player3 = ""
		fa_page8_row5_player4 = ""

		fa_page8_row6_target = ""
		fa_page8_row6_task = nil
		fa_page8_row6_player1 = ""
		fa_page8_row6_player2 = ""
		fa_page8_row6_player3 = ""
		fa_page8_row6_player4 = ""

		fa_page8_row7_target = ""
		fa_page8_row7_task = nil
		fa_page8_row7_player1 = ""
		fa_page8_row7_player2 = ""
		fa_page8_row7_player3 = ""
		fa_page8_row7_player4 = ""

		fa_page8_row8_target = ""
		fa_page8_row8_task = nil
		fa_page8_row8_player1 = ""
		fa_page8_row8_player2 = ""
		fa_page8_row8_player3 = ""
		fa_page8_row8_player4 = ""

		fa_page8_row9_target = ""
		fa_page8_row9_task = nil
		fa_page8_row9_player1 = ""
		fa_page8_row9_player2 = ""
		fa_page8_row9_player3 = ""
		fa_page8_row9_player4 = ""

		-- page9 variables
		fa_page9_assignment_name = "Unused"
		fa_page9_extra_instructions = ""
		fa_page9_internal_notes = ""

		fa_page9_row1_target = ""
		fa_page9_row1_task = nil
		fa_page9_row1_player1 = ""
		fa_page9_row1_player2 = ""
		fa_page9_row1_player3 = ""
		fa_page9_row1_player4 = ""

		fa_page9_row2_target = ""
		fa_page9_row2_task = nil
		fa_page9_row2_player1 = ""
		fa_page9_row2_player2 = ""
		fa_page9_row2_player3 = ""
		fa_page9_row2_player4 = ""

		fa_page9_row3_target = ""
		fa_page9_row3_task = nil
		fa_page9_row3_player1 = ""
		fa_page9_row3_player2 = ""
		fa_page9_row3_player3 = ""
		fa_page9_row3_player4 = ""

		fa_page9_row4_target = ""
		fa_page9_row4_task = nil
		fa_page9_row4_player1 = ""
		fa_page9_row4_player2 = ""
		fa_page9_row4_player3 = ""
		fa_page9_row4_player4 = ""

		fa_page9_row5_target = ""
		fa_page9_row5_task = nil
		fa_page9_row5_player1 = ""
		fa_page9_row5_player2 = ""
		fa_page9_row5_player3 = ""
		fa_page9_row5_player4 = ""

		fa_page9_row6_target = ""
		fa_page9_row6_task = nil
		fa_page9_row6_player1 = ""
		fa_page9_row6_player2 = ""
		fa_page9_row6_player3 = ""
		fa_page9_row6_player4 = ""

		fa_page9_row7_target = ""
		fa_page9_row7_task = nil
		fa_page9_row7_player1 = ""
		fa_page9_row7_player2 = ""
		fa_page9_row7_player3 = ""
		fa_page9_row7_player4 = ""

		fa_page9_row8_target = ""
		fa_page9_row8_task = nil
		fa_page9_row8_player1 = ""
		fa_page9_row8_player2 = ""
		fa_page9_row8_player3 = ""
		fa_page9_row8_player4 = ""

		fa_page9_row9_target = ""
		fa_page9_row9_task = nil
		fa_page9_row9_player1 = ""
		fa_page9_row9_player2 = ""
		fa_page9_row9_player3 = ""
		fa_page9_row9_player4 = ""

		-- page10 variables
		fa_page10_assignment_name = "Unused"
		fa_page10_extra_instructions = ""
		fa_page10_internal_notes = ""

		fa_page10_row1_target = ""
		fa_page10_row1_task = nil
		fa_page10_row1_player1 = ""
		fa_page10_row1_player2 = ""
		fa_page10_row1_player3 = ""
		fa_page10_row1_player4 = ""

		fa_page10_row2_target = ""
		fa_page10_row2_task = nil
		fa_page10_row2_player1 = ""
		fa_page10_row2_player2 = ""
		fa_page10_row2_player3 = ""
		fa_page10_row2_player4 = ""

		fa_page10_row3_target = ""
		fa_page10_row3_task = nil
		fa_page10_row3_player1 = ""
		fa_page10_row3_player2 = ""
		fa_page10_row3_player3 = ""
		fa_page10_row3_player4 = ""

		fa_page10_row4_target = ""
		fa_page10_row4_task = nil
		fa_page10_row4_player1 = ""
		fa_page10_row4_player2 = ""
		fa_page10_row4_player3 = ""
		fa_page10_row4_player4 = ""

		fa_page10_row5_target = ""
		fa_page10_row5_task = nil
		fa_page10_row5_player1 = ""
		fa_page10_row5_player2 = ""
		fa_page10_row5_player3 = ""
		fa_page10_row5_player4 = ""

		fa_page10_row6_target = ""
		fa_page10_row6_task = nil
		fa_page10_row6_player1 = ""
		fa_page10_row6_player2 = ""
		fa_page10_row6_player3 = ""
		fa_page10_row6_player4 = ""

		fa_page10_row7_target = ""
		fa_page10_row7_task = nil
		fa_page10_row7_player1 = ""
		fa_page10_row7_player2 = ""
		fa_page10_row7_player3 = ""
		fa_page10_row7_player4 = ""

		fa_page10_row8_target = ""
		fa_page10_row8_task = nil
		fa_page10_row8_player1 = ""
		fa_page10_row8_player2 = ""
		fa_page10_row8_player3 = ""
		fa_page10_row8_player4 = ""

		fa_page10_row9_target = ""
		fa_page10_row9_task = nil
		fa_page10_row9_player1 = ""
		fa_page10_row9_player2 = ""
		fa_page10_row9_player3 = ""
		fa_page10_row9_player4 = ""

		-- page11 variables
		fa_page11_assignment_name = "Unused"
		fa_page11_extra_instructions = ""
		fa_page11_internal_notes = ""

		fa_page11_row1_target = ""
		fa_page11_row1_task = nil
		fa_page11_row1_player1 = ""
		fa_page11_row1_player2 = ""
		fa_page11_row1_player3 = ""
		fa_page11_row1_player4 = ""

		fa_page11_row2_target = ""
		fa_page11_row2_task = nil
		fa_page11_row2_player1 = ""
		fa_page11_row2_player2 = ""
		fa_page11_row2_player3 = ""
		fa_page11_row2_player4 = ""

		fa_page11_row3_target = ""
		fa_page11_row3_task = nil
		fa_page11_row3_player1 = ""
		fa_page11_row3_player2 = ""
		fa_page11_row3_player3 = ""
		fa_page11_row3_player4 = ""

		fa_page11_row4_target = ""
		fa_page11_row4_task = nil
		fa_page11_row4_player1 = ""
		fa_page11_row4_player2 = ""
		fa_page11_row4_player3 = ""
		fa_page11_row4_player4 = ""

		fa_page11_row5_target = ""
		fa_page11_row5_task = nil
		fa_page11_row5_player1 = ""
		fa_page11_row5_player2 = ""
		fa_page11_row5_player3 = ""
		fa_page11_row5_player4 = ""

		fa_page11_row6_target = ""
		fa_page11_row6_task = nil
		fa_page11_row6_player1 = ""
		fa_page11_row6_player2 = ""
		fa_page11_row6_player3 = ""
		fa_page11_row6_player4 = ""

		fa_page11_row7_target = ""
		fa_page11_row7_task = nil
		fa_page11_row7_player1 = ""
		fa_page11_row7_player2 = ""
		fa_page11_row7_player3 = ""
		fa_page11_row7_player4 = ""

		fa_page11_row8_target = ""
		fa_page11_row8_task = nil
		fa_page11_row8_player1 = ""
		fa_page11_row8_player2 = ""
		fa_page11_row8_player3 = ""
		fa_page11_row8_player4 = ""

		fa_page11_row9_target = ""
		fa_page11_row9_task = nil
		fa_page11_row9_player1 = ""
		fa_page11_row9_player2 = ""
		fa_page11_row9_player3 = ""
		fa_page11_row9_player4 = ""

		-- page12 variables
		fa_page12_assignment_name = "Unused"
		fa_page12_extra_instructions = ""
		fa_page12_internal_notes = ""

		fa_page12_row1_target = ""
		fa_page12_row1_task = nil
		fa_page12_row1_player1 = ""
		fa_page12_row1_player2 = ""
		fa_page12_row1_player3 = ""
		fa_page12_row1_player4 = ""

		fa_page12_row2_target = ""
		fa_page12_row2_task = nil
		fa_page12_row2_player1 = ""
		fa_page12_row2_player2 = ""
		fa_page12_row2_player3 = ""
		fa_page12_row2_player4 = ""

		fa_page12_row3_target = ""
		fa_page12_row3_task = nil
		fa_page12_row3_player1 = ""
		fa_page12_row3_player2 = ""
		fa_page12_row3_player3 = ""
		fa_page12_row3_player4 = ""

		fa_page12_row4_target = ""
		fa_page12_row4_task = nil
		fa_page12_row4_player1 = ""
		fa_page12_row4_player2 = ""
		fa_page12_row4_player3 = ""
		fa_page12_row4_player4 = ""

		fa_page12_row5_target = ""
		fa_page12_row5_task = nil
		fa_page12_row5_player1 = ""
		fa_page12_row5_player2 = ""
		fa_page12_row5_player3 = ""
		fa_page12_row5_player4 = ""

		fa_page12_row6_target = ""
		fa_page12_row6_task = nil
		fa_page12_row6_player1 = ""
		fa_page12_row6_player2 = ""
		fa_page12_row6_player3 = ""
		fa_page12_row6_player4 = ""

		fa_page12_row7_target = ""
		fa_page12_row7_task = nil
		fa_page12_row7_player1 = ""
		fa_page12_row7_player2 = ""
		fa_page12_row7_player3 = ""
		fa_page12_row7_player4 = ""

		fa_page12_row8_target = ""
		fa_page12_row8_task = nil
		fa_page12_row8_player1 = ""
		fa_page12_row8_player2 = ""
		fa_page12_row8_player3 = ""
		fa_page12_row8_player4 = ""

		fa_page12_row9_target = ""
		fa_page12_row9_task = nil
		fa_page12_row9_player1 = ""
		fa_page12_row9_player2 = ""
		fa_page12_row9_player3 = ""
		fa_page12_row9_player4 = ""

		-- page13 variables
		fa_page13_assignment_name = "Unused"
		fa_page13_extra_instructions = ""
		fa_page13_internal_notes = ""

		fa_page13_row1_target = ""
		fa_page13_row1_task = nil
		fa_page13_row1_player1 = ""
		fa_page13_row1_player2 = ""
		fa_page13_row1_player3 = ""
		fa_page13_row1_player4 = ""

		fa_page13_row2_target = ""
		fa_page13_row2_task = nil
		fa_page13_row2_player1 = ""
		fa_page13_row2_player2 = ""
		fa_page13_row2_player3 = ""
		fa_page13_row2_player4 = ""

		fa_page13_row3_target = ""
		fa_page13_row3_task = nil
		fa_page13_row3_player1 = ""
		fa_page13_row3_player2 = ""
		fa_page13_row3_player3 = ""
		fa_page13_row3_player4 = ""

		fa_page13_row4_target = ""
		fa_page13_row4_task = nil
		fa_page13_row4_player1 = ""
		fa_page13_row4_player2 = ""
		fa_page13_row4_player3 = ""
		fa_page13_row4_player4 = ""

		fa_page13_row5_target = ""
		fa_page13_row5_task = nil
		fa_page13_row5_player1 = ""
		fa_page13_row5_player2 = ""
		fa_page13_row5_player3 = ""
		fa_page13_row5_player4 = ""

		fa_page13_row6_target = ""
		fa_page13_row6_task = nil
		fa_page13_row6_player1 = ""
		fa_page13_row6_player2 = ""
		fa_page13_row6_player3 = ""
		fa_page13_row6_player4 = ""

		fa_page13_row7_target = ""
		fa_page13_row7_task = nil
		fa_page13_row7_player1 = ""
		fa_page13_row7_player2 = ""
		fa_page13_row7_player3 = ""
		fa_page13_row7_player4 = ""

		fa_page13_row8_target = ""
		fa_page13_row8_task = nil
		fa_page13_row8_player1 = ""
		fa_page13_row8_player2 = ""
		fa_page13_row8_player3 = ""
		fa_page13_row8_player4 = ""

		fa_page13_row9_target = ""
		fa_page13_row9_task = nil
		fa_page13_row9_player1 = ""
		fa_page13_row9_player2 = ""
		fa_page13_row9_player3 = ""
		fa_page13_row9_player4 = ""

		-- page14 variables
		fa_page14_assignment_name = "Unused"
		fa_page14_extra_instructions = ""
		fa_page14_internal_notes = ""

		fa_page14_row1_target = ""
		fa_page14_row1_task = nil
		fa_page14_row1_player1 = ""
		fa_page14_row1_player2 = ""
		fa_page14_row1_player3 = ""
		fa_page14_row1_player4 = ""

		fa_page14_row2_target = ""
		fa_page14_row2_task = nil
		fa_page14_row2_player1 = ""
		fa_page14_row2_player2 = ""
		fa_page14_row2_player3 = ""
		fa_page14_row2_player4 = ""

		fa_page14_row3_target = ""
		fa_page14_row3_task = nil
		fa_page14_row3_player1 = ""
		fa_page14_row3_player2 = ""
		fa_page14_row3_player3 = ""
		fa_page14_row3_player4 = ""

		fa_page14_row4_target = ""
		fa_page14_row4_task = nil
		fa_page14_row4_player1 = ""
		fa_page14_row4_player2 = ""
		fa_page14_row4_player3 = ""
		fa_page14_row4_player4 = ""

		fa_page14_row5_target = ""
		fa_page14_row5_task = nil
		fa_page14_row5_player1 = ""
		fa_page14_row5_player2 = ""
		fa_page14_row5_player3 = ""
		fa_page14_row5_player4 = ""

		fa_page14_row6_target = ""
		fa_page14_row6_task = nil
		fa_page14_row6_player1 = ""
		fa_page14_row6_player2 = ""
		fa_page14_row6_player3 = ""
		fa_page14_row6_player4 = ""

		fa_page14_row7_target = ""
		fa_page14_row7_task = nil
		fa_page14_row7_player1 = ""
		fa_page14_row7_player2 = ""
		fa_page14_row7_player3 = ""
		fa_page14_row7_player4 = ""

		fa_page14_row8_target = ""
		fa_page14_row8_task = nil
		fa_page14_row8_player1 = ""
		fa_page14_row8_player2 = ""
		fa_page14_row8_player3 = ""
		fa_page14_row8_player4 = ""

		fa_page14_row9_target = ""
		fa_page14_row9_task = nil
		fa_page14_row9_player1 = ""
		fa_page14_row9_player2 = ""
		fa_page14_row9_player3 = ""
		fa_page14_row9_player4 = ""

		-- page15 variables
		fa_page15_assignment_name = "Unused"
		fa_page15_extra_instructions = ""
		fa_page15_internal_notes = ""

		fa_page15_row1_target = ""
		fa_page15_row1_task = nil
		fa_page15_row1_player1 = ""
		fa_page15_row1_player2 = ""
		fa_page15_row1_player3 = ""
		fa_page15_row1_player4 = ""

		fa_page15_row2_target = ""
		fa_page15_row2_task = nil
		fa_page15_row2_player1 = ""
		fa_page15_row2_player2 = ""
		fa_page15_row2_player3 = ""
		fa_page15_row2_player4 = ""

		fa_page15_row3_target = ""
		fa_page15_row3_task = nil
		fa_page15_row3_player1 = ""
		fa_page15_row3_player2 = ""
		fa_page15_row3_player3 = ""
		fa_page15_row3_player4 = ""

		fa_page15_row4_target = ""
		fa_page15_row4_task = nil
		fa_page15_row4_player1 = ""
		fa_page15_row4_player2 = ""
		fa_page15_row4_player3 = ""
		fa_page15_row4_player4 = ""

		fa_page15_row5_target = ""
		fa_page15_row5_task = nil
		fa_page15_row5_player1 = ""
		fa_page15_row5_player2 = ""
		fa_page15_row5_player3 = ""
		fa_page15_row5_player4 = ""

		fa_page15_row6_target = ""
		fa_page15_row6_task = nil
		fa_page15_row6_player1 = ""
		fa_page15_row6_player2 = ""
		fa_page15_row6_player3 = ""
		fa_page15_row6_player4 = ""

		fa_page15_row7_target = ""
		fa_page15_row7_task = nil
		fa_page15_row7_player1 = ""
		fa_page15_row7_player2 = ""
		fa_page15_row7_player3 = ""
		fa_page15_row7_player4 = ""

		fa_page15_row8_target = ""
		fa_page15_row8_task = nil
		fa_page15_row8_player1 = ""
		fa_page15_row8_player2 = ""
		fa_page15_row8_player3 = ""
		fa_page15_row8_player4 = ""

		fa_page15_row9_target = ""
		fa_page15_row9_task = nil
		fa_page15_row9_player1 = ""
		fa_page15_row9_player2 = ""
		fa_page15_row9_player3 = ""
		fa_page15_row9_player4 = ""
		
		-- page16 variables
		fa_page16_assignment_name = "Unused"
		fa_page16_extra_instructions = ""
		fa_page16_internal_notes = ""

		fa_page16_row1_target = ""
		fa_page16_row1_task = nil
		fa_page16_row1_player1 = ""
		fa_page16_row1_player2 = ""
		fa_page16_row1_player3 = ""
		fa_page16_row1_player4 = ""

		fa_page16_row2_target = ""
		fa_page16_row2_task = nil
		fa_page16_row2_player1 = ""
		fa_page16_row2_player2 = ""
		fa_page16_row2_player3 = ""
		fa_page16_row2_player4 = ""

		fa_page16_row3_target = ""
		fa_page16_row3_task = nil
		fa_page16_row3_player1 = ""
		fa_page16_row3_player2 = ""
		fa_page16_row3_player3 = ""
		fa_page16_row3_player4 = ""

		fa_page16_row4_target = ""
		fa_page16_row4_task = nil
		fa_page16_row4_player1 = ""
		fa_page16_row4_player2 = ""
		fa_page16_row4_player3 = ""
		fa_page16_row4_player4 = ""

		fa_page16_row5_target = ""
		fa_page16_row5_task = nil
		fa_page16_row5_player1 = ""
		fa_page16_row5_player2 = ""
		fa_page16_row5_player3 = ""
		fa_page16_row5_player4 = ""

		fa_page16_row6_target = ""
		fa_page16_row6_task = nil
		fa_page16_row6_player1 = ""
		fa_page16_row6_player2 = ""
		fa_page16_row6_player3 = ""
		fa_page16_row6_player4 = ""

		fa_page16_row7_target = ""
		fa_page16_row7_task = nil
		fa_page16_row7_player1 = ""
		fa_page16_row7_player2 = ""
		fa_page16_row7_player3 = ""
		fa_page16_row7_player4 = ""

		fa_page16_row8_target = ""
		fa_page16_row8_task = nil
		fa_page16_row8_player1 = ""
		fa_page16_row8_player2 = ""
		fa_page16_row8_player3 = ""
		fa_page16_row8_player4 = ""

		fa_page16_row9_target = ""
		fa_page16_row9_task = nil
		fa_page16_row9_player1 = ""
		fa_page16_row9_player2 = ""
		fa_page16_row9_player3 = ""
		fa_page16_row9_player4 = ""

		-- page17 variables
		fa_page17_assignment_name = "Unused"
		fa_page17_extra_instructions = ""
		fa_page17_internal_notes = ""

		fa_page17_row1_target = ""
		fa_page17_row1_task = nil
		fa_page17_row1_player1 = ""
		fa_page17_row1_player2 = ""
		fa_page17_row1_player3 = ""
		fa_page17_row1_player4 = ""

		fa_page17_row2_target = ""
		fa_page17_row2_task = nil
		fa_page17_row2_player1 = ""
		fa_page17_row2_player2 = ""
		fa_page17_row2_player3 = ""
		fa_page17_row2_player4 = ""

		fa_page17_row3_target = ""
		fa_page17_row3_task = nil
		fa_page17_row3_player1 = ""
		fa_page17_row3_player2 = ""
		fa_page17_row3_player3 = ""
		fa_page17_row3_player4 = ""

		fa_page17_row4_target = ""
		fa_page17_row4_task = nil
		fa_page17_row4_player1 = ""
		fa_page17_row4_player2 = ""
		fa_page17_row4_player3 = ""
		fa_page17_row4_player4 = ""

		fa_page17_row5_target = ""
		fa_page17_row5_task = nil
		fa_page17_row5_player1 = ""
		fa_page17_row5_player2 = ""
		fa_page17_row5_player3 = ""
		fa_page17_row5_player4 = ""

		fa_page17_row6_target = ""
		fa_page17_row6_task = nil
		fa_page17_row6_player1 = ""
		fa_page17_row6_player2 = ""
		fa_page17_row6_player3 = ""
		fa_page17_row6_player4 = ""

		fa_page17_row7_target = ""
		fa_page17_row7_task = nil
		fa_page17_row7_player1 = ""
		fa_page17_row7_player2 = ""
		fa_page17_row7_player3 = ""
		fa_page17_row7_player4 = ""

		fa_page17_row8_target = ""
		fa_page17_row8_task = nil
		fa_page17_row8_player1 = ""
		fa_page17_row8_player2 = ""
		fa_page17_row8_player3 = ""
		fa_page17_row8_player4 = ""

		fa_page17_row9_target = ""
		fa_page17_row9_task = nil
		fa_page17_row9_player1 = ""
		fa_page17_row9_player2 = ""
		fa_page17_row9_player3 = ""
		fa_page17_row9_player4 = ""

		-- page18 variables
		fa_page18_assignment_name = "Unused"
		fa_page18_extra_instructions = ""
		fa_page18_internal_notes = ""

		fa_page18_row1_target = ""
		fa_page18_row1_task = nil
		fa_page18_row1_player1 = ""
		fa_page18_row1_player2 = ""
		fa_page18_row1_player3 = ""
		fa_page18_row1_player4 = ""

		fa_page18_row2_target = ""
		fa_page18_row2_task = nil
		fa_page18_row2_player1 = ""
		fa_page18_row2_player2 = ""
		fa_page18_row2_player3 = ""
		fa_page18_row2_player4 = ""

		fa_page18_row3_target = ""
		fa_page18_row3_task = nil
		fa_page18_row3_player1 = ""
		fa_page18_row3_player2 = ""
		fa_page18_row3_player3 = ""
		fa_page18_row3_player4 = ""

		fa_page18_row4_target = ""
		fa_page18_row4_task = nil
		fa_page18_row4_player1 = ""
		fa_page18_row4_player2 = ""
		fa_page18_row4_player3 = ""
		fa_page18_row4_player4 = ""

		fa_page18_row5_target = ""
		fa_page18_row5_task = nil
		fa_page18_row5_player1 = ""
		fa_page18_row5_player2 = ""
		fa_page18_row5_player3 = ""
		fa_page18_row5_player4 = ""

		fa_page18_row6_target = ""
		fa_page18_row6_task = nil
		fa_page18_row6_player1 = ""
		fa_page18_row6_player2 = ""
		fa_page18_row6_player3 = ""
		fa_page18_row6_player4 = ""

		fa_page18_row7_target = ""
		fa_page18_row7_task = nil
		fa_page18_row7_player1 = ""
		fa_page18_row7_player2 = ""
		fa_page18_row7_player3 = ""
		fa_page18_row7_player4 = ""

		fa_page18_row8_target = ""
		fa_page18_row8_task = nil
		fa_page18_row8_player1 = ""
		fa_page18_row8_player2 = ""
		fa_page18_row8_player3 = ""
		fa_page18_row8_player4 = ""

		fa_page18_row9_target = ""
		fa_page18_row9_task = nil
		fa_page18_row9_player1 = ""
		fa_page18_row9_player2 = ""
		fa_page18_row9_player3 = ""
		fa_page18_row9_player4 = ""

		-- page19 variables
		fa_page19_assignment_name = "Unused"
		fa_page19_extra_instructions = ""
		fa_page19_internal_notes = ""

		fa_page19_row1_target = ""
		fa_page19_row1_task = nil
		fa_page19_row1_player1 = ""
		fa_page19_row1_player2 = ""
		fa_page19_row1_player3 = ""
		fa_page19_row1_player4 = ""

		fa_page19_row2_target = ""
		fa_page19_row2_task = nil
		fa_page19_row2_player1 = ""
		fa_page19_row2_player2 = ""
		fa_page19_row2_player3 = ""
		fa_page19_row2_player4 = ""

		fa_page19_row3_target = ""
		fa_page19_row3_task = nil
		fa_page19_row3_player1 = ""
		fa_page19_row3_player2 = ""
		fa_page19_row3_player3 = ""
		fa_page19_row3_player4 = ""

		fa_page19_row4_target = ""
		fa_page19_row4_task = nil
		fa_page19_row4_player1 = ""
		fa_page19_row4_player2 = ""
		fa_page19_row4_player3 = ""
		fa_page19_row4_player4 = ""

		fa_page19_row5_target = ""
		fa_page19_row5_task = nil
		fa_page19_row5_player1 = ""
		fa_page19_row5_player2 = ""
		fa_page19_row5_player3 = ""
		fa_page19_row5_player4 = ""

		fa_page19_row6_target = ""
		fa_page19_row6_task = nil
		fa_page19_row6_player1 = ""
		fa_page19_row6_player2 = ""
		fa_page19_row6_player3 = ""
		fa_page19_row6_player4 = ""

		fa_page19_row7_target = ""
		fa_page19_row7_task = nil
		fa_page19_row7_player1 = ""
		fa_page19_row7_player2 = ""
		fa_page19_row7_player3 = ""
		fa_page19_row7_player4 = ""

		fa_page19_row8_target = ""
		fa_page19_row8_task = nil
		fa_page19_row8_player1 = ""
		fa_page19_row8_player2 = ""
		fa_page19_row8_player3 = ""
		fa_page19_row8_player4 = ""

		fa_page19_row9_target = ""
		fa_page19_row9_task = nil
		fa_page19_row9_player1 = ""
		fa_page19_row9_player2 = ""
		fa_page19_row9_player3 = ""
		fa_page19_row9_player4 = ""

		-- page20 variables
		fa_page20_assignment_name = "Unused"
		fa_page20_extra_instructions = ""
		fa_page20_internal_notes = ""

		fa_page20_row1_target = ""
		fa_page20_row1_task = nil
		fa_page20_row1_player1 = ""
		fa_page20_row1_player2 = ""
		fa_page20_row1_player3 = ""
		fa_page20_row1_player4 = ""

		fa_page20_row2_target = ""
		fa_page20_row2_task = nil
		fa_page20_row2_player1 = ""
		fa_page20_row2_player2 = ""
		fa_page20_row2_player3 = ""
		fa_page20_row2_player4 = ""

		fa_page20_row3_target = ""
		fa_page20_row3_task = nil
		fa_page20_row3_player1 = ""
		fa_page20_row3_player2 = ""
		fa_page20_row3_player3 = ""
		fa_page20_row3_player4 = ""

		fa_page20_row4_target = ""
		fa_page20_row4_task = nil
		fa_page20_row4_player1 = ""
		fa_page20_row4_player2 = ""
		fa_page20_row4_player3 = ""
		fa_page20_row4_player4 = ""

		fa_page20_row5_target = ""
		fa_page20_row5_task = nil
		fa_page20_row5_player1 = ""
		fa_page20_row5_player2 = ""
		fa_page20_row5_player3 = ""
		fa_page20_row5_player4 = ""

		fa_page20_row6_target = ""
		fa_page20_row6_task = nil
		fa_page20_row6_player1 = ""
		fa_page20_row6_player2 = ""
		fa_page20_row6_player3 = ""
		fa_page20_row6_player4 = ""

		fa_page20_row7_target = ""
		fa_page20_row7_task = nil
		fa_page20_row7_player1 = ""
		fa_page20_row7_player2 = ""
		fa_page20_row7_player3 = ""
		fa_page20_row7_player4 = ""

		fa_page20_row8_target = ""
		fa_page20_row8_task = nil
		fa_page20_row8_player1 = ""
		fa_page20_row8_player2 = ""
		fa_page20_row8_player3 = ""
		fa_page20_row8_player4 = ""

		fa_page20_row9_target = ""
		fa_page20_row9_task = nil
		fa_page20_row9_player1 = ""
		fa_page20_row9_player2 = ""
		fa_page20_row9_player3 = ""
		fa_page20_row9_player4 = ""

		-- page21 variables
		fa_page21_assignment_name = "Unused"
		fa_page21_extra_instructions = ""
		fa_page21_internal_notes = ""

		fa_page21_row1_target = ""
		fa_page21_row1_task = nil
		fa_page21_row1_player1 = ""
		fa_page21_row1_player2 = ""
		fa_page21_row1_player3 = ""
		fa_page21_row1_player4 = ""

		fa_page21_row2_target = ""
		fa_page21_row2_task = nil
		fa_page21_row2_player1 = ""
		fa_page21_row2_player2 = ""
		fa_page21_row2_player3 = ""
		fa_page21_row2_player4 = ""

		fa_page21_row3_target = ""
		fa_page21_row3_task = nil
		fa_page21_row3_player1 = ""
		fa_page21_row3_player2 = ""
		fa_page21_row3_player3 = ""
		fa_page21_row3_player4 = ""

		fa_page21_row4_target = ""
		fa_page21_row4_task = nil
		fa_page21_row4_player1 = ""
		fa_page21_row4_player2 = ""
		fa_page21_row4_player3 = ""
		fa_page21_row4_player4 = ""

		fa_page21_row5_target = ""
		fa_page21_row5_task = nil
		fa_page21_row5_player1 = ""
		fa_page21_row5_player2 = ""
		fa_page21_row5_player3 = ""
		fa_page21_row5_player4 = ""

		fa_page21_row6_target = ""
		fa_page21_row6_task = nil
		fa_page21_row6_player1 = ""
		fa_page21_row6_player2 = ""
		fa_page21_row6_player3 = ""
		fa_page21_row6_player4 = ""

		fa_page21_row7_target = ""
		fa_page21_row7_task = nil
		fa_page21_row7_player1 = ""
		fa_page21_row7_player2 = ""
		fa_page21_row7_player3 = ""
		fa_page21_row7_player4 = ""

		fa_page21_row8_target = ""
		fa_page21_row8_task = nil
		fa_page21_row8_player1 = ""
		fa_page21_row8_player2 = ""
		fa_page21_row8_player3 = ""
		fa_page21_row8_player4 = ""

		fa_page21_row9_target = ""
		fa_page21_row9_task = nil
		fa_page21_row9_player1 = ""
		fa_page21_row9_player2 = ""
		fa_page21_row9_player3 = ""
		fa_page21_row9_player4 = ""

		-- page22 variables
		fa_page22_assignment_name = "Unused"
		fa_page22_extra_instructions = ""
		fa_page22_internal_notes = ""

		fa_page22_row1_target = ""
		fa_page22_row1_task = nil
		fa_page22_row1_player1 = ""
		fa_page22_row1_player2 = ""
		fa_page22_row1_player3 = ""
		fa_page22_row1_player4 = ""

		fa_page22_row2_target = ""
		fa_page22_row2_task = nil
		fa_page22_row2_player1 = ""
		fa_page22_row2_player2 = ""
		fa_page22_row2_player3 = ""
		fa_page22_row2_player4 = ""

		fa_page22_row3_target = ""
		fa_page22_row3_task = nil
		fa_page22_row3_player1 = ""
		fa_page22_row3_player2 = ""
		fa_page22_row3_player3 = ""
		fa_page22_row3_player4 = ""

		fa_page22_row4_target = ""
		fa_page22_row4_task = nil
		fa_page22_row4_player1 = ""
		fa_page22_row4_player2 = ""
		fa_page22_row4_player3 = ""
		fa_page22_row4_player4 = ""

		fa_page22_row5_target = ""
		fa_page22_row5_task = nil
		fa_page22_row5_player1 = ""
		fa_page22_row5_player2 = ""
		fa_page22_row5_player3 = ""
		fa_page22_row5_player4 = ""

		fa_page22_row6_target = ""
		fa_page22_row6_task = nil
		fa_page22_row6_player1 = ""
		fa_page22_row6_player2 = ""
		fa_page22_row6_player3 = ""
		fa_page22_row6_player4 = ""

		fa_page22_row7_target = ""
		fa_page22_row7_task = nil
		fa_page22_row7_player1 = ""
		fa_page22_row7_player2 = ""
		fa_page22_row7_player3 = ""
		fa_page22_row7_player4 = ""

		fa_page22_row8_target = ""
		fa_page22_row8_task = nil
		fa_page22_row8_player1 = ""
		fa_page22_row8_player2 = ""
		fa_page22_row8_player3 = ""
		fa_page22_row8_player4 = ""

		fa_page22_row9_target = ""
		fa_page22_row9_task = nil
		fa_page22_row9_player1 = ""
		fa_page22_row9_player2 = ""
		fa_page22_row9_player3 = ""
		fa_page22_row9_player4 = ""

		-- page23 variables
		fa_page23_assignment_name = "Unused"
		fa_page23_extra_instructions = ""
		fa_page23_internal_notes = ""

		fa_page23_row1_target = ""
		fa_page23_row1_task = nil
		fa_page23_row1_player1 = ""
		fa_page23_row1_player2 = ""
		fa_page23_row1_player3 = ""
		fa_page23_row1_player4 = ""

		fa_page23_row2_target = ""
		fa_page23_row2_task = nil
		fa_page23_row2_player1 = ""
		fa_page23_row2_player2 = ""
		fa_page23_row2_player3 = ""
		fa_page23_row2_player4 = ""

		fa_page23_row3_target = ""
		fa_page23_row3_task = nil
		fa_page23_row3_player1 = ""
		fa_page23_row3_player2 = ""
		fa_page23_row3_player3 = ""
		fa_page23_row3_player4 = ""

		fa_page23_row4_target = ""
		fa_page23_row4_task = nil
		fa_page23_row4_player1 = ""
		fa_page23_row4_player2 = ""
		fa_page23_row4_player3 = ""
		fa_page23_row4_player4 = ""

		fa_page23_row5_target = ""
		fa_page23_row5_task = nil
		fa_page23_row5_player1 = ""
		fa_page23_row5_player2 = ""
		fa_page23_row5_player3 = ""
		fa_page23_row5_player4 = ""

		fa_page23_row6_target = ""
		fa_page23_row6_task = nil
		fa_page23_row6_player1 = ""
		fa_page23_row6_player2 = ""
		fa_page23_row6_player3 = ""
		fa_page23_row6_player4 = ""

		fa_page23_row7_target = ""
		fa_page23_row7_task = nil
		fa_page23_row7_player1 = ""
		fa_page23_row7_player2 = ""
		fa_page23_row7_player3 = ""
		fa_page23_row7_player4 = ""

		fa_page23_row8_target = ""
		fa_page23_row8_task = nil
		fa_page23_row8_player1 = ""
		fa_page23_row8_player2 = ""
		fa_page23_row8_player3 = ""
		fa_page23_row8_player4 = ""

		fa_page23_row9_target = ""
		fa_page23_row9_task = nil
		fa_page23_row9_player1 = ""
		fa_page23_row9_player2 = ""
		fa_page23_row9_player3 = ""
		fa_page23_row9_player4 = ""

		-- page24 variables
		fa_page24_assignment_name = "Unused"
		fa_page24_extra_instructions = ""
		fa_page24_internal_notes = ""

		fa_page24_row1_target = ""
		fa_page24_row1_task = nil
		fa_page24_row1_player1 = ""
		fa_page24_row1_player2 = ""
		fa_page24_row1_player3 = ""
		fa_page24_row1_player4 = ""

		fa_page24_row2_target = ""
		fa_page24_row2_task = nil
		fa_page24_row2_player1 = ""
		fa_page24_row2_player2 = ""
		fa_page24_row2_player3 = ""
		fa_page24_row2_player4 = ""

		fa_page24_row3_target = ""
		fa_page24_row3_task = nil
		fa_page24_row3_player1 = ""
		fa_page24_row3_player2 = ""
		fa_page24_row3_player3 = ""
		fa_page24_row3_player4 = ""

		fa_page24_row4_target = ""
		fa_page24_row4_task = nil
		fa_page24_row4_player1 = ""
		fa_page24_row4_player2 = ""
		fa_page24_row4_player3 = ""
		fa_page24_row4_player4 = ""

		fa_page24_row5_target = ""
		fa_page24_row5_task = nil
		fa_page24_row5_player1 = ""
		fa_page24_row5_player2 = ""
		fa_page24_row5_player3 = ""
		fa_page24_row5_player4 = ""

		fa_page24_row6_target = ""
		fa_page24_row6_task = nil
		fa_page24_row6_player1 = ""
		fa_page24_row6_player2 = ""
		fa_page24_row6_player3 = ""
		fa_page24_row6_player4 = ""

		fa_page24_row7_target = ""
		fa_page24_row7_task = nil
		fa_page24_row7_player1 = ""
		fa_page24_row7_player2 = ""
		fa_page24_row7_player3 = ""
		fa_page24_row7_player4 = ""

		fa_page24_row8_target = ""
		fa_page24_row8_task = nil
		fa_page24_row8_player1 = ""
		fa_page24_row8_player2 = ""
		fa_page24_row8_player3 = ""
		fa_page24_row8_player4 = ""

		fa_page24_row9_target = ""
		fa_page24_row9_task = nil
		fa_page24_row9_player1 = ""
		fa_page24_row9_player2 = ""
		fa_page24_row9_player3 = ""
		fa_page24_row9_player4 = ""

		-- page25 variables
		fa_page25_assignment_name = "Unused"
		fa_page25_extra_instructions = ""
		fa_page25_internal_notes = ""

		fa_page25_row1_target = ""
		fa_page25_row1_task = nil
		fa_page25_row1_player1 = ""
		fa_page25_row1_player2 = ""
		fa_page25_row1_player3 = ""
		fa_page25_row1_player4 = ""

		fa_page25_row2_target = ""
		fa_page25_row2_task = nil
		fa_page25_row2_player1 = ""
		fa_page25_row2_player2 = ""
		fa_page25_row2_player3 = ""
		fa_page25_row2_player4 = ""

		fa_page25_row3_target = ""
		fa_page25_row3_task = nil
		fa_page25_row3_player1 = ""
		fa_page25_row3_player2 = ""
		fa_page25_row3_player3 = ""
		fa_page25_row3_player4 = ""

		fa_page25_row4_target = ""
		fa_page25_row4_task = nil
		fa_page25_row4_player1 = ""
		fa_page25_row4_player2 = ""
		fa_page25_row4_player3 = ""
		fa_page25_row4_player4 = ""

		fa_page25_row5_target = ""
		fa_page25_row5_task = nil
		fa_page25_row5_player1 = ""
		fa_page25_row5_player2 = ""
		fa_page25_row5_player3 = ""
		fa_page25_row5_player4 = ""

		fa_page25_row6_target = ""
		fa_page25_row6_task = nil
		fa_page25_row6_player1 = ""
		fa_page25_row6_player2 = ""
		fa_page25_row6_player3 = ""
		fa_page25_row6_player4 = ""

		fa_page25_row7_target = ""
		fa_page25_row7_task = nil
		fa_page25_row7_player1 = ""
		fa_page25_row7_player2 = ""
		fa_page25_row7_player3 = ""
		fa_page25_row7_player4 = ""

		fa_page25_row8_target = ""
		fa_page25_row8_task = nil
		fa_page25_row8_player1 = ""
		fa_page25_row8_player2 = ""
		fa_page25_row8_player3 = ""
		fa_page25_row8_player4 = ""

		fa_page25_row9_target = ""
		fa_page25_row9_task = nil
		fa_page25_row9_player1 = ""
		fa_page25_row9_player2 = ""
		fa_page25_row9_player3 = ""
		fa_page25_row9_player4 = ""
	end
end



-- Main configuration window options
local options = {
    name = "Forgiven_Assignments",
    handler = Forgiven_Assignments,
    type = "group",
    args = {
		
		configPage = {
			type = "group",
			name = "Home",
			order=0,
			args = {
				configHeading1 = {
					type = "description",
					name = "Comment utiliser cet addon",
					fontSize = "large",
					order = 1,
				},
				configLine1 = {
					type = "header",
					name = "",
					order = 2,
				},
				configDesc1 = {
					type = "description",
					name = "1. Sélectionnez une page dans le menu de gauche et donnez-lui un nom, par exemple. Ragnaros \ n \ n2. Utilisez les listes déroulantes pour attribuer des cibles, des tâches et des joueurs. Si vous n'êtes pas dans un groupe, la liste des joueurs sera vide jusqu'à ce que vous soyez. \ N \ n3. Une fois les affectations configurées, sélectionnez le canal de discussion auquel vous souhaitez les envoyer et cliquez sur le bouton de rapport (vous pouvez également le prévisualiser vous-même) \ n \ n4. Pour les affectations de soins, assurez-vous que les chars de votre raid reçoivent la mission de raid `` réservoir principal ''. Cela fera apparaître les tanks sous la liste déroulante cible, vous pourrez donc affecter des guérisseurs. \ N \ n5. Lors de la configuration des modèles, vous laisserez les joueurs vides, mais remplissez le reste des zones. Pour soigner, vous pouvez utiliser la cible [espace réservé] car il n'y aura pas de tanks dans la liste cible sans groupe. \ N \ n6. Il est pratique de remplir la zone de notes internes avec des rappels pour indiquer le raid avant le combat, ou comment vous souhaitez configurer les affectations.",
					fontSize = "medium",
					order = 3,
				},
				configLine3 = {
					type = "header",
					name = "",
					order = 20,
				},
				testData = {
					type = "toggle",
					name = "Activer les données du lecteur de test",
					desc = "Charge une liste de 40 faux joueurs dans l'addon à des fins de test.",
					order = 21,
					get = "GetTestData",
					set = "SetTestData",
				},
				enableLogging = {
					type = "toggle",
					name = "Activer la journalisation",
					desc = "Fournit plus de messages dans le chat sur ce que fait l'addon",
					order = 22,
					get = "GetLogging",
					set = "SetLogging",
				},

			},
		},
		
		page1 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 1,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Nom de l'affectation",
					desc = "Saisissez un nom pour cette affectation. Il apparaîtra comme la première ligne lors du rapport et changera le nom de la page dans le menu de gauche.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Instructions supplémentaires",
					desc = "Pour toute information supplémentaire que vous souhaitez fournir. Il apparaîtra comme la dernière ligne lors du rapport.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Cible",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Tache",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Joueur 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Joueur 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Joueur 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Joueur 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
					inline = true,
					args = {
						target = {
							order = 1,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Sélectionnez la cible à laquelle cette ligne s'applique",
							get = "GetTarget",
							set = "SetTarget",
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task1 = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Ce que vous voulez faire pour cette cible",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						task2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Ce que vous voulez faire pour cette cible",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player2 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 7,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 10,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page2 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 2,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page3 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 3,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page4 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 4,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page5 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 5,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page6 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 6,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page7 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 7,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page8 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 8,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page9 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 9,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page10 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 10,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page11 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 11,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page12 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 12,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page13 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 13,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page14 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 14,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page15 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 15,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page16 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 16,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page17 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 17,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page18 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 18,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page19 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 19,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page20 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 20,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page21 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 21,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page22 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 22,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page23 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 23,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page24 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 24,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
		
		page25 = {
			type = "group",
			name = function(info) return "- ".._G["fa_"..info[#info].."_assignment_name"] end,
			order = 25,
			args = {
				assignmentName = {
					order = 0.05,
					width = 1,
					type = "input",
					name = "Assignment Name",
					desc = "Enter a name for this assignment. It will appear as the first row when reporting, and change the page name in the left hand menu.",
					get = "GetAssignmentName",
					set = "SetAssignmentName",
				},
				extraInstructions = {
					order = 0.06,
					width = 4,
					type = "input",
					name = "Extra instructions",
					desc = "For any extra information you want to provide. It will appear as the last row when reporting.",
					get = "GetExtraInstructions",
					set = "SetExtraInstructions",
				},
				horizontalLine2 = {
					type = "header",
					name = "",
					order = 0.08,
				},
				targetHeading = {
					order=0.1,
					width=0.75,
					type="description",
					name=" Target",
					fontSize="medium",
				},
				taskHeading = {
					order=0.2,
					width=0.75,
					type="description",
					name=" Task",
					fontSize="medium",
				},
				player1Heading = {
					order=0.3,
					width=0.75,
					type="description",
					name=" Player 1",
					fontSize="medium",
				},
				player2Heading = {
					order=0.4,
					width=0.75,
					type="description",
					name=" Player 2",
					fontSize="medium",
				},
				player3Heading = {
					order=0.5,
					width=0.75,
					type="description",
					name=" Player 3",
					fontSize="medium",
				},
				player4Heading = {
					order=0.6,
					width=0.75,
					type="description",
					name=" Player 4",
					fontSize="medium",
				},
				row1 = {
					type = "group",
					name = "",
					order=1,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row2 = {
					type = "group",
					name = "",
					order=2,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row3 = {
					type = "group",
					name = "",
					order=3,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row4 = {
					type = "group",
					name = "",
					order=4,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row5 = {
					type = "group",
					name = "",
					order=5,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row6 = {
					type = "group",
					name = "",
					order=6,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row7 = {
					type = "group",
					name = "",
					order=7,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row8 = {
					type = "group",
					name = "",
					order=8,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				row9 = {
					type = "group",
					name = "",
					order=9,
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
							values = function(info) return fa_target_list end,
							sorting = function(info) return fa_targetSort_list end,
							style = "dropdown",
						},
						task = {
							order = 2,
							width = 0.75,
							type = "select",
							name = "",
							desc = "What you want done to this target",
							get = "GetTask",
							set = "SetTask",
							values = function(info) return fa_task_list end,
							sorting = function(info) return fa_taskSort_list end,
							style = "dropdown",
						},
						player1 = {
							order = 3,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player2 = {
							order = 4,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player3 = {
							order = 5,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						player4 = {
							order = 6,
							width = 0.75,
							type = "select",
							name = "",
							desc = "Who you want to do the assignment",
							get = "GetPlayer",
							set = "SetPlayer",
							values = function(info) return fa_displayPlayers(_G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]) end,
							style = "dropdown",
						},
						resetRow = {
							type = "execute",
							name = "Reset",
							order = 8,
							width = 0.5,
							func = function(info) return fa_resetAssignments(info[#info-1],info[#info-2],"all") end
						},
					},
				},
				horizontalLine3 = {
					order=10,
					type="header",
					name="",
				},
				reportChannel = {
					order = 11,
					type = "select",
					name = "Report to",
					desc = "Which chat channel you want to publish the assignments in",
					get = "GetChannel",
					set = "SetChannel",
					values = {
						["raid"]="Raid",
						["party"]="Party",
						["say"]="Say",
						["guild"]="Guild",
						["channel"]="Channel",
						["whisper"]="Whisper"
					},
					style = "dropdown",
				},
				channelName = {
					order = 12,
					type = "input",
					name = "Channel number/whisper name",
					desc = "If you are reporting to channel or whisper, put the name in here, eg. healerchat",
					get = "GetChannelName",
					set = "SetChannelName",
				},
				previewAssignments = {
					type = "execute",
					name = "Preview assignments",
					desc = "See what the current raid assignments will look like before posting them",
					order = 14,
					func = function(info) return fa_previewAssignments(info[#info-1]) end,
				},
				reportAssignments = {
					type = "execute",
					name = "Report assignments",
					desc = "Output the current raid assignments to the selected channel",
					order = 13,
					func = function(info) return fa_reportAssignments(info[#info-1]) end,
				},
				resetAssignments = {
					type = "execute",
					name = "Reset all assignments",
					desc = "",
					order = 15,
					func = function(info) return fa_resetAssignments("all",info[#info-1],"all") end,
				},
				internalNotes = {
					order = 16,
					width = 3.5,
					type = "input",
					multiline = true,
					name = "Internal notes (not shown anywhere)",
					desc = "If you have notes for this assignment page, add them here. They are not displayed when reporting.",
					get = "GetInternalNotes",
					set = "SetInternalNotes",
				},
			},
		},
	},
}


-- Called when the addon is loaded
function Forgiven_Assignments:OnInitialize()
	-- Register the options table
    AceConfigRegistry:RegisterOptionsTable("Forgiven_Assignments", options)
	
	-- Register chat slash commands
    self:RegisterChatCommand("fa", "ChatCommand")	
end


-- Called when the addon is enabled
function Forgiven_Assignments:OnEnable()
	self:Print("loaded. To open, type /fa")
	AceConfigDialog:SelectGroup("Forgiven_Assignments")
	self:RegisterEvent("GROUP_ROSTER_UPDATE")
end


-- Called when the addon is disabled
function Forgiven_Assignments:OnDisable()

end


-- Open the addon window when chat command entered
function Forgiven_Assignments:ChatCommand(input)
	if input == "defaults" then
		fa_setDefaults()
	else
		-- Refresh the list of players in group, and remove old ones
		if fa_config_test_data == false then
			fa_capturePlayers()
			fa_cleanupPlayers()
		end
		
		-- Open the addon window
		AceConfigDialog:SetDefaultSize("Forgiven_Assignments", 1400, 800)
		AceConfigDialog:Open("Forgiven_Assignments")
	end
end


-- Clean up any old assignments whenever the group changes
function Forgiven_Assignments:GROUP_ROSTER_UPDATE()
	if fa_config_test_data == false then
		if fa_config_logging then Forgiven_Assignments:Print("Group change detected..") end
		fa_cleanupPlayers()
	end
end


-- Get/Set variables, using info parent name in dynamic variables
-- Target
function Forgiven_Assignments:GetTarget(info)
    return _G["fa_"..info[#info-2].."_"..info[#info-1].."_target"]
end
function Forgiven_Assignments:SetTarget(info, value)
    _G["fa_"..info[#info-2].."_"..info[#info-1].."_target"] = value
end

-- Task
function Forgiven_Assignments:GetTask(info)
    return _G["fa_"..info[#info-2].."_"..info[#info-1].."_task"]
end
function Forgiven_Assignments:SetTask(info, value)
    _G["fa_"..info[#info-2].."_"..info[#info-1].."_task"] = value
	
	-- When task changes, reset any player assignments for the row
	_G["fa_"..info[#info-2].."_"..info[#info-1].."_player1"] = ""
	_G["fa_"..info[#info-2].."_"..info[#info-1].."_player2"] = ""
	_G["fa_"..info[#info-2].."_"..info[#info-1].."_player3"] = ""
	_G["fa_"..info[#info-2].."_"..info[#info-1].."_player4"] = ""
end

-- Player
function Forgiven_Assignments:GetPlayer(info)
    return _G["fa_"..info[#info-2].."_"..info[#info-1].."_"..info[#info-0]]
end
function Forgiven_Assignments:SetPlayer(info, value)
	if value == "clear_player" then
		if fa_config_logging then
			Forgiven_Assignments:Print("Removed player assignment from "..info[#info-2]..", "..info[#info-0])
		end
		_G["fa_"..info[#info-2].."_"..info[#info-1].."_"..info[#info-0]] = ""
	else
		_G["fa_"..info[#info-2].."_"..info[#info-1].."_"..info[#info-0]] = value
	end
end

-- Report Channel
function Forgiven_Assignments:GetChannel(info)
    return fa_config_report_channel
end
function Forgiven_Assignments:SetChannel(info, value)
	fa_config_report_channel = value
end

-- Channel/whisper name
function Forgiven_Assignments:GetChannelName(info)
    return fa_config_channel_name
end
function Forgiven_Assignments:SetChannelName(info, value)
	fa_config_channel_name = value
end

-- Assignment name
function Forgiven_Assignments:GetAssignmentName(info)
    return _G["fa_"..info[#info-1].."_assignment_name"]
end
function Forgiven_Assignments:SetAssignmentName(info, value)
	_G["fa_"..info[#info-1].."_assignment_name"] = value
end

-- Extra instructions
function Forgiven_Assignments:GetExtraInstructions(info)
    return _G["fa_"..info[#info-1].."_extra_instructions"]
end
function Forgiven_Assignments:SetExtraInstructions(info, value)
	_G["fa_"..info[#info-1].."_extra_instructions"] = value
end

-- Internal notes
function Forgiven_Assignments:GetInternalNotes(info)
    return _G["fa_"..info[#info-1].."_internal_notes"]
end
function Forgiven_Assignments:SetInternalNotes(info, value)
	_G["fa_"..info[#info-1].."_internal_notes"] = value
end

-- Test player data
function Forgiven_Assignments:GetTestData(info)
    return fa_config_test_data
end
function Forgiven_Assignments:SetTestData(info, value)
	fa_config_test_data = value

	if fa_config_test_data == true then
		Forgiven_Assignments:Print("enabling test player data..")
		fa_loadTestData()
	else
		Forgiven_Assignments:Print("disabling test player data..")
		fa_resetAssignments("all","all","players")
		fa_cleanupPlayers()
		fa_capturePlayers()
	end
end

-- Logging
function Forgiven_Assignments:GetLogging(info)
    return fa_config_logging
end
function Forgiven_Assignments:SetLogging(info, value)
	fa_config_logging = value
end