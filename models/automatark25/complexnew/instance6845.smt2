(declare-const X String)
; /filename=[^\n]*\x2epub/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pub/i\x0a")))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in.re X (str.to.re "password;1;OptixOwner:Barwww.accoona.com\x0a"))))
(check-sat)
