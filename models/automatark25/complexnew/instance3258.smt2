(declare-const X String)
; IP\d+SAHPORT-User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:User-Agent:\x0a"))))
; /filename=[^\n]*\x2esum/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a"))))
; /filename=[^\n]*\x2epjpeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a")))))
(check-sat)
