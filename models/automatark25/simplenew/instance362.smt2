(declare-const X String)
; 2\u{2E}41\d+www\u{2E}richfind\u{2E}comHost\u{3A}Beyond
(assert (str.in_re X (re.++ (str.to_re "2.41") (re.+ (re.range "0" "9")) (str.to_re "www.richfind.comHost:Beyond\u{a}"))))
(check-sat)
