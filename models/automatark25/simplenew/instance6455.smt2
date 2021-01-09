(declare-const X String)
; /\x2f[\w\x2d]*\x2e\x2e$/mU
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.* (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "../mU\x0a")))))
(check-sat)
