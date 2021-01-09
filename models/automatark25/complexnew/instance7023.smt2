(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a"))))
; (^\d{1,9})+(,\d{1,9})*$
(assert (str.in.re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to.re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a"))))
(check-sat)
