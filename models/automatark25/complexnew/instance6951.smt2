(declare-const X String)
; ^([1-9]|[1-9]\d|[1-2]\d{2}|3[0-6][0-6])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.range "0" "6") (re.range "0" "6"))) (str.to.re "\x0a"))))
; ^([a-zA-Z0-9-\,\s]{2,64})$
(assert (str.in.re X (re.++ ((_ re.loop 2 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; \b[1-9]\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") (str.to.re "\x0a")))))
; /\x2eafm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.afm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
