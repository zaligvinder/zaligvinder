(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.union (str.to.re "+") (str.to.re "'\x0b'")))))
(assert (= 3 (str.len x)))
(assert (not (= x "'\x0b''\x0b'+")))
(assert (not (= x "+'\x0b'+")))
(assert (not (= x "+'\x0b''\x0b'")))
(assert (not (= x "'\x0b''\x0b''\x0b'")))
(assert (not (= x "++'\x0b'")))
(assert (not (= x "'\x0b'+'\x0b'")))
(assert (not (= x "+++")))
(check-sat)
