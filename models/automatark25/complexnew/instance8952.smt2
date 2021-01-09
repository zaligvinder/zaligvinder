(declare-const X String)
; ^(\d+(,\d+)*)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2empg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpg/i\x0a")))))
(check-sat)
