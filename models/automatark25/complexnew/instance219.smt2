(declare-const X String)
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (str.to.re "JMailReportgpstool.globaladserver.com\x0a"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
; ^[1-9]\d?-\d{7}$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/AGPi\x0a")))))
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Ui\x0a")))))
(check-sat)
