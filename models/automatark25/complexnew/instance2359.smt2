(declare-const X String)
; pass=Referer\u{3A}Surveillance
(assert (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}")))
; User-Agent\u{3A}.*Host\u{3A}\dName=Your\+Host\+is\u{3A}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:\u{a}"))))
(check-sat)
