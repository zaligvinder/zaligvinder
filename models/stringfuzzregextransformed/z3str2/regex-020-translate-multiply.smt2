(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "{{")) (str.to.re "LL")))))
(assert (= (str.len x) 6))
(assert (not (= x "{{LLLL")))
(assert (not (= x "LL{{LL")))
(assert (not (= x "{{{{LL")))
(check-sat)
