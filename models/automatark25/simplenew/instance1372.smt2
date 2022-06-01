(declare-const X String)
; /\u{2f}[\w\u{2d}]*\u{2e}\u{2e}$/mU
(assert (str.in_re X (re.++ (str.to_re "//") (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "../mU\u{a}"))))
(check-sat)
