(declare-const X String)
; ^(05)[0-9]{8}$
(assert (str.in.re X (re.++ (str.to.re "05") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; (((0[123456789]|10|11|12)(([1][9][0-9][0-9])|([2][0-9][0-9][0-9]))))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (str.to.re "10") (str.to.re "11") (str.to.re "12")) (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))))
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a")))))
; ^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.range "A" "Z") (re.range "0" "9") (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "0" "9") (str.to.re "\x0a"))))))
; www\x2Ewebcruiser\x2EccJMailBoxHostGENERAL_PARAM2FT
(assert (str.in.re X (str.to.re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\x0a")))
(check-sat)
