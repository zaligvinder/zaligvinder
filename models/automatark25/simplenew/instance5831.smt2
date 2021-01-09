(declare-const X String)
; [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(assert (not (str.in.re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re "/") (re.+ (re.union (str.to.re "-") (str.to.re ".") (str.to.re "%") (str.to.re "&") (str.to.re "=") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
(check-sat)
