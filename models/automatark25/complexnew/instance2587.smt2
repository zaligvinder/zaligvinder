(declare-const X String)
; /filename=[^\n]*\x2eaif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aif/i\x0a"))))
; /filename=[^\n]*\x2egz/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gz/i\x0a"))))
; ^(s-|S-){0,1}[0-9]{3}\s?[0-9]{2}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "s-") (str.to.re "S-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
