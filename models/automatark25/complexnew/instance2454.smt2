(declare-const X String)
; (((0[123456789]|10|11|12)([/])(([1][9][0-9][0-9])|([2][0-9][0-9][0-9]))))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (str.to.re "10") (str.to.re "11") (str.to.re "12")) (str.to.re "/") (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))))
; .*\$AVE|\$ave.*
(assert (str.in.re X (re.union (re.++ (re.* re.allchar) (str.to.re "$AVE")) (re.++ (str.to.re "$ave") (re.* re.allchar) (str.to.re "\x0a")))))
; 3AFrom\x3Adddrep\x2Edudu\x2Ecomform-data\x3B\x20name=\x22pid\x22
(assert (not (str.in.re X (str.to.re "3AFrom:dddrep.dudu.comform-data; name=\x22pid\x22\x0a"))))
; ^((0[1-9])|(1[0-2]))\/(\d{4})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
