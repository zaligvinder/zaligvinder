(declare-const X String)
; Toolbar\w+www\u{2E}topadwarereviews\u{2E}commedia\u{2E}top-banners\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www.topadwarereviews.commedia.top-banners.com\u{a}")))))
(check-sat)
