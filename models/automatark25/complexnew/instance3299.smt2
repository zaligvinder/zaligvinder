(declare-const X String)
; [+]346[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ezip/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a"))))
(check-sat)
