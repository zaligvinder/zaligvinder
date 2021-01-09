(declare-const X String)
; /filename=[^\n]*\x2ecis/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cis/i\x0a")))))
; /^[a-z][\w\.]+@([\w\-]+\.)+[a-z]{2,7}$/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (re.+ (re.union (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.range "a" "z")) (str.to.re "/i\x0a"))))
; HXLogOnly\w+Host\x3AspasHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:spasHost:\x0a")))))
; ^([12]?[0-9]|3[01])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a"))))
(check-sat)
