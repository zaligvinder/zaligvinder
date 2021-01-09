(declare-const X String)
; ^(([1-9]?\d|1\d\d|2[0-4]\d|25[0-5]).){3}([1-9]?\d|1\d\d|2[0-4]\d|25[0-5])$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) re.allchar)) (re.union (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a"))))
; /\x2ewebm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.webm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^\/\d{4}\/\d{7}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
