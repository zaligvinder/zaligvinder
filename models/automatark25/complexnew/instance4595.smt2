(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\x3C\x2Fchat\x3E
(assert (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.* re.allchar) (str.to.re "www.klikvipsearch.com") (re.* re.allchar) (str.to.re "</chat>\x0a"))))
; ^\d+\/?\d*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
