(declare-const X String)
; Center\w+Host\x3aiz=iMeshBar
(assert (not (str.in.re X (re.++ (str.to.re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:iz=iMeshBar\x0a")))))
(check-sat)
