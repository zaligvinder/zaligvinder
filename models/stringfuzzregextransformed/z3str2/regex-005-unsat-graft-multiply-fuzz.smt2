(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "d'yk1dAc'\t''\r''\r'ovwiN1<R2@mz'\x0b'm""A`DY'\r')m$'\x0b'PJ`!5og$IaYhrEwJR_xXqs'\n'K,Ma$9GQGf+)w~s|\\RM'0-QoN_`Z0O"))
(assert (str.in.re x (re.* (str.to.re "NQvKMucIdd"))))
(check-sat)
