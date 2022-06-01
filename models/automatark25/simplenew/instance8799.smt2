(declare-const X String)
; Center\w+Host\u{3a}iz=iMeshBar
(assert (not (str.in_re X (re.++ (str.to_re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar\u{a}")))))
(check-sat)
