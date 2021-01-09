(declare-const X String)
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (not (str.in.re X (str.to.re "\x0d\x0aCurrent.earthlinkSpyBuddy\x0a"))))
(check-sat)
