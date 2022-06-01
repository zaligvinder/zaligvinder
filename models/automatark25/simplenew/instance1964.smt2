(declare-const X String)
; Web-Mail\dHost\u{3A}Host\u{3A}LOG
(assert (not (str.in_re X (re.++ (str.to_re "Web-Mail") (re.range "0" "9") (str.to_re "Host:Host:LOG\u{a}")))))
(check-sat)
