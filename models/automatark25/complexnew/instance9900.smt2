(declare-const X String)
; /\?action=\w+gen&v=\d+/U
(assert (str.in.re X (re.++ (str.to.re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gen&v=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a"))))
; \x7D\x7BTrojan\x3A\w+by\d+to\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivion
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.range "0" "9")) (str.to.re "to") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "dddlogin.dudu.comSurveillance\x13IPOblivion\x0a"))))
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "toolbar.hotblox.com") (re.range "0" "9") (str.to.re "Host:http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
(check-sat)
