(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "AB,>w#") (str.to.re "rl6GN.-")))))
(assert (= 8 (str.len x)))
(assert (not (= x "}}pm1`3A)~t' 's=V}C")))
(check-sat)
