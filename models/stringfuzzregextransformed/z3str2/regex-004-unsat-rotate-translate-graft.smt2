(set-logic QF_S)
(declare-const x String)
(assert (= x ";t<'\\n'<'\\n'W"))
(assert (str.in.re x (re.union (re.* (str.to.re "<'\\n'W")) (str.to.re ";t<'\\n'"))))
(check-sat)
