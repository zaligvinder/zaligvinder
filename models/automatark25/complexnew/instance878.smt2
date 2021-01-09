(declare-const X String)
; <(.*?)>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* re.allchar) (str.to.re ">\x0a"))))
; /filename=[^\n]*\x2ejpg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpg/i\x0a"))))
; /^[0-9a-fA-F]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/\x0a"))))
(check-sat)
