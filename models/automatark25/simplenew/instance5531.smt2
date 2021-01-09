(declare-const X String)
; as\x2Estarware\x2Ecom.*Casino.*LOG.*FilteredHost\x3Ae2give\.com\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "as.starware.com") (re.* re.allchar) (str.to.re "Casino") (re.* re.allchar) (str.to.re "LOG") (re.* re.allchar) (str.to.re "FilteredHost:e2give.com/newsurfer4/\x0a"))))
(check-sat)
