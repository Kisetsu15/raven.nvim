local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
"8 888888888o.            .8. `8.`888b           ,8' 8 8888888888   b.             8",
"8 8888    `88.          .888. `8.`888b         ,8'  8 8888         888o.          8",
"8 8888     `88         :88888. `8.`888b       ,8'   8 8888         Y88888o.       8",
"8 8888     ,88        . `88888. `8.`888b     ,8'    8 8888         .`Y888888o.    8",
"8 8888.   ,88'       .8. `88888. `8.`888b   ,8'     8 888888888888 8o. `Y888888o. 8",
"8 888888888P'       .8`8. `88888. `8.`888b ,8'      8 8888         8`Y8o. `Y88888o8",
"8 8888`8b          .8' `8. `88888. `8.`888b8'       8 8888         8   `Y8o. `Y8888",
"8 8888 `8b.       .8'   `8. `88888. `8.`888'        8 8888         8      `Y8o. `Y8",
"8 8888   `8b.    .888888888. `88888. `8.`8'         8 8888         8         `Y8o.`",
"8 8888     `88. .8'       `8. `88888. `8.`          8 888888888888 8            `Yo",
    }

dashboard.section.buttons.val = {
    dashboard.button("n", "😁  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "🧐  Find file", ":Telescope find_files<CR>"),
    dashboard.button("r", "😎  Recent files", ":Telescope oldfiles<CR>"),
    dashboard.button("q", "👋  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = "🚀 Welcome Chief!!"

alpha.setup(dashboard.config)
