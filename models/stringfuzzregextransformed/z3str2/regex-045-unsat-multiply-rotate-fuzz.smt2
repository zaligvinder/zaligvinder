(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (not (str.in.re x (re.* (str.to.re "aMIF7""`.|Xi")))))
(assert (= x "N[t' '46a{Jc"))
(check-sat)
