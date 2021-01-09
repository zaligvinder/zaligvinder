(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a")))))
; /filename=[^\n]*\x2ewmv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmv/i\x0a")))))
; Host\x3A\dKeyloggercargo=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keyloggercargo=\x0a"))))
(check-sat)
