(declare-const X String)
; ^([0-9a-fA-F])*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}")))))
; vbwwwc\.goclick\.compassword\u{3B}0\u{3B}Incorrect
(assert (not (str.in_re X (str.to_re "vbwwwc.goclick.compassword;0;Incorrect\u{a}"))))
(check-sat)
