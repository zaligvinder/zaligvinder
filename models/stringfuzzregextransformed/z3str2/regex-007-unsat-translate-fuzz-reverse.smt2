(set-logic QF_S)
(declare-const x String)
(assert (= (str.len x) 11))
(assert (str.in.re x (re.+ (str.to.re "!"))))
(assert (str.in.re x (re.+ (str.to.re "x'b0x\\'R"))))
(check-sat)
