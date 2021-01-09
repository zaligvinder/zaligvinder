(declare-const X String)
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*(\.?\d+)$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
; Web-Mail\dHost\x3AHost\x3ALOG
(assert (not (str.in.re X (re.++ (str.to.re "Web-Mail") (re.range "0" "9") (str.to.re "Host:Host:LOG\x0a")))))
; /logo\.png\x3f(sv\x3d\d{1,3})?\x26tq\x3d.*?SoSEU/smiU
(assert (str.in.re X (re.++ (str.to.re "/logo.png?") (re.opt (re.++ (str.to.re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re "&tq=") (re.* re.allchar) (str.to.re "SoSEU/smiU\x0a"))))
(check-sat)
