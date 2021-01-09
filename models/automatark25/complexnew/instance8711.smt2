(declare-const X String)
; ^([0-9a-fA-F])*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (str.to.re "vbwwwc.goclick.compassword;0;Incorrect\x0a"))))
(check-sat)
