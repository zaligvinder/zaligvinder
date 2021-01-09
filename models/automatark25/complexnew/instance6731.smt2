(declare-const X String)
; ^[A-Z][a-z]+(o(i|u)(n|(v)?r(t)?|s|t|x)(e(s)?)?)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0ao") (re.union (str.to.re "i") (str.to.re "u")) (re.union (str.to.re "n") (re.++ (re.opt (str.to.re "v")) (str.to.re "r") (re.opt (str.to.re "t"))) (str.to.re "s") (str.to.re "t") (str.to.re "x")) (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "s"))))))))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a")))))
; Host\x3APG=SPEEDBARReferer\x3a
(assert (not (str.in.re X (str.to.re "Host:PG=SPEEDBARReferer:\x0a"))))
(check-sat)
