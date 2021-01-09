(declare-const X String)
; ^((0?[1-9])|((1)[0-1]))?((\.[0-9]{0,2})?|0(\.[0-9]{0,2}))$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.union (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re "0.") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^~/[0-9a-zA-Z_][0-9a-zA-Z/_-]*\.[0-9a-zA-Z_-]+$
(assert (str.in.re X (re.++ (str.to.re "~/") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2epsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a"))))
; [0-9]{3}P[A-Z][0-9]{7}[0-9X]
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "P") (re.range "A" "Z") ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "X")) (str.to.re "\x0a"))))
; /\x2edcr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dcr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
