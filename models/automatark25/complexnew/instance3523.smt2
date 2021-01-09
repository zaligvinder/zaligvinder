(declare-const X String)
; ^\b(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)\\/(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x5c/") (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hpj/i\x0a")))))
; ^http[s]?://([a-zA-Z0-9\-]+\.)*([a-zA-Z]{3,61}|[a-zA-Z]{1,}\.[a-zA-Z]{2})/.*$
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "."))) (re.union ((_ re.loop 3 61) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "/") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
