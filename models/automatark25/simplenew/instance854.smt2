(declare-const X String)
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (str.in.re X (re.++ (str.to.re "\x0d\x0aSTATUS:") (re.range "0" "9") (str.to.re "Host:Referer:ServerSubject:\x0a"))))
(check-sat)
