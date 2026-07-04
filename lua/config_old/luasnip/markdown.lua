local snipetts = {}

vim.list_extend(snipetts, {
    s(
      {trig = ";eq", snippetType = "autosnippet", wordTrig = false},
      fmta(
      [[
      <>
      $<>$
      <>
      ]],
      {i(1), i(2), i(3)}
      ) 
      ),

      s(
        {trig = ";ref", snippetType = "autosnippet", wordTrig = false},
        fmta(
        [[
        reference path: ~/Desktop/00main/00PHD/01lit/<>/<>
        @<>{
          <>,
          author = {<>},
          title = {<>},
          year = {<>},
          journal= {<>},
        }
        ]],
        {i(1), i(2), i(3), i(4), i(5), i(6), i(7), i(8)}
        )
      ),

      s(
        {trig = ";l", snippetType = "autosnippet", wordTrig = false},
        fmta(
          [[
          --------------------
          ]],
        {}
            )
        ),
  }
)

return snipetts 
