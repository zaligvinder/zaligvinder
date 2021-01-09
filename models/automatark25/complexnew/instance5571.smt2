(declare-const X String)
; ^[-+]?[0-9]\d{0,2}(\.\d{1,2})?%?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "0" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; Host\x3A\s+Boss\s+media\x2Etop-banners\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Boss") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.top-banners.com\x0a")))))
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";")))))
; ^(\[a-zA-Z '\]+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a[a-zA-Z '") (re.+ (str.to.re "]"))))))
; /\.php\?catalogp\=\d{2}$/U
(assert (str.in.re X (re.++ (str.to.re "/.php?catalogp=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
