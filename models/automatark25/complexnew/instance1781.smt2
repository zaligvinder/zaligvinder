(declare-const X String)
; Host\x3A\s+www\x2Eyoogee\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yoogee.com\x13\x0a"))))
; xpsp2-\s+spyblpat.*is\x2EphpBarFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is.phpBarFrom:\x0a"))))
; [0-9][.][0-9]{3}$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; www\x2Ezhongsou\x2Ecomclick\x2Edotcomtoolbar\x2Ecom
(assert (not (str.in.re X (str.to.re "www.zhongsou.comclick.dotcomtoolbar.com\x0a"))))
(check-sat)
