(declare-const X String)
; ^[ a - z, 0 - 9 , ?   -   ?   ,?   -   ? , ?    -  ?   ,?   -  ? , . ]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "a") (re.range " " " ") (str.to.re "z") (str.to.re ",") (str.to.re "0") (str.to.re "9") (str.to.re "?") (str.to.re ".")) (str.to.re "\x0a"))))
; ^(\d{4})\D?(0[1-9]|1[0-2])\D?([12]\d|0[1-9]|3[01])(\D?([01]\d|2[0-3])\D?([0-5]\d)\D?([0-5]\d)?)?$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.opt (re.comp (re.range "0" "9"))) (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.opt (re.++ (re.opt (re.comp (re.range "0" "9"))) (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.opt (re.comp (re.range "0" "9"))) (re.opt (re.comp (re.range "0" "9"))) (re.opt (re.++ (re.range "0" "5") (re.range "0" "9"))) (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^([0]?[1-9]|[1][0-2])[./-]([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0-9]{4}|[0-9]{2})$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re ".") (str.to.re "/") (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "|") (str.to.re "1")))) (re.union (str.to.re ".") (str.to.re "/") (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a"))))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:\x0a"))))
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
