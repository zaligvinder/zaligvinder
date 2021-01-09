(declare-const X String)
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (str.in.re X (str.to.re "\x0d\x0aCurrent.earthlinkSpyBuddy\x0a")))
; /\x2ehpj([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.hpj") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\r\n\r\nsession\x3a\d{1,7}$/
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0a\x0d\x0asession:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "/\x0a")))))
(check-sat)
