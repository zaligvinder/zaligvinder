(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "JJBB") (re.union (str.to.re "aabbMMUU::ww99cczznn))ss") (str.to.re "%%ff""""""""5544''' '' '''22ZZzzZZ66uu]]xxff''\\\\xx00cc''"))))))
(assert (= 10 (str.to.int x)))
(check-sat)
