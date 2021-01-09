(declare-const X String)
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (str.in.re X (re.++ (str.to.re "/mJKV") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\x0a"))))
; (^(\d{2}.\d{3}.\d{3}/\d{4}-\d{2})|(\d{14})$)|(^(\d{3}.\d{3}.\d{3}-\d{2})|(\d{11})$)
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 11 11) (re.range "0" "9"))) (str.to.re "\x0a")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 14 14) (re.range "0" "9"))))))
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a"))))
(check-sat)
