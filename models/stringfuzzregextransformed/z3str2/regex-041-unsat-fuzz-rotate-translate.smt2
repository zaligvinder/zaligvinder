(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "P") (re.* (str.to.re "'\x0b'")))))
(assert (str.in.re x (re.union (str.to.re "'\r'") (re.+ (str.to.re "")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re ""))) (re.union (str.to.re "P") (str.to.re "'\x0b'")))))
(check-sat)
