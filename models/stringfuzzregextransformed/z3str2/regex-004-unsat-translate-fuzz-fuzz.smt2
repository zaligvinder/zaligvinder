(set-logic QF_S)
(declare-const x String)
(assert (= x "ATe$(jTPh'\x0b'u73' '^VJ{P6mYX"))
(assert (str.in.re x (re.union (re.* (str.to.re "A^yB")) (re.* (str.to.re "#1n^w'\n'ow'\n'")))))
(check-sat)
