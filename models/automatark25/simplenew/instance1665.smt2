(declare-const X String)
; User-Agent\x3Aupgrade\x2Eqsrch\x2Einfo
(assert (str.in.re X (str.to.re "User-Agent:upgrade.qsrch.info\x0a")))
(check-sat)
