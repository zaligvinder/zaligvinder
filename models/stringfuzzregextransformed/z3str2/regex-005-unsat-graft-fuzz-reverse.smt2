(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "3w(<""""JefP@n|dI}~Dat2/]\\\\pHwO%~a"))
(assert (str.in.re x (re.+ (str.to.re "T#@c"))))
(check-sat)
