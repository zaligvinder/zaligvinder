(declare-const X String)
; on\dName=Your\+Host\+is\u{3A}cdpViewHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "on") (re.range "0" "9") (str.to_re "Name=Your+Host+is:cdpViewHost:User-Agent:\u{a}")))))
(check-sat)
