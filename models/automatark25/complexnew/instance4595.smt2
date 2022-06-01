(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\u{3C}\u{2F}chat\u{3E}
(assert (str.in_re X (re.++ (str.to_re "www.actualnames.com") (re.* re.allchar) (str.to_re "www.klikvipsearch.com") (re.* re.allchar) (str.to_re "</chat>\u{a}"))))
; ^\d+\/?\d*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
