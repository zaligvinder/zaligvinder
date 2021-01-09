(declare-const X String)
; Travel.*www\x2Etopadwarereviews\x2Ecom\s+v2\x2E0www\.raxsearch\.com
(assert (not (str.in.re X (re.++ (str.to.re "Travel") (re.* re.allchar) (str.to.re "www.topadwarereviews.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "v2.0www.raxsearch.com\x0a")))))
(check-sat)
