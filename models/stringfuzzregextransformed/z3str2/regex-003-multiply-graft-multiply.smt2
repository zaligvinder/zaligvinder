(set-logic QF_S)
(declare-const x String)
(assert (= x "ccccddddeeeeaaaabbbbccccddddccccddddeeee"))
(assert (str.in.re x (str.to.re "ccccddddeeee")))
(check-sat)
