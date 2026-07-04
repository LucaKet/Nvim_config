--to recognize math environment
local function math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end 
----------------------------------------------------------------

return vim.list_extend(
--Snippet per inizio documento--------
  require("config.luasnip.L_latex.Document_starter"),
    {
  --greek letters
    s(
      {trig = ";a", snippetType = "autosnippet", wordTrig = false},
      {t("\\alpha"),}
    ),

    s(
      {trig = ";r", snippetType = "autosnippet", wordTrig = false},
      {t("\\rho"),}
    ),

    s(
      {trig = ";s", snippetType = "autosnippet", wordTrig = false},
      {t("\\sigma"),}
    ),

    s(
      {trig = ";t", snippetType = "autosnippet", wordTrig = false},
      {t("\\theta"),}
    ),

    s(
      {trig = ";b", snippetType = "autosnippet", wordTrig = false},
      {t("\\beta"),}
    ),

    s(
      {trig = ";g", snippetType = "autosnippet", wordTrig = false},
      {t("\\gamma"),}
    ),

    s(
      {trig = ";G", snippetType = "autosnippet", wordTrig = false},
      {t("\\Gamma"),}
    ),

    s(
      {trig = ";d", snippetType = "autosnippet", wordTrig = false},
      {t("\\delta"),}
    ),

    s(
      {trig = ";e", snippetType = "autosnippet", wordTrig = false},
      {t("\\varepsilon"),}
    ),

    s(
      {trig = ";p", snippetType = "autosnippet", wordTrig = false},
      {t("\\phi"),}
    ),

  --environments
    s({trig="fig", snippetType="snippet", dscr="A basic figure environment"},
      fmta(
          [[
          \begin{figure}
          \centering
          \includegraphics[width=0.9\linewidth]{<>}
          \caption{
              \textbf{<>}
              <>
              }
          \label{fig:<>}
          \end{figure}

          ]],
          { i(1,"filename"),
            i(2, "captionBold"),
            i(3, "captionText"),
            i(4,"figureLabel"),}
      )
    ),

    s({trig="env", snippetType="snippet", dscr="Begin and end an arbitrary environment"},
      fmta(
          [[
          \begin{<>}
              <>
          \end{<>}
          ]],
          {i(1),i(2),rep(1),}
      )
    ),

  --postfixes for vectors, hats, etc. The match pattern is '\\' plus the default (so that hats get put on greek letters,e.g.)

    postfix({trig="hat", match_pattern = [[[\\%w%.%_%-%"%']+$]], snippetType="autosnippet",dscr="postfix hat when in math mode"},
      {l("\\hat{" .. l.POSTFIX_MATCH .. "}")}, 
      { condition=math }
    ),
    postfix({trig="vec", match_pattern = [[[\\%w%.%_%-%"%']+$]] ,snippetType="autosnippet",dscr="postfix vec when in math mode"},
      {l("\\vec{" .. l.POSTFIX_MATCH .. "}")}, 
      { condition=math }
    ),

  --integrali definiti
    s({trig = "\\defint", snippetType = "autosnippet", wordTrig = false},
    fmta(
        [[
          \int_{<>}^{<>}
        ]],
        {i(1, "x"),i(2, "y"),}
      )
    ),

  --frazioni
    s({trig = "\\frac", snippetType = "autosnippet", wordTrig = false},
    fmta(
      [[
      \frac{<>}{<>}
      ]],
      {i(1, "x"), i(2, "y"),}
      )
    ),
  }
)
