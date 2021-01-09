(declare-const X String)
; X-Mailer\x3A.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "/rss") (re.* re.allchar) (str.to.re "Desktopcargo=report</title>\x0a"))))
; ^[A-Z]$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a")))))
(check-sat)
