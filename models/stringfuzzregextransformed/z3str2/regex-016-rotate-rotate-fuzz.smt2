(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "DdAvr") (str.to.re "")))))
(assert (= 1 (str.to.int x)))
(assert (not (= x "a<iI8D#-P}\\mWjXUz'\t'$fGvxzFaMcc\\c")))
(assert (not (= x "bdAp:X@(xB]NR#'\x0b'""X82'\x0c'i.'\n'eD13")))
(check-sat)
