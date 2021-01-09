(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a")))
; \x0D\x0ACurrent\x2EearthlinkSpyBuddy
(assert (str.in.re X (str.to.re "\x0d\x0aCurrent.earthlinkSpyBuddy\x0a")))
(check-sat)
