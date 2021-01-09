(declare-const X String)
; /filename=[^\n]*\x2epict/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pict/i\x0a")))))
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (str.to.re "SSKCstech.web-nexus.net\x0a"))))
; [1-8][0-9]{2}[0-9]{5}
(assert (not (str.in.re X (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
