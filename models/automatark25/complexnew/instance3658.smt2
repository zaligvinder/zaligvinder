(declare-const X String)
; ^([^\s]){5,12}$
(assert (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Mozilla") (re.opt (str.to.re "\x0d")) (str.to.re "/smiH\x0a")))))
; c\.goclick\.com\s+URLBlaze\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; updates\x5D\x2520\x5BPort_NETObserve
(assert (not (str.in.re X (str.to.re "updates]%20[Port_NETObserve\x0a"))))
(check-sat)
