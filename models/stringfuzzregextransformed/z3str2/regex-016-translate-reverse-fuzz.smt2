(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "'\t'x{\\3sN") (str.to.re "31")))))
(assert (= 3 (str.len x)))
(assert (not (= x "t{F}7V`xkpC3+$.q'\x0b'C8&3%@N")))
(assert (not (= x "n<UYtRx0{Nz'\r''\r'88.Ee/Q'\r'w|SB")))
(check-sat)
