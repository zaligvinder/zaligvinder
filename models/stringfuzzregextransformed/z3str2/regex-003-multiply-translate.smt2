(set-logic QF_S)
(declare-const x String)
(assert (= x "zzPPff^^oozzPPzzPPff"))
(assert (str.in.re x (re.* (re.union (str.to.re "^^oozzPP") (str.to.re "zzPPff")))))
(check-sat)
