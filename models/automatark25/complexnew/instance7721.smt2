(declare-const X String)
; /\/[a-z]{4}\.html\?i\=\d{6,7}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?i=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; /\x2ewmf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([1-9]+[0-9]*|\d*[.,]\d)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re ",")) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
