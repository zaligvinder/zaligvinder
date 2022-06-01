(declare-const X String)
; [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(assert (str.in_re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (str.to_re ".") (str.to_re "%") (str.to_re "&") (str.to_re "=") (str.to_re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}"))))
(check-sat)
