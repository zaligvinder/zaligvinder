(declare-const X String)
; /\x2exspf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xspf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \x7D\x7BUser\x3A\d+Host\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "}{User:") (re.+ (re.range "0" "9")) (str.to.re "Host:User-Agent:adblock.linkz.com\x0a")))))
; ^[a-zA-Z]{3}[uU]{1}[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.union (str.to.re "u") (str.to.re "U"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\d+(\.\d{2})?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
