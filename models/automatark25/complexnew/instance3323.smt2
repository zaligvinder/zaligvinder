(declare-const X String)
; /filename=[^\n]*\x2eppsx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppsx/i\x0a")))))
; /^\/\?q=[^&]*##1$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?q=") (re.* (re.comp (str.to.re "&"))) (str.to.re "##1/U\x0a")))))
(check-sat)
