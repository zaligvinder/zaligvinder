(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "zz") (re.* (str.to.re "''tt\\\\\\\\''"))))))
(assert (= (str.len x) 6))
(assert (not (= x "zzzz''tt\\\\\\\\''")))
(assert (not (= x "zz''tt\\\\\\\\''zz")))
(assert (not (= x "zz''tt\\\\\\\\''''tt\\\\\\\\''")))
(check-sat)
