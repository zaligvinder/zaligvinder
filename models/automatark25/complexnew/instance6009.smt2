(declare-const X String)
; SSKCstech\u{2E}web-nexus\u{2E}net
(assert (not (str.in_re X (str.to_re "SSKCstech.web-nexus.net\u{a}"))))
; \b[1-9]\b
(assert (not (str.in_re X (re.++ (re.range "1" "9") (str.to_re "\u{a}")))))
(check-sat)
