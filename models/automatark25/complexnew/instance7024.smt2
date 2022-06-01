(declare-const X String)
; DA\dwww\u{2E}e-finder\u{2E}cc.*User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "DA") (re.range "0" "9") (str.to_re "www.e-finder.cc") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
; Host\u{3A}\s+jspIDENTIFYserverHOST\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jspIDENTIFYserverHOST:\u{a}")))))
(check-sat)
