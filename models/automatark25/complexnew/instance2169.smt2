(declare-const X String)
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.union (str.to.re "jpg") (str.to.re "jpeg") (str.to.re "JPG") (str.to.re "JPEG")) (str.to.re "\x0a"))))
; as\x2Estarware\x2Ecom.*Casino.*LOG.*FilteredHost\x3Ae2give\.com\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "as.starware.com") (re.* re.allchar) (str.to.re "Casino") (re.* re.allchar) (str.to.re "LOG") (re.* re.allchar) (str.to.re "FilteredHost:e2give.com/newsurfer4/\x0a"))))
(check-sat)
