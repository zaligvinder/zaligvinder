(declare-const X String)
; ^[-+]?\d*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ads\.grokads\.com\s+deskwizz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "ads.grokads.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "deskwizz.com\x0a"))))
(check-sat)
