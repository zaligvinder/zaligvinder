(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.* (re.+ (str.to.re "2'\n'y'\\B'\t'?b|cy]fpi[{1'\n'Mm+=gA@sfE'VoDhfDa""HdwGsd..*{B'\n''\t'sncy`~<|L9")))))
(assert (= (str.to.int y) 17))
(check-sat)
