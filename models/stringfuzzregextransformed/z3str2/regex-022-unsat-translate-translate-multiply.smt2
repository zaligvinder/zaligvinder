(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "TT")) (str.to.re "++")))))
(assert (= (str.len x) 4))
(assert (not (= x "++++")))
(assert (not (= x "TT++")))
(check-sat)
