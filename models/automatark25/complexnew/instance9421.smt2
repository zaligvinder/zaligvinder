(declare-const X String)
; /filename=[^\n]*\x2elzh/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lzh/i\x0a"))))
; ^([1-9]|[1-9]\d|100)$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a"))))
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (str.in.re X (str.to.re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\x0a")))
; /^\d{0,10}_passes_\d{1,10}\.xm/iR
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "_passes_") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".xm/iR\x0a")))))
(check-sat)
