(declare-const X String)
; ^[SFTG]\d{7}[A-Z]$
(assert (str.in.re X (re.++ (re.union (str.to.re "S") (str.to.re "F") (str.to.re "T") (str.to.re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a"))))
; /\x2F[a-z]+\x2epng/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re ".png/Ui\x0a"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (str.in.re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2evqf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.vqf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
