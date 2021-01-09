(declare-const X String)
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (not (str.in.re X (re.++ (str.to.re "/?new=") (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "&v=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "&av=/U\x0a")))))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in.re X (str.to.re "www.sogou.comix=WebsiteHost:Web-Mail\x0a")))
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:OnlineUser-Agent:www.vip-se.com\x13\x0a"))))
; ^[A-Za-z]{1,2}[0-9A-Za-z]{1,2}[ ]?[0-9]{0,1}[A-Za-z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) (re.opt (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0aReferer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to.re "&sid=") (re.+ (re.range "0" "9")) (str.to.re "&sn=") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a"))))
(check-sat)
