(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "fV*Vg~z6<zzwY'\x0c'Q4atd'\n'4]~'\x0b'\\[Hi*S[xSq"))
(assert (str.in.re x (re.* (str.to.re ""))))
(check-sat)
