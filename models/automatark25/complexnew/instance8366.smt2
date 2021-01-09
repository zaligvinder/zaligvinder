(declare-const X String)
; ^([7-9]{1})([0-9]{9})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re "?") (str.to.re "*") (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re "<") (str.to.re ":") (str.to.re "|"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ecnt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cnt/i\x0a"))))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.asx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
