(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "bbbbbbbbbbbbbbbbbb"))
(assert (str.in.re x (re.* (re.* (str.to.re "::'\t''\t'mm")))))
(check-sat)
