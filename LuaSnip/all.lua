local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep


return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  require("luasnip").snippet(
    { trig = "hi" },
    { t("Hello, world!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  require("luasnip").snippet(
    { trig = "foo" },
    { t("Another snippet.") }
  ),

      -- snippetHelp

      s(
      {trig =  "snipnorm"},
      fmta(
            [[

                  s(
                        -- Parameters
                        {trig = "<>", dresc = "<>"},
                        -- Nodes
                        {<>},
                  ),
            ]],
            {i(1), i(2), i(3)}
            )
      ),

      s(
            -- Parameters
            {trig = "snipfa", dresc = "creates a standard snippet with fmta format"},
            -- Nodes
            fmta(
            [[

                  s(
                  -- Parameters
                  {trig = "<>", dresc = "<>"},
                  -- Nodes
                  fmta(
                        [<>[
                        <>
                        ]<>],
                        -- insert nodes in angel brackets
                        {<>}
                  )
                  ),
            ]],
            {i(1),i(2),i(3),i(4),i(5),i(6)}
            )
      ),
      s(
      -- Parameters
      {trig = "a", dresc = "a"},
      -- Nodes
      fmta(
            [[
            dasd
            ]],
            -- insert nodes in angel brackets
            {}
      )
      ),

      s(
      -- Parameters
      {trig = "", dresc = ""},
      -- Nodes
      fmta(
            [[
            
            ]],
            -- insert nodes in angle brackets
            {}
      )
      ),
}
