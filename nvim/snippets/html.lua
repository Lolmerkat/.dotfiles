local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    s("!doctype", {
        t({
            "<!DOCTYPE html>",
            "<html>",
            "<head>",
            "\t<title>",
        }),
        i(1, "title"),
        t({
            "</title>",
            "</head>",
            "<body>",
            "",
            "</body>",
            "</html>",
        }),
    })
}
