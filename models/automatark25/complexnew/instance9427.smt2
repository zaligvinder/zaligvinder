(declare-const X String)
; User-Agent\x3ASpyPORT-ischeck=Component
(assert (not (str.in.re X (str.to.re "User-Agent:SpyPORT-ischeck=Component\x0a"))))
; ^\d{3}\s?\d{3}\s?\d{3}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^.*(yourdomain.com).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to.re "\x0ayourdomain") re.allchar (str.to.re "com")))))
; /\bobj\x0a\x20*?\/Pattern\x20*?\x0aendobj\b/i
(assert (not (str.in.re X (re.++ (str.to.re "/obj\x0a") (re.* (str.to.re " ")) (str.to.re "/Pattern") (re.* (str.to.re " ")) (str.to.re "\x0aendobj/i\x0a")))))
; Host\x3A\s+Boss\s+media\x2Etop-banners\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Boss") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.top-banners.com\x0a"))))
(check-sat)
