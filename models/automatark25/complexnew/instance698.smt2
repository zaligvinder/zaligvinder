(declare-const X String)
; /filename=[^\n]*\x2ezip/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a"))))
; \.txt$
(assert (not (str.in.re X (str.to.re ".txt\x0a"))))
; IP\d+SAHPORT-User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:User-Agent:\x0a"))))
(check-sat)
