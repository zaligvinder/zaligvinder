(declare-const X String)
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a"))))
; (^[0-9]{0,10}$)
(assert (str.in.re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2exap([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xap") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2ecgm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cgm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22/R\x0a")))))
(check-sat)
