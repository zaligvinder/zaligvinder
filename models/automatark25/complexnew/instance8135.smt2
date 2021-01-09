(declare-const X String)
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in.re X (str.to.re "securityOmFkbWluADROARad.mokead.com</chat>\x0a")))
; /onload\s*\x3D\s*[\x22\x27]?location\.reload\s*\x28/smi
(assert (not (str.in.re X (re.++ (str.to.re "/onload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "location.reload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(/smi\x0a")))))
; ^((6011)((-|\s)?[0-9]{4}){3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a6011") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))))))))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a"))))
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "linkautomatici.com") (re.range "0" "9") (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "Host:FloodedFictionalUser-Agent:\x0a")))))
(check-sat)
