(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.+ (str.to.re "!")) (str.to.re "Z")))))
(assert (str.in.re y (re.+ (re.++ (re.+ (str.to.re "|")) (str.to.re "G")))))
(assert (not (= x y)))
(assert (= (str.len x) (str.to.int y)))
(check-sat)
