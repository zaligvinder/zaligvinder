(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "ab$!Pabc"))
(assert (str.in.re x (re.+ (re.* (str.to.re "hAhw'{")))))
(check-sat)
