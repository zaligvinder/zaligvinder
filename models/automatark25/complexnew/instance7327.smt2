(declare-const X String)
; ^[\d]{1,}?\.[\d]{2}$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3Aupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in.re X (str.to.re "User-Agent:upgrade.qsrch.info\x0a"))))
(check-sat)
