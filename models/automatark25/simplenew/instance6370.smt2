(declare-const X String)
; Web-Mail\dHost\x3AHost\x3ALOG
(assert (str.in.re X (re.++ (str.to.re "Web-Mail") (re.range "0" "9") (str.to.re "Host:Host:LOG\x0a"))))
(check-sat)
