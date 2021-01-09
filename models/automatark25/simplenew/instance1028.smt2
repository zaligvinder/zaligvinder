(declare-const X String)
; Hello\x2E\s+ovpl\s+Host\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:www.wowokay.com/wowokaybar.php\x0a"))))
(check-sat)
