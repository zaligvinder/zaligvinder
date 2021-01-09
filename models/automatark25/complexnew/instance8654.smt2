(declare-const X String)
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".pdf/U\x0a")))))
; ^([a-zA-Z0-9]{6,18}?)$
(assert (not (str.in.re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^(([-\w$%&'*+\/=?^_`{|}~.]+)@(([-a-zA-Z0-9_]+\.)*)([-a-zA-Z0-9]+\.)([a-zA-Z0-9]{2,7}))?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.+ (re.union (str.to.re "-") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "^") (str.to.re "_") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.* (re.++ (re.+ (re.union (str.to.re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.+ (re.union (str.to.re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "."))) (str.to.re "\x0a"))))
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
