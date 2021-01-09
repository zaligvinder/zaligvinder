(declare-const X String)
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a")))
; \x1f\x8b\x08\x00.+\x00\x00
(assert (str.in.re X (re.++ (str.to.re "\x1f\x8b\x08\x00") (re.+ re.allchar) (str.to.re "\x00\x00\x0a"))))
(check-sat)
