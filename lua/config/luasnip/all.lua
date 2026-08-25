local snipetts = {}

vim.list_extend(snipetts, {
      s(
        {trig = ";ref", snippetType = "autosnippet", wordTrig = false},
        fmta(
        [[
        doi: <>
        reference path: ~/Desktop/00main/<>
        @<>{
          author = {<>},
          title = {<>},
          year = {<>},
          journal= {<>},
        }
        ]],
        {i(1), i(2), i(3), i(4), i(5), i(6), i(7)}
        )
      ),

      s(
        {trig = ";line", snippetType = "autosnippet", wordTrig = false},
        fmta(
          [[
          ----------------------------------------------------
          ]],
        {}
            )
        ),
  }
)

return snipetts 
