(declare-const X String)
; Current[^\n\r]*server[^\n\r]*Host\x3Aocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "Current") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:ocllceclbhs/gth\x0a"))))
; /filename=[^\n]*\x2em4r/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4r/i\x0a"))))
; /filename=[^\n]*\x2ehlp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hlp/i\x0a"))))
(check-sat)
