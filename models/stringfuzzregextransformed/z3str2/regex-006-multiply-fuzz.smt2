(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "aab5/'\x0b'v`}BmdzW\\cc"))
(assert (str.in.re x (re.* (re.* (str.to.re "a_&bB%;Bn.")))))
(check-sat)
