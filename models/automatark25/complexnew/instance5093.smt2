(declare-const X String)
; /filename=[^\n]*\x2eaddin/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a"))))
; [0-9]+|-[0-9]+
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; [+]346[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
