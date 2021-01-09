(declare-const X String)
; to=.*JMail\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "to=") (re.* re.allchar) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.com\x0a")))))
; /\x2ejpeg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^[a-z][\w\.]+@([\w\-]+\.)+[a-z]{2,7}$/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (re.+ (re.union (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.range "a" "z")) (str.to.re "/i\x0a")))))
; /\x2fib2\x2f$/U
(assert (not (str.in.re X (str.to.re "//ib2//U\x0a"))))
(check-sat)
