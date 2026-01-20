local snipetts = {}

vim.list_extend(snipetts, {
    s(
      {trig = "\\START", snippetType = "snippet", wordTrig = false},
      fmta(
      [[
      import numpy as np 
      import matplotlib.pyplot as plt 
      import math
      import kwant
      ]],
      {}
      )
      ),
  }
)

return snipetts 
