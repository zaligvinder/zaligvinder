(declare-const X String)
; ad\u{2E}searchsquire\u{2E}com\s+ocllceclbhs\u{2f}gth
(assert (not (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth\u{a}")))))
(check-sat)
