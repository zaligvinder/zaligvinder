(declare-const X String)
; /logo\.png\x3f(sv\x3d\d{1,3})?\x26tq\x3d.*?SoSEU/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/logo.png?") (re.opt (re.++ (str.to.re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re "&tq=") (re.* re.allchar) (str.to.re "SoSEU/smiU\x0a")))))
(check-sat)
