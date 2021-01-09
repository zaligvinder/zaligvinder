(declare-const X String)
; /logo\.png\x3f(sv\x3d\d{1,3})?\x26tq\x3d.*?SoSEU/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/logo.png?") (re.opt (re.++ (str.to.re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re "&tq=") (re.* re.allchar) (str.to.re "SoSEU/smiU\x0a")))))
; ^\d{5}-\d{3}$|^\d{8}$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
