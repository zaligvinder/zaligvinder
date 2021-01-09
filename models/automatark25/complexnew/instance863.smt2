(declare-const X String)
; Travel.*www\x2Etopadwarereviews\x2Ecom\s+v2\x2E0www\.raxsearch\.com
(assert (str.in.re X (re.++ (str.to.re "Travel") (re.* re.allchar) (str.to.re "www.topadwarereviews.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "v2.0www.raxsearch.com\x0a"))))
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "ATTENTION:email\x0a"))))
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\x0a")))
(check-sat)
