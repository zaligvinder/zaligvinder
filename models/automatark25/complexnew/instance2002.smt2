(declare-const X String)
; RunnerHost\x3a\x2Ehtmldll\x3FCenterspasSubject\x3AHost\x3AconnectedNodes\x26Name=
(assert (str.in.re X (str.to.re "RunnerHost:.htmldll?CenterspasSubject:Host:connectedNodes&Name=\x0a")))
; Host\x3A\dtoolbar\x2Ehotblox\x2Ecom\dHost\x3Ahttp\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "toolbar.hotblox.com") (re.range "0" "9") (str.to.re "Host:http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
; ^(\+27|27|0)[0-9]{2}( |-)?[0-9]{3}( |-)?[0-9]{4}( |-)?(x[0-9]+)?(ext[0-9]+)?
(assert (not (str.in.re X (re.++ (re.union (str.to.re "+27") (str.to.re "27") (str.to.re "0")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.opt (re.++ (str.to.re "x") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "ext") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (str.to.re "media.dxcdirect.com\x0a"))))
(check-sat)
