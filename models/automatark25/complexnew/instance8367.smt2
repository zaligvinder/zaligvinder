(declare-const X String)
; /STOR\s+Lbtf\x2eugz(\d{2}\x2d){2}\d{4}(\x2d\d{2}){3}\x2eugz/
(assert (str.in.re X (re.++ (str.to.re "/STOR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Lbtf.ugz") ((_ re.loop 2 2) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re ".ugz/\x0a"))))
; tb\x2Efreeprod\x2Ecom\s+Web\.fcgiclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "tb.freeprod.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Web.fcgiclvompycem/cen.vcn\x0a"))))
(check-sat)
