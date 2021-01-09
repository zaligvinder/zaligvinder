(declare-const X String)
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (str.to.re "SSKCstech.web-nexus.net\x0a"))))
; \b[1-9]\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") (str.to.re "\x0a")))))
(check-sat)
