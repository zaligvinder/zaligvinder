(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x ">Zg%l>>>>>"))
(assert (str.in.re x (re.* (re.* (str.to.re "LV")))))
(check-sat)
