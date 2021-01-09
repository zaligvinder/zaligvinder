(declare-const X String)
; on\dName=Your\+Host\+is\x3AcdpViewHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "on") (re.range "0" "9") (str.to.re "Name=Your+Host+is:cdpViewHost:User-Agent:\x0a"))))
(check-sat)
