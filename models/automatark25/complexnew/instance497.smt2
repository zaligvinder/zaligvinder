(declare-const X String)
; \x5D\x2520\x5BPort_X-Mailer\x3AX-Mailer\x3awww\.actualnames\.comwebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "]%20[Port_X-Mailer:\x13X-Mailer:\x13www.actualnames.comwebsearch.getmirar.com\x0a")))
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (str.in.re X (str.to.re "Stablecmemailyxegtd/efcwgUin=PromulGate\x0a")))
; ^([A-Z]+\s*[A-Z]+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "A" "Z")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "A" "Z")))))
; /\x2ette([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tte") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
