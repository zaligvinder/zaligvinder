(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re """V") (str.to.re "12~33")))))
(assert (= 5 (str.len x)))
(assert (not (= x "`Ay['\t')lGz'\n'<""933'\x0c'+<6'{' ''OW`'\r'>rdAO)lc'\x0b'GWR[0M'\x0b'N")))
(check-sat)
