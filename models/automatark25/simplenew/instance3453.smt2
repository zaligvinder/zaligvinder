(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\u{3C}\u{2F}chat\u{3E}
(assert (not (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.* re.allchar) (str.to_re "www.klikvipsearch.com") (re.* re.allchar) (str.to_re "</chat>\u{a}")))))
(check-sat)
