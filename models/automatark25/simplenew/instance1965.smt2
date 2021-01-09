(declare-const X String)
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Mozilla") (re.opt (str.to.re "\x0d")) (str.to.re "/smiH\x0a"))))
(check-sat)
