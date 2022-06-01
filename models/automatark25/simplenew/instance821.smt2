(declare-const X String)
; Toolbar.*www\u{2E}webcruiser\u{2E}cc\w+www\u{2E}topadwarereviews\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}")))))
(check-sat)
