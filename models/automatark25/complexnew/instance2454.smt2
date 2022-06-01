(declare-const X String)
; (((0[123456789]|10|11|12)([/])(([1][9][0-9][0-9])|([2][0-9][0-9][0-9]))))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (str.to_re "10") (str.to_re "11") (str.to_re "12")) (str.to_re "/") (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))))
; .*\$AVE|\$ave.*
(assert (str.in_re X (re.union (re.++ (re.* re.allchar) (str.to_re "$AVE")) (re.++ (str.to_re "$ave") (re.* re.allchar) (str.to_re "\u{a}")))))
; 3AFrom\u{3A}dddrep\u{2E}dudu\u{2E}comform-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (not (str.in_re X (str.to_re "3AFrom:dddrep.dudu.comform-data; name=\u{22}pid\u{22}\u{a}"))))
; ^((0[1-9])|(1[0-2]))\/(\d{4})$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
