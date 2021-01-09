(declare-const X String)
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (str.in.re X (str.to.re "vbwwwc.goclick.compassword;0;Incorrect\x0a")))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (not (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a"))))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.fli") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2eram?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ra") (re.opt (str.to.re "m")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
