(declare-const X String)
; ^[1-9]{1,2}(.5)?$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to_re "5"))) (str.to_re "\u{a}")))))
; [\\""=/>](25[0-4]|2[0-4][0-9]|1\d{2}|\d{2})\.((25[0-4]|2[0-4][0-9]|1\d{2}|\d{1,2})\.){2}(25[0-4]|2[0-4][0-9]|1\d{2}|\d{2}|[1-9])\b[\\""=:;,/<]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "=") (str.to_re "/") (str.to_re ">")) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 2) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "1" "9")) (re.union (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "=") (str.to_re ":") (str.to_re ";") (str.to_re ",") (str.to_re "/") (str.to_re "<")) (str.to_re "\u{a}")))))
; \u{2E}php\s+www\u{2E}webfringe\u{2E}com
(assert (str.in_re X (re.++ (str.to_re ".php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.com\u{a}"))))
; ^([12]?[0-9]|3[01])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "1") (str.to_re "2"))) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{a}")))))
; for\u{2F}products\u{2F}spyblocs\u{2F}Host\u{3A}ocllceclbhs\u{2f}gth
(assert (not (str.in_re X (str.to_re "for/products/spyblocs/\u{13}Host:ocllceclbhs/gth\u{a}"))))
(check-sat)
