(declare-const X String)
; Password="(\{.+\}[0-9a-zA-Z]+[=]*|[0-9a-zA-Z]+)"
(assert (not (str.in.re X (re.++ (str.to.re "Password=\x22") (re.union (re.++ (str.to.re "{") (re.+ re.allchar) (str.to.re "}") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (str.to.re "="))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x22\x0a")))))
; twfofrfzlugq\x2feve\.qd\d+
(assert (str.in.re X (re.++ (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\d{8,8}$|^[SC]{2,2}\d{6,6}$
(assert (str.in.re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[-|\+]?[0-9]{1,3}(\,[0-9]{3})*$|^[-|\+]?[0-9]+$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
