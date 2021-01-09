(declare-const X String)
; tb\x2Efreeprod\x2Ecom\s+Web\.fcgiclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "tb.freeprod.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Web.fcgiclvompycem/cen.vcn\x0a")))))
; /\&h=11$/U
(assert (str.in.re X (str.to.re "/&h=11/U\x0a")))
(check-sat)
