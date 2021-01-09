(declare-const X String)
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a")))))
; /^(\d+\*)+(\d)+$/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to.re "*"))) (re.+ (re.range "0" "9")) (str.to.re "/gm\x0a"))))
(check-sat)
