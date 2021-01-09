(declare-const X String)
; show\x2Eroogoo\x2Ecom\s+report\<\x2Ftitle\>Host\x3a\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "show.roogoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "report</title>Host:.fcgi\x0a")))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a"))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a")))
(check-sat)
