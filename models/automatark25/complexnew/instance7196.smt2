(declare-const X String)
; \b[A-Z0-9]{5}\d{1}[01567]\d{1}([0][1-9]|[12][0-9]|[3][0-1])\d{1}[A-Z0-9]{3}[A-Z]{2}\b
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re "1") (str.to.re "5") (str.to.re "6") (str.to.re "7")) ((_ re.loop 1 1) (re.range "0" "9")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; /\/([0-9][0-9a-z]{2}|[0-9a-z][0-9][0-9a-z]|[0-9a-z]{2}[0-9])\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.union (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z")))) (re.++ (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.range "0" "9"))) (str.to.re ".jar/U\x0a")))))
; /\x2epct([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pct") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2eplf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a")))))
(check-sat)
