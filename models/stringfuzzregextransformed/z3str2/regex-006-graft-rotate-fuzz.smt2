(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "IzzW'\x0b'Zbca]'\t'~C9="))
(assert (str.in.re x (re.* (str.to.re "ab"))))
(check-sat)
