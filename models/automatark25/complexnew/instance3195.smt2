(declare-const X String)
; [A-Z|a-z]{4}[0][\d]{6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) (str.to_re "0") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; linkautomatici\u{2E}comAID\u{2F}YourUser-Agent\u{3A}toBasicwww\u{2E}webcruiser\u{2E}cc
(assert (not (str.in_re X (str.to_re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\u{a}"))))
(check-sat)
