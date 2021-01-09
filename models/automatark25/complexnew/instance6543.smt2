(declare-const X String)
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in.re X (re.++ (str.to.re "Port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:insertkeys<keys@hotpop\x0a"))))
; ('((\\.)|[^\\'])*')
(assert (str.in.re X (re.++ (str.to.re "\x0a'") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "'"))) (str.to.re "'"))))
; /\/pdfx\.html$/U
(assert (str.in.re X (str.to.re "//pdfx.html/U\x0a")))
(check-sat)
