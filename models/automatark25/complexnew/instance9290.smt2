(declare-const X String)
; ^\d+\x20*([pP][xXtT])?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.++ (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "x") (str.to.re "X") (str.to.re "t") (str.to.re "T")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewax/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wax/i\x0a")))))
; /filename=[^\n]*\x2ejpx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpx/i\x0a")))))
(check-sat)
