(declare-const X String)
; ^[-+]?\d+([.,]\d{0,2}){0,1}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^(-?\$?([1-9]\d{0,2}(,\d{3})*|[1-9]\d*|0|)(.\d{1,2})?|\(\$?([1-9]\d{0,2}(,\d{3})*|[1-9]\d*|0|)(.\d{1,2})?\))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to.re "(") (re.opt (str.to.re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re ")"))) (str.to.re "\x0a"))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in.re X (re.++ (str.to.re "//Type/XRef/W[") (re.* (re.comp (str.to.re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to.re "/smi\x0a")))))
; /^id\x3d[A-F\d]{32}(\x26info\x3d[A-F\d]{24})?$/P
(assert (str.in.re X (re.++ (str.to.re "/id=") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.opt (re.++ (str.to.re "&info=") ((_ re.loop 24 24) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to.re "/P\x0a"))))
(check-sat)
