(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "") (re.* (str.to.re "a"))))))
(assert (= (str.len x) 0))
(assert (not (= x """""P1aa")))
(assert (not (= x "tC3'' '''' ''")))
(assert (not (= x ";Ha")))
(check-sat)
