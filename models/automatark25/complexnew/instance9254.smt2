(declare-const X String)
; ^([6011]{4})([0-9]{12})$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (str.to.re "6") (str.to.re "0") (str.to.re "1"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* re.allchar) (str.to.re "report") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:kwd-i%3fUser-Agent:www.proventactics.com\x0a"))))
; ^\d{1,2}\/\d{2,4}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
