(declare-const X String)
; linkautomatici\u{2E}comAID\u{2F}YourUser-Agent\u{3A}toBasicwww\u{2E}webcruiser\u{2E}cc
(assert (str.in_re X (str.to_re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\u{a}")))
(check-sat)
