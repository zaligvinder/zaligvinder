(set-logic QF_S)
(declare-fun G () String)
(declare-fun E () String)
(assert (= (str.++  "babbbaabaaababb" E "aaaababbabb")  (str.++  "babbbaabaaababbbabababaaabababbaaababbbabbaaababaaaabb" G "abbbbbabbbbbaaaaaababbabb") ))
(check-sat)
(get-model)
