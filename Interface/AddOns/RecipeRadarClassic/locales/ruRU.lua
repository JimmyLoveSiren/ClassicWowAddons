local L = LibStub("AceLocale-3.0"):NewLocale("RecipeRadarClassic", "ruRU", false)
if not L then return end

   -- the name of the addon!
L["Recipe Radar Classic"] = "Радар Рецептов"

L["Left-click to open RecipeRadar."] = "Левый клик - открыть RecipeRadar."
L["Right-click and drag to move this button."] = "Правый клик и тащить - переместить"

   -- these show up in the game's Key Bindings screen
L["Recipe Radar Bindings"] = "Настройки клавиш Радара Рецептов"
L["Toggle Recipe Radar"] = "Включить Радар Рецептов"

   -- options button and corresponding options frame
L["Options"] = "Настройки"
L["Auto-map Contributive Vendors"] = "Автоматически показывать продавцов с доступными рецептами на мини-карте"
L["Auto-select Current Region"] = "Автоматически выбирать текущую территорию"
L["Check Availability for Alts"] = "Проверять доступность для альтов"
L["Minimap Button Position"] = "Позиция кнопки у мини-карты"
L["Show Minimap Button"] = "Показывать кнопку у мини-карты"

   -- format strings used in the map tooltips
L["1 recipe"] = "1 рецепт"
L["%d learnable"] = "%d можно изучить"
L["%d recipes"] = "Рецептов: %d"

   -- this appears when the recipe is not in your local database
L["Uncached Recipe"] = "Неизвестный рецепт"

   -- uncached recipe tooltip - see RecipeRadar_Availability_CreateTooltip()
L["You may mouse over the"] = "Вы можете провести мышью через иконку"
L["icon to lookup this recipe."] = "чтобы узнать этот рецепт."
L["Warning: if your server has"] = "Внимание: если ваш сервер"
L["not yet seen this item, you"] = "еще не имеет этого предмета, вы"
L["will be disconnected!"] = "будете отсоеденены!"

   -- some regions don't have any recipes for sale
L["No recipes for sale in this region."] = "В этой территории нет рецептов"

   -- radio button (and tooltip) that indicates a mapped vendor
L["Locate Vendor on Map"] = "Показывать продавцов на карте"
L["Shift-click a vendor to add or remove her location on the world map."] = "Shift-клик чтобы добавить или убрать местонахождение продавца на карте мира"

   -- strings in the faction filtering dropdown; we don't need 'Horde' or 'Alliance' because Blizzard provides them for us
L["Factions"] = "Фракции"
L["Neutral"] = "Нейтрально"

   -- profession filtering dropdown - these strings must match those returned by GetTradeSkillLine() and GetCraftDisplaySkillLine()
L["Professions"] = "Профессии"
L["Alchemy"] = "Алхимия"
L["Blacksmithing"] = "Кузнечное дело"
L["Cooking"] = "Кулинария"
L["Enchanting"] = "Наложение чар"
L["Engineering"] = "Инженерное дело"
L["First Aid"] = "Первая помощь"
L["Fishing"] = "Рыбная ловля"
L["Herbalism"] = "Травничество"
L["Leatherworking"] = "Кожевничество"
L["Mining"] = "Горное Дело"
L["Poisons"] = "Яды"
L["Skinning"] = "Снятие шкур"
L["Tailoring"] = "Портняжное дело"

   -- strings in the availability filtering dropdown
L["Availability"] = "Доступно"
L["Already Known (Alts)"] = "Уже известно (альт)"
L["Already Known (Player)"] = "Уже известно (игрок)"
L["Available Now (Alts)"] = "Доступно (альт)"
L["Available Now (Player)"] = "Доступно (игрок)"
L["Future Prospect (Alts)"] = "Будет доступно (альт)"
L["Future Prospect (Player)"] = "Будет доступно (игрок)"
L["Inapplicable"] = "Неподходящий"

   -- headings for the availability tooltip
L["Available For:"] = "Доступно для:"
L["Already Known By:"] = "Уже известно:"
L["Future Prospect For:"] = "Будет доступно для:"

   -- format string for rank indicator for future prospects; that is, it tells you how soon you can learn the recipe - eg. "163 of 175"
L["%d of %d"] = "%d из %d"

   -- special notes for vendor requirements follow vendor names (eg. "Seasonal Vendor")
L["%s Vendor"] = "%s продавец"
L["Intermittent"] = "Перемещяющийся"
L["Quest"] = "C заданий"
L["Roving"] = "Бродячий"
L["Seasonal"] = "Сезонный"

   -- other recipe requirements
L["Rogue Only"] = "Только Разбойник"
L["%s Only"] = "Только %s"
L["Rogue"] = "Разбойник"
L["Special"] = "Особенное"

   -- menu item in the right-click context menu for mapped vendor buttons
L["Unmap Vendor"] = "Убрать продовца с карты"
L["Collapse"] = "Свернуть"
L["Collapse All"] = "Свернуть все"
L["Expand"] = "Раскрыть"
L["Expand All"] = "Раскрыть все"
L["Map Vendor"] = "Показать продовца на карте"

   -- trade skill specialties
L["Gnomish Engineer"] = "Гномский механик"
L["Armorsmith"] = "Бронник"
L["Dragonscale Leatherworking"] = "Кожевничество: чешуя дракона"
L["Elemental Leatherworking"] = "Кожевничество: сила стихий"
L["Goblin Engineer"] = "Гоблинский механик"
L["Master Axesmith"] = "Мастер школы топора"
L["Master Hammersmith"] = "Мастер школы молота"
L["Master Swordsmith"] = "Мастер ковки клинков"
L["Tribal Leatherworking"] = "Кожевничество: традиции предков"
L["Weaponsmith"] = "Оружейник"

   -- continent names for alternate region selection
L["Kalimdor"] = "Калимдор"
L["Eastern Kingdoms"] = "Восточные королевства"
L["Instances"] = "Подземелья"

   -- instance names for selection
L["Gnomeregan"] = "Гномреган"
L["Wailing Caverns"] = "Пещеры Стенаний"
L["Blackrock Depths"] = "Глубины Черной горы"
L["Dire Maul"] = "Забытый город"
L["Naxxramas"] = "Наксрамас"

   -- some vendor names may need translating
L["Abigail Shiel"] = "Эбигейл Шиль"
L["Aendel Windspear"] = "Эндель Копье Ветра"
L["Alchemist Pestlezugg"] = "Алхимик Пестычинс"
L["Alexandra Bolero"] = "Александра Болеро"
L["Algernon"] = "Алжернон"
L["Amy Davenport"] = "Ами Девенпорт"
L["Andrew Hilbert"] = "Эндрю Гилберт"
L["Androd Fadran"] = "Андрод Фадран"
L["Argent Quartermaster Hasana"] = "Интендант Хасна из ордена Серебряного Рассвета"
L["Argent Quartermaster Lightspark"] = "Интендант Искромет"
L["Balai Lok'Wein"] = "Бала Лок'Вен"
L["Bale"] = "Тюкн"
L["Banalash"] = "Баналаш"
L["Blimo Gadgetspring"] = "Блимо Прибамбас"
L["Blixrez Goodstitch"] = "Бликрез Ладноскрой"
L["Blizrik Buckshot"] = "Близрик Шрапнельс"
L["Bliztik"] = "Близтик"
L["Bombus Finespindle"] = "Бомбус Остроигл"
L["Borya"] = "Боря"
L["Brienna Starglow"] = "Бриенна Мерцание Звезд"
L["Bro'kin"] = "Бро'кин"
L["Bronk"] = "Бронк"
L["Catherine Leland"] = "Катрин Лиланд"
L["Christoph Jeffcoat"] = "Кристоф Френч"
L["Clyde Ranthal"] = "Клайд Рантал"
L["Constance Brisboise"] = "Констанция Брибуа"
L["Corporal Bluth"] = "Капрал Блуф"
L["Cowardly Crosby"] = "Трусишка Кросби"
L["Crazk Sparks"] = "Кразк Искрец"
L["Dalria"] = "Дальрия"
L["Daniel Bartlett"] = "Даниэль Бартлетт"
L["Danielle Zipstitch"] = "Даниэлла Рваношов"
L["Darian Singh"] = "Дариан Сингх"
L["Darnall"] = "Дарналл"
L["Defias Profiteer"] = "Спекулянт из Братства Справедливости"
L["Deneb Walker"] = "Денеб Уокер"
L["Derak Nightfall"] = "Дерек Приход Тьмы"
L["Dirge Quikcleave"] = "Могиль Быстроруб"
L["Drac Roughcut"] = "Драк Грубиян"
L["Drake Lindgren"] = "Дрейк Линдгрен"
L["Drovnar Strongbrew"] = "Дровнар Густовар"
L["Elynna"] = "Элинна"
L["Emrul Riknussun"] = "Эмруль Рикнуссен"
L["Erika Tate"] = "Эрика Тейт"
L["Evie Whirlbrew"] = "Иви Бурноварка"
L["Fradd Swiftgear"] = "Фрадд Бынструмент"
L["Fyldan"] = "Филдан"
L["Gagsprocket"] = "Заглушестер"
L["Gearcutter Cogspinner"] = "Зуборез Шестеренок"
L["George Candarte"] = "Джорлж Кандарте"
L["Gharash"] = "Гхарраш"
L["Ghok'kah"] = "Гхок'ка"
L["Gigget Zipcoil"] = "Гиджет Свистопулька"
L["Gikkix"] = "Гиккикс"
L["Gina MacGregor"] = "Джина Макгрегор"
L["Gloria Femmel"] = "Глория Даммель"
L["Glyx Brewright"] = "Гликс Пивоправ"
L["Gnaz Blunderflame"] = "Гназ Огнепых"
L["Gretta Ganter"] = "Гретта Гантер"
L["Grimtak"] = "Гримтак"
L["Hagrus"] = "Хагрус"
L["Hammon Karwn"] = "Хаммон Карун"
L["Harggan"] = "Харгган"
L["Harklan Moongrove"] = "Харклан Лунная Роща"
L["Harlown Darkweave"] = "Харлон Темный Узор"
L["Harn Longcast"] = "Харн Далекий Заброс"
L["Heldan Galesong"] = "Хельдан Рокот Прибоя"
L["Helenia Olden"] = "Еления Ольден"
L["Himmik"] = "Химмик"
L["Hula'mahi"] = "Хула'махи"
L["Jabbey"] = "Джабби"
L["Jandia"] = "Джандия"
L["Janet Hommers"] = "Джанет Хоммерс"
L["Jangdor Swiftstrider"] = "Джангор Быстрый Странник"
L["Jannos Ironwill"] = "Джаннос Неуступ"
L["Jaquilina Dramet"] = "Жаклина Драмет"
L["Jase Farlane"] = "Джез Фарлен"
L["Jazzrik"] = "Джаззрик"
L["Jeeda"] = "Джиида"
L["Jennabink Powerseam"] = "Дженнабик Мелкостежка"
L["Jessara Cordell"] = "Джессара Корделл"
L["Jinky Twizzlefixxit"] = "Джинки Дзыньбламбум"
L["Joseph Moore"] = "Джозеф Мур"
L["Jubie Gadgetspring"] = "Джуби Прибамбас"
L["Jun'ha"] = "Джун'ха"
L["Jutak"] = "Ютак"
L["Kaita Deepforge"] = "Кайта Подземная Кузня"
L["Kalldan Felmoon"] = "Калидан Лунный Серп"
L["Kania"] = "Кания"
L["Keena"] = "Кеена"
L["Kelsey Yance"] = "Келси Янс"
L["Kendor Kabonka"] = "Кендор Кабонка"
L["Khara Deepwater"] = "Хара Рыбовод"
L["Khole Jinglepocket"] = "Деор Деньгозвон"
L["Kiknikle"] = "Пниподзад"
L["Killian Sanatha"] = "Киллиан Саната"
L["Kilxx"] = "Кликс"
L["Kireena"] = "Киреена"
L["Kithas"] = "Китхас"
L["Knaz Blunderflame"] = "Наз Огнепых"
L["Kor'geld"] = "Кор'гельд"
L["Kriggon Talsone"] = "Криггон Талсон"
L["Krinkle Goodsteel"] = "Кринкель Сталлер"
L["Kulwia"] = "Кульвия"
L["Kzixx"] = "Кзикс"
L["Laird"] = "Лайрд"
L["Lardan"] = "Лардан"
L["Leo Sarn"] = "Лео Сарн"
L["Leonard Porter"] = "Леонард Портер"
L["Lilly"] = "Лилли"
L["Lindea Rabonne"] = "Линди Рабонн"
L["Lizbeth Cromwell"] = "Лизбет Кромвель"
L["Logannas"] = "Логаннас"
L["Lokhtos Darkbargainer"] = "Локтос Зловещий Торговец"
L["Lorelae Wintersong"] = "Лорелея Песнь Зимы"
L["Magnus Frostwake"] = "Магнус Хладоступ"
L["Mahu"] = "Маху"
L["Mallen Swain"] = "Маллен Свейн"
L["Malygen"] = "Малиген"
L["Maria Lumere"] = "Мария Лумере"
L["Martine Tramblay"] = "Мартин Трамбле"
L["Masat T'andr"] = "Масат Т'андр"
L["Master Craftsman Omarion"] = "Мастер-ремесленник Омарион"
L["Mavralyn"] = "Мавралинн"
L["Mazk Snipeshot"] = "Мазк Карабинс"
L["Meilosh"] = "Мелиош"
L["Micha Yance"] = "Мика Янс"
L["Millie Gregorian"] = "Милли Грегориан"
L["Mishta"] = "Мишта"
L["Montarr"] = "Монтарр"
L["Muuran"] = "Мууран"
L["Mythrin'dir"] = "Митрин'дир"
L["Naal Mistrunner"] = "Наал Вестник Туманов"
L["Namdo Bizzfizzle"] = "Намдо Вклвыкл"
L["Nandar Branson"] = "Нандар Брансон"
L["Nardstrum Copperpinch"] = "Арман Меднокноп"
L["Narj Deepslice"] = "Нардж Ломтерез"
L["Narkk"] = "Наркк"
L["Nata Dawnstrider"] = "Ната Рассветная Странница"
L["Nergal"] = "Нергал"
L["Nerrist"] = "Неррист"
L["Nessa Shadowsong"] = "Несса Песня Теней"
L["Nina Lightbrew"] = "Ниней Легковар"
L["Nioma"] = "Ниома"
L["Nyoma"] = "Ньома"
L["Ogg'marr"] = "Огг'марр"
L["Old Man Heming"] = "Старик Хеминг"
L["Otho Moji'ko"] = "Отхо Можи'ко"
L["Outfitter Eric"] = "Галантерейщик Эрик"
L["Penney Copperpinch"] = "Ликоста Меднокноп"
L["Plugger Spazzring"] = "Штоппор Наливалс"
L["Pratt McGrubben"] = "Пратт Макгруббен"
L["Qia"] = "Кийя"
L["Quartermaster Miranda Breechlock"] = "Интендант Миранда Бричлок"
L["Ranik"] = "Раник"
L["Rann Flamespinner"] = "Ранн Пламепряд"
L["Rartar"] = "Рартар"
L["Rikqiz"] = "Риккиз"
L["Rin'wosho the Trader"] = "Рин'вошо Торговец"
L["Rizz Loosebolt"] = "Ризз Болтень"
L["Ronald Burch"] = "Рональд Берч"
L["Ruppo Zipcoil"] = "Руппо Свистопулькин"
L["Saenorion"] = "Санарион"
L["Seersa Copperpinch"] = "Лигерфа Меднокноп"
L["Sewa Mistrunner"] = "Сива Вестница Туманов"
L["Shandrina"] = "Шандрина"
L["Shankys"] = "Шанкис"
L["Sheendra Tallgrass"] = "Шиендра Высокая Трава"
L["Shen'dralar Provisioner"] = "Шен'драларский поставщик"
L["Sheri Zipstitch"] = "Шери Рваношов"
L["Smudge Thunderwood"] = "Клякс Громодрев"
L["Soolie Berryfizz"] = "Сули Гонобобельзз"
L["Sovik"] = "Совик"
L["Stuart Fleming"] = "Стюарт Флеминг"
L["Sumi"] = "Суми"
L["Super-Seller 680"] = "Робо-торговец 680"
L["Tamar"] = "Тамар"
L["Tansy Puddlefizz"] = "Танси Грязебульк"
L["Tarban Hearthgrain"] = "Тарбан Домашний Очаг"
L["Tari'qa"] = "Тарик'ка"
L["Thaddeus Webb"] = "Таддеус Уэбб"
L["Tharynn Bouden"] = "Таринн Боуден"
L["Tilli Thistlefuzz"] = "Тилли Чертополуш"
L["Truk Wildbeard"] = "Трук Косматая Борода"
L["Tunkk"] = "Тункк"
L["Ulthaan"] = "Ультаан"
L["Ulthir"] = "Ультир"
L["Uthok"] = "Утхок"
L["Vaean"] = "Ваеан"
L["Valdaron"] = "Вальдарон"
L["Vargus"] = "Варгус"
L["Veenix"] = "Виеникс"
L["Vendor-Tron 1000"] = "Торготрон 1000"
L["Vharr"] = "Вхарр"
L["Vivianna"] = "Вивианна"
L["Vizzklick"] = "Визглик"
L["Wenna Silkbeard"] = "Венна Шелкобород"
L["Werg Thickblade"] = "Верг Крепкий Клинок"
L["Wik'Tar"] = "Вик'Тар"
L["Worb Strongstitch"] = "Ворб Крепкий Шов"
L["Wrahk"] = "Ракх"
L["Wulan"] = "Вулан"
L["Wulmort Jinglepocket"] = "Карден Деньгозвон"
L["Wunna Darkmane"] = "Вунна Темная Грива"
L["Xandar Goodbeard"] = "Ксандар Добробород"
L["Xen'to"] = "Ксен'то"
L["Xizk Goodstitch"] = "Зиск Ладноскрой"
L["Xizzer Fizzbolt"] = "Ксиззер Шумоболт"
L["Yonada"] = "Йонада"
L["Yuka Screwspigot"] = "Юка Крутипроб"
L["Zan Shivsproket"] = "Зан Кругореззик"
L["Zannok Hidepiercer"] = "Заннок Проткни-Шкуру"
L["Zansoa"] = "Зансоа"
L["Zarena Cromwind"] = "Зарена Кромвинд"
L["Zargh"] = "Заргх"
L["Zixil"] = "Зиксиль"
L["Zorbin Fandazzle"] = "Зорбин Дребезгун"