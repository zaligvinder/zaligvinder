(declare-const X String)
; www\u{2E}weepee\u{2E}com\w+Owner\u{3A}iswww\u{2E}emp3finder\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:iswww.emp3finder.com\u{a}"))))
(check-sat)
