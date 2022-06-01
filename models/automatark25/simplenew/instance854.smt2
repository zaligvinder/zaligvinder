(declare-const X String)
; \r\nSTATUS\u{3A}\dHost\u{3a}Referer\u{3A}ServerSubject\u{3a}
(assert (str.in_re X (re.++ (str.to_re "\u{d}\u{a}STATUS:") (re.range "0" "9") (str.to_re "Host:Referer:ServerSubject:\u{a}"))))
(check-sat)
