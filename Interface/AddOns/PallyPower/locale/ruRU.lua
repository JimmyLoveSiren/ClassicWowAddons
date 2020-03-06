local L = LibStub("AceLocale-3.0"):NewLocale("PallyPower", "ruRU", false, false)
if not L then return end 
L["AURA"] = "Кнопка Ауры"
L["AURA_DESC"] = "[|cffffd200Включение|r/|cffffd200Отключение|r] кнопки Ауры или выбор Ауры для отслеживания."
L["AURABTN"] = "Включить кнопку Ауры"
L["AURABTN_DESC"] = "[Включить/Отключить] кнопку Ауры"
L["AURATRACKER"] = "Отслеживание Ауры"
L["AURATRACKER_DESC"] = "Выбор Ауры для отслеживания"
L["AUTO"] = "Кнопка Автобаффа"
L["AUTO_DESC"] = "[|cffffd200Включить|r/|cffffd200Отключить|r] кнопку автобаффа или [|cffffd200Включить|r/|cffffd200Отключить|r] ожидание игроков."
L["AUTOASSIGN"] = "Автоназначить"
L["AUTOASSIGN_DESC"] = "Автоназначение все благословения в зависимости от количества доступных паладинов и доступных им благословений."
L["AUTOBTN"] = "Включить кнопку Автобаффа"
L["AUTOBTN_DESC"] = "[Включить/Отключить] кнопу Автобаффа"
L["AUTOKEY1"] = "Клавиша обычного благословения"
L["AUTOKEY1_DESC"] = "Назначение клавиши для автоматического баффа обычными благословениями."
L["AUTOKEY2"] = "Клавиша Великого благословения"
L["AUTOKEY2_DESC"] = "Назначение клавиши для автоматического баффа Великими благословениями."
L["BRPT"] = "Оповестить о баффах"
L["BRPT_DESC"] = "Оповестить о всех назначенных Благословениях в канал Рейда или Группы."
L["BSC"] = "Масштаб кнопок баффа"
L["BSC_DESC"] = "Установить масштаб панели кнопок баффа"
L["BUTTONS"] = "Кнопки"
L["BUTTONS_DESC"] = "Изменение настроек кнопки"
L["CLASSBTN"] = "Включить кнопки Классов"
L["CLASSBTN_DESC"] = "Если отключено, то также отключаются и кнопки игрока, и вы сможете использовать только кнопку автобаффа."
L["CPBTNS"] = "Кнопки Класса и Игрока"
L["CPBTNS_DESC"] = "[|cffffd200Включить|r/|cffffd200Отключить|r] кнопки Игрока или Класса."
L["DISPEDGES"] = "Рамки"
L["DISPEDGES_DESC"] = "Смена рамок кнопки"
L["DRAG"] = "Кнопка перетаскивания"
L["DRAG_DESC"] = "[|cffffd200Включить|r/|cffffd200Откоючить|r] кнопку перетаскивания."
L["DRAGHANDLE"] = [=[|cffffffff[Щелкните левой кнопкой мыши]|r |cffff0000для блокировки|r/|cff00ff00разблокировки|r PallyPower 
|cffffffff[Удерживайте левую кнопку мыши]|r чтобы передвинуть PallyPower 
|cffffffff[Правая кнопка мыши]|r открыть окно назначения благословений 
|cffffffff[Shift-правая кнопка мыши]|r открыть настройки]=]
L["DRAGHANDLE_ENABLED"] = "Включить кнопку Перетаскивания"
L["DRAGHANDLE_ENABLED_DESC"] = "[Включить/Отключить] кнопку Перетаскивания"
L["FREEASSIGN"] = "Вольное назначение"
L["FREEASSIGN_DESC"] = "Разрешает другим изменить ваши благословения, не будучи лидером группы (рейда) / помощником в рейде."
L["Fully Buffed"] = "Применены все Баффы"
L["HorLeftDown"] = "Горизонтально слева | Внизу"
L["HorLeftUp"] = "Горизонтально слева | Вверху"
L["HorRightDown"] = "Горизонтально справа | Внизу"
L["HorRightUp"] = "Горизонтально справа | Сверху"
L["LAYOUT"] = "Расположение кнопок баффов  | кнопок игрока"
L["LAYOUT_DESC"] = "Вертикально [Слева/Справа] Горизонтально [Вверху/Внизу]"
--[[Translation missing --]]
L["MAINASSISTANT"] = "Auto-Buff Main Assistant"
--[[Translation missing --]]
L["MAINASSISTANT_DESC"] = "If you enable this option PallyPower will automatically over-write a Greater Blessing with a Normal Blessing on players marked with the |cffffd200Main Assistant|r role in the Blizzard Raid Panel. This is useful to avoid blessing the |cffffd200Main Assistant|r role with a Greater Blessing of Salvation."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFDP"] = "Override Druids / Paladins..."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFW"] = "Override Warriors..."
--[[Translation missing --]]
L["MAINASSISTANTGBUFFW_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Warriors."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFDP"] = "...with Normal..."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFW"] = "...with Normal..."
--[[Translation missing --]]
L["MAINASSISTANTNBUFFW_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Warriors."
--[[Translation missing --]]
L["MAINROLES"] = "Main Tank / Main Assist Roles"
--[[Translation missing --]]
L["MAINROLES_DESC"] = [=[These options can be used to automatically assign alternate Normal Blessings for any Greater Blessing assigned to Warriors, Druids or Paladins |cffff0000only|r. 

Normally the Main Tank and the Main Assist roles have been used to identify Main Tanks and Off-Tanks (Main Assist) however, some guilds assign the Main Tank role to both Main Tanks and Off-Tanks and assign the Main Assist role to Healers. 

By having a separate setting for both roles it will allow Paladin Class Leaders or Raid Leaders to remove, as an example, Greater Blessing of Salvation from Tanking classes or if Druid or Paladin Healers are marked with the Main Assist role they could be setup to get Normal Blessing of Wisdom vs Greater Blessing of Might which would allow assigning Greater Blessing of Might for DPS spec'd Druids and Paladins and Normal Blessing of Wisdom to Healing spec'd Druids and Paladins. 

|cffffff00Note: When there are 5 or more Paladins in a Raid (enough to assign all the Greater Blessings), these settings will automatically be disabled. Tanking Classes will have to manually switch off Blessing of Salvation.|r
]=]
L["MAINTANK"] = "Автобафф Главного танка"
--[[Translation missing --]]
L["MAINTANK_DESC"] = "If you enable this option PallyPower will automatically over-write a Greater Blessing with a Normal Blessing on players marked with the |cffffd200Main Tank|r role in the Blizzard Raid Panel. This is useful to avoid blessing the |cffffd200Main Tank|r role with a Greater Blessing of Salvation."
--[[Translation missing --]]
L["MAINTANKGBUFFDP"] = "Override Druids / Paladins..."
--[[Translation missing --]]
L["MAINTANKGBUFFDP_DESC"] = "Select the Greater Blessing assignment you wish to over-write on Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINTANKGBUFFW"] = "Override Warriors..."
L["MAINTANKGBUFFW_DESC"] = "Выберите великое благословение, которое хотите перебафать на главного танка: Воина."
--[[Translation missing --]]
L["MAINTANKNBUFFDP"] = "...with Normal..."
--[[Translation missing --]]
L["MAINTANKNBUFFDP_DESC"] = "Select the Normal Blessing you wish to use to over-write the Main Tank: Druids / Paladins."
--[[Translation missing --]]
L["MAINTANKNBUFFW"] = "...with Normal..."
L["MAINTANKNBUFFW_DESC"] = "Выберите обычное благословение, которое хотите перебафать на главного танка: Воина."
L["None"] = "Нет"
L["None Buffed"] = "Нет баффов"
L["OPTIONS"] = "Настойки"
L["OPTIONS_DESC"] = "Открыть окно с дополнительными настройками PallyPower."
L["Partially Buffed"] = "Неполные баффы"
L["PLAYERBTNS"] = "Включить кнопки Игрока"
L["PLAYERBTNS_DESC"] = "Если отключена, вы больше не увидите всплывающие кнопки, показывающие отдельных игроков, и вы не сможете повторно применить Обычные благословения в бою."
L["PP_CLEAR"] = "Сброс"
L["PP_CLEAR_DESC"] = "Сбрасывает все назначенные благословения для себя, паладинов в группе и рейде."
L["PP_COLOR"] = "Изменить цвет статуса кнопок баффов"
L["PP_LOOKS"] = "Изменить внешний вид PallyPower"
L["PP_NAME"] = "PallyPower"
L["PP_RAS1"] = "---  Назначено паладинов ---"
L["PP_RAS2"] = "--- Конец назначений ---"
L["PP_RAS3"] = "ВНИМАНИЕ: В рейде более 5 паладинов."
L["PP_RAS4"] = "Танки, вручную снимите Благословение спасения!"
L["PP_REFRESH"] = "Обновить"
L["PP_REFRESH_DESC"] = "Обновить все назначенные благословения, таланты, Знак королей для себя, паладинов в группе и рейде."
L["PP_RESET"] = "На случай, если вы все испортили"
L["PP_SHOW"] = "Когда показывать PallyPower"
L["RAID"] = "Рейд"
L["RAID_DESC"] = "Настройки только для рейда"
L["RESET"] = "Сброс рамок"
L["RESET_DESC"] = "Вернуть все рамки PallyPower в центр"
L["RESIZEGRIP"] = "Левый клик и удерживание, для изменения размера. Правый клик сбрасывает размер до изначального."
L["RFM"] = "Включить Праведное неистовство"
L["RFM_DESC"] = "[Включить/Отключить] Праведное неистовство"
L["SEAL"] = "Кнопка Печати"
L["SEAL_DESC"] = "[|cffffd200Включить|r/|cffffd200Отключить|r] кнопку Печать, [|cffffd200Включить|r/|cffffd200Отключить|r] Праведное неистовство или выбрать Печать для отслеживания."
L["SEALBTN"] = "Включить кнопку Печати"
L["SEALBTN_DESC"] = "[Включить/Отключить] кнопку Печатей"
L["SEALTRACKER"] = "Отслеживание Печати"
L["SEALTRACKER_DESC"] = "Выбор Печати для отслеживания"
L["SETTINGS"] = "Настройки"
L["SETTINGS_DESC"] = "Изменение общих настроек"
L["SHOWGLOBAL"] = "Показывать PallyPower"
L["SHOWGLOBAL_DESC"] = "[Показать/Скрыть] PallyPower"
L["SHOWPARTY"] = "Показывать в группе"
L["SHOWPARTY_DESC"] = "[Показывать/Скрыть] PallyPower в группе"
L["SHOWPETS"] = "Включить Умные питомцы"
L["SHOWPETS_DESC"] = "Если включено, питомцы Охотников будут отнесены к классу Воинов, Бесы к классу Магов, а Демон Бездны, Охотник Скверны и Суккуб к классу Паладинов."
L["SHOWSOLO"] = "Показывать при игре в одиночку"
L["SHOWSOLO_DESC"] = "[Показать/скрыть] PallyPower при игре в одиночку"
L["SHOWTIPS"] = "Показывать подсказки"
L["SHOWTIPS_DESC"] = "[Показать/Скрыть] подсказки PallyPower"
L["SKIN"] = "Текстуры фона"
L["SKIN_DESC"] = "Изменить текстуру фона кнопки"
L["SMARTBUFF"] = "Включить Умные баффы"
L["SMARTBUFF_DESC"] = "Если включено, запрещает назначать Благословение мудрости для Воинов или Разбойников и Благословение могущества для Магов, Чернокнижников и Охотников."
L["VerDownLeft"] = "Вертикально внизу | Слева"
L["VerDownRight"] = "Вертикально внизу | Справа"
L["VerUpLeft"] = "Вертикально вверху | Слева"
L["VerUpRight"] = "Вертикально вверху | Справа"
L["WAIT"] = "Включить Ожидать игроков"
L["WAIT_DESC"] = "Если включено, то кнопка Авто баффа не будет автоматически бафать класс Великим  благословением или игрока обычным благословением, если они мертвы, не в сети или не находятся в пределах досягаемости."
 
