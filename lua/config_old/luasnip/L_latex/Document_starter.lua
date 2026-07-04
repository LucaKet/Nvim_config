local ls = require("luasnip")

local s  = ls.snippet
local sn = ls.snippet_node
local i  = ls.insert_node
local c  = ls.choice_node
local t  = ls.text_node

local fmta = require("luasnip.extras.fmt").fmta

return{
  s({trig="\\START", snippetType="snippet", desc="formattazione iniziale documenti latex", wordTrig=false},
    fmta(
      [[
      <>
      ]],
      {
      c(1,{
            sn(nil,fmta([[
              \documentclass{article}
              
              %packages
              \usepackage{geometry}
              \usepackage{float}
              \usepackage{braket}
              \usepackage{graphicx}
              \usepackage[english]{babel}
              \usepackage[utf8]{inputenc}
              \usepackage{amsmath}
              \usepackage{amsfonts}
              \usepackage{float}

              %comands
              \numberwithin{equation}{section}
              \newcommand{\bd}{\textbf}
              \newcommand{\ital}{\textit}
              \newcommand{\de}{\partial}
              \newcommand{\define}{\equiv}
              \newcommand{\tr}{\textcolor{red}}
              \newcommand{\tg}[1]{\textcolor[RGB]{93,194,56}{#1}}
              \newcommand{\tb}{\textcolor{blue}}
              \newcommand{\phis}{\psi}

              %equation disply ends here
              \usepackage{amssymb}
              \usepackage{color}
              \usepackage{hyperref}
              \usepackage{csquotes}
              \usepackage[version=4]{mhchem}
              \usepackage{siunitx}
              \usepackage{silence}

              \title{<>}
              \author{Luca Ketmaier}
              \date{<>}

              \begin{document}

              \maketitle            
              <>





              \end{document}]],
              {i(1), i(2), i(3)}
              )),
            sn(nil,fmta([[

              \documentclass{article}


              %packages
              \usepackage[a4paper, left=3.5cm,right=3.5cm,top=2.5cm,bottom=2.5cm]{geometry}
              \usepackage{float}
              \usepackage{graphicx}
              \usepackage[english]{babel}
              \usepackage[utf8]{inputenc}
              \usepackage{amsmath}
              \usepackage{amsfonts}
              \usepackage{braket}
              \usepackage{float}
              \usepackage{fancyhdr}
              \usepackage{titlesec}

              %comands
              \numberwithin{equation}{section}
              \newcommand{\bd}{\textbf}
              \newcommand{\ital}{\textit}
              \newcommand{\de}{\partial}
              \newcommand{\define}{\equiv}
              \newcommand{\phis}{\psi}
              \newcommand{\tr}{\textcolor{red}}
              \newcommand{\tg}[1]{\textcolor[RGB]{93,194,56}{#1}}
              \newcommand{\tb}{\textcolor{blue}}

              \pagestyle{fancy}    % attiva fancyhdr
              \fancyhf{}            % svuota header/footer

              % Imposta intestazione:
              \fancyhead[L]{\nouppercase{\leftmark}}  % titolo sezione a sinistra
              \fancyhead[R]{\thepage}                 % numero pagina a destra
              \renewcommand{\headrulewidth}{0.4pt}    % linea in alto
              \renewcommand{\footrulewidth}{0pt}      % nessuna linea in basso

              % Per aggiornare correttamente \leftmark con \section
              \renewcommand{\sectionmark}[1]{\markboth{#1}{}}

              \author{Luca Ketmaier}
              \title{<>}
              \date{<>}


              \begin{document}
              \maketitle
              <>



              \end{document}

            ]],
            {i(1), i(2), i(3)}
            )),
            })
        }
    )
  ),
}
