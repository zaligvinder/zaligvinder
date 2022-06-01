(declare-const X String)
; Travel.*www\u{2E}topadwarereviews\u{2E}com\s+v2\u{2E}0www\.raxsearch\.com
(assert (not (str.in_re X (re.++ (str.to_re "Travel") (re.* re.allchar) (str.to_re "www.topadwarereviews.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "v2.0www.raxsearch.com\u{a}")))))
(check-sat)
