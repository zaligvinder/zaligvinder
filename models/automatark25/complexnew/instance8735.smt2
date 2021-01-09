(declare-const X String)
; ^[a-zA-Z0-9]{1,20}$
(assert (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^\d{4}\/\d{1,2}\/\d{1,2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a")))))
; ^[0-9]{11}$
(assert (not (str.in.re X (re.++ ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a")))))
; \.exe\s+v2\x2E0\s+smrtshpr-cs-
(assert (not (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "v2.0") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "smrtshpr-cs-\x13\x0a")))))
(check-sat)
