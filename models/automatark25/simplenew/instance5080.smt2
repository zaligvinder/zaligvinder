(declare-const X String)
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (not (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13Computeron:com>2.41\x0a")))))
(check-sat)
