(declare-const X String)
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>Host:\x0a")))))
(check-sat)
