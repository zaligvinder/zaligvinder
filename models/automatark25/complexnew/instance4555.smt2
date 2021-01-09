(declare-const X String)
; /filename=[^\n]*\x2epct/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pct/i\x0a"))))
; /filename=[^\n]*\x2evqf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vqf/i\x0a"))))
; [+-]*[0-9]+[,]*[0-9]*|[+-]*[0-9]*[,]+[0-9]*
(assert (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.* (str.to.re ",")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.+ (str.to.re ",")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
