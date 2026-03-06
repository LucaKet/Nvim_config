local snipetts = {}

vim.list_extend(snipetts, {
    s(
      {trig = "\\START", snippetType = "snippet", wordTrig = false},
      fmta(
      [[
      import numpy as np 
      import matplotlib.pyplot as plt 
      plt.ion()
      import kwant

      <>


      def main():
          return 0

      if __name__ == '__main__':
          main()
      ]],
      {i(1)}
      )
      ),
  }
)

return snipetts 
