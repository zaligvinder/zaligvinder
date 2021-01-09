(declare-const X String)
; (^\*\.[a-zA-Z][a-zA-Z][a-zA-Z]$)|(^\*\.\*$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "*.") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "*.*\x0a")))))
; /^[a-z]\x3d[a-f\d]{80,140}$/Pi
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 80 140) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Pi\x0a"))))
; /filename=[^\n]*\x2exspf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xspf/i\x0a"))))
(check-sat)
