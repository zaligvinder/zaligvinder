(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.+ (re.+ (str.to.re "W\\""pgYVm<&'\r'bN<lo0F$#n'\n'xsjc_{t")))))
(assert (= (str.to.int y) 0))
(check-sat)
