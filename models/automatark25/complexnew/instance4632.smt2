(declare-const X String)
; ^((\+|00)[1-9]{1,3})?(\-| {0,1})?(([\d]{0,3})(\-| {0,1})?([\d]{5,11})){1}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) ((_ re.loop 1 3) (re.range "1" "9")))) (re.opt (re.union (str.to.re "-") (re.opt (str.to.re " ")))) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (re.opt (str.to.re " ")))) ((_ re.loop 5 11) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(102[0-3]|10[0-1]\d|[1-9][0-9]{0,2}|0)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "102") (re.range "0" "3")) (re.++ (str.to.re "10") (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a")))))
; ^\s*[a-zA-Z0-9&\-\./,\s]+\s*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "/") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
