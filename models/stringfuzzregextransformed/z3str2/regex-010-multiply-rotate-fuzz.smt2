(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "F~"))))
(assert (str.in.re x (re.* (str.to.re "?~Xb""`}gZF0' 'ab'\t's(H"))))
(assert (str.in.re x (re.+ (str.to.re "C{0:J\\r0V.'\x0b'UraYGl1CeS0,-hb~?(PsBtE[gW7""}HO~[f{"))))
(check-sat)
