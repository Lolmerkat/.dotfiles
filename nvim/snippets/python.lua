local ls = require("luasnip")
local t = ls.text_node
local s = ls.snippet

return {
    s("main", {
        t({"if __name__ == '__main__':",
            "\t..."
        }),
    })
}
