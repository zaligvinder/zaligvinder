(declare-const X String)
; \\$\\d+[.]?\\d*
(assert (not (str.in.re X (re.++ (str.to.re "\x5c\x5c") (re.+ (str.to.re "d")) (re.opt (str.to.re ".")) (str.to.re "\x5c") (re.* (str.to.re "d")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eppsx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppsx/i\x0a"))))
; /filename=[^\n]*\x2epdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a"))))
(check-sat)
