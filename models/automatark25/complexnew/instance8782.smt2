(declare-const X String)
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "(")) (re.* (re.comp (str.to.re ")"))) (re.+ (str.to.re ")")) (str.to.re "\x0a")))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Email") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:wowokayHost:\x0a"))))
; tb\x2Efreeprod\x2Ecom\s+Web\.fcgiclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "tb.freeprod.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Web.fcgiclvompycem/cen.vcn\x0a")))))
; (^\d{5}\x2D\d{3}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))
; e2give\.com.*Host\x3A.*Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:\x0a")))))
(check-sat)
