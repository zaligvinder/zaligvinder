(declare-const X String)
; ^([A-Z]{2}[\s]|[A-Z]{2})[\w]{2}$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "Version") (re.+ (re.range "0" "9")) (str.to.re "JMailBoxHostGENERAL_PARAM2\x0a"))))
; [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(assert (not (str.in.re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re "/") (re.+ (re.union (str.to.re "-") (str.to.re ".") (str.to.re "%") (str.to.re "&") (str.to.re "=") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; ^(\d{4}[- ]){3}\d{4}|\d{16}$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
