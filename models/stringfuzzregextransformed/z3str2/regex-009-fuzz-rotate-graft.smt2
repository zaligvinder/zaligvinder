(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.+ (str.to.re "aAh'\\\\n''{:iD^GbTE;>q)")))))
(assert (str.in.re x (str.to.re "ab$!Pd")))
(assert (> (str.to.int x) (str.len x)))
(assert (< 28 3))
(check-sat)
