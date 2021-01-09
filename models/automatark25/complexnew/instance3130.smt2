(declare-const X String)
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a"))))
; ^((\+)?(\d{2}[-])?(\d{10}){1})?(\d{11}){0,1}?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))))) (re.opt ((_ re.loop 11 11) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
