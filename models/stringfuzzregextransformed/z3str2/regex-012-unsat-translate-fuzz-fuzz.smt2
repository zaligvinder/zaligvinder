(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re ">&FKPJy'\t''[4/>8%$cO~0%*'\n'O") (str.to.re "")))))
(assert (= 0 (str.len x)))
(check-sat)
