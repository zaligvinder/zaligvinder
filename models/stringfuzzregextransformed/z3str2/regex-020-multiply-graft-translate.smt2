(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "'\r''\r'") (re.* (str.to.re "GG"))))))
(assert (= 6 (str.len x)))
(assert (not (= x "GG'\r''\r''\r''\r'")))
(assert (not (= x "'\r''\r'GG'\r''\r'")))
(assert (not (= x "GGGG'\r''\r'")))
(check-sat)
