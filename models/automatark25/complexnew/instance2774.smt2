(declare-const X String)
; Subject\u{3A}.*www\u{2E}webcruiser\u{2E}cc\w+www\u{2E}topadwarereviews\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.com\u{a}")))))
; /\u{2f}ib2\u{2f}$/U
(assert (str.in_re X (str.to_re "//ib2//U\u{a}")))
(check-sat)
