(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "g") (re.* (str.to.re "3j+'t\\\\~"))))))
(assert (= (str.len x) 1))
(assert (not (= x "z'c:gT{Su")))
(assert (not (= x "'H'1~")))
(assert (not (= x "P)""""""""f(EE69'c0x\\'%'")))
(check-sat)
