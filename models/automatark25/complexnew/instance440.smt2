(declare-const X String)
; /filename=[^\n]*\x2emka/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a")))))
; /filename=[^\n]*\x2eses/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a")))))
; ^[a-zA-Z]+[a-zA-Z0-9_-]*@([a-zA-Z0-9]+){1}(\.[a-zA-Z0-9]+){1,2}
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") ((_ re.loop 1 1) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) ((_ re.loop 1 2) (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a"))))
(check-sat)
