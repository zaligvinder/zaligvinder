(declare-const X String)
; /[^ -~\r\n]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
; /filename=[^\n]*\x2epls/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pls/i\x0a")))))
(check-sat)
