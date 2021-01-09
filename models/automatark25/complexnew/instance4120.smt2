(declare-const X String)
; /filename=[^\n]*\x2ezip/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a")))))
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (not (str.in.re X (str.to.re "Subject:EnTrYExplorer*PORT2*Host:\x0a"))))
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in.re X (str.to.re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\x0a"))))
; /^\/f(\/[^\x2f]+)?\/14\d{8}(\/\d{9,10})?(\/\d)+(\/x[a-f0-9]+(\x3b\d)+?)?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//f") (re.opt (re.++ (str.to.re "/") (re.+ (re.comp (str.to.re "/"))))) (str.to.re "/14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")))) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (re.opt (re.++ (str.to.re "/x") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (re.+ (re.++ (str.to.re ";") (re.range "0" "9"))))) (str.to.re "/U\x0a")))))
(check-sat)
