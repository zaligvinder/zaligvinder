(declare-const X String)
; linkautomatici\x2EcomAID\x2FYourUser-Agent\x3AtoBasicwww\x2Ewebcruiser\x2Ecc
(assert (str.in.re X (str.to.re "linkautomatici.comAID/YourUser-Agent:toBasicwww.webcruiser.cc\x0a")))
(check-sat)
