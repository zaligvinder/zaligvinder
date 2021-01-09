(declare-const X String)
; ServerOVNsearch2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in.re X (str.to.re "ServerOVNsearch2.ad.shopnav.com/9899/search/results.php\x0a"))))
; (([\+]90?)|([0]?))([ ]?)((\([0-9]{3}\))|([0-9]{3}))([ ]?)([0-9]{3})(\s*[\-]?)([0-9]{2})(\s*[\-]?)([0-9]{2})
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "+9") (re.opt (str.to.re "0"))) (re.opt (str.to.re "0"))) (re.opt (str.to.re " ")) (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x00\x00\x00\x00") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to.re "\x00\x00\x00\x00") ((_ re.loop 12 12) re.allchar)))) (str.to.re "/s\x0a"))))
; (")([0-9]*)(",")([0-9]*)("\))
(assert (str.in.re X (re.++ (str.to.re "\x22") (re.* (re.range "0" "9")) (str.to.re "\x22,\x22") (re.* (re.range "0" "9")) (str.to.re "\x22)\x0a"))))
(check-sat)
