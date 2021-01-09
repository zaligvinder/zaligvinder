(declare-const X String)
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in.re X (re.++ (str.to.re "//Type/XRef/W[") (re.* (re.comp (str.to.re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to.re "/smi\x0a")))))
(check-sat)
