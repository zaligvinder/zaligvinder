(declare-const X String)
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (str.in.re X (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "4")) (re.range "0" "9") (re.range "0" "9") (str.to.re "/") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9")) (str.to.re "\x0a"))))
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in.re X (str.to.re "Remote<chat>\x1bX-Mailer:\x13www.proventactics.com\x0a")))
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-"))) (re.* (re.++ (str.to.re ",") (re.union (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
; ^(www\.regxlib\.com)$
(assert (str.in.re X (str.to.re "www.regxlib.com\x0a")))
(check-sat)
