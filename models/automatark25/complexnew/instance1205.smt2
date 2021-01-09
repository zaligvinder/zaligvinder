(declare-const X String)
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "OSSProxy") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.com\x0a")))))
; (^\d{5}\-\d{3}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))
; ^<a[^>]*(http://[^"]*)[^>]*>([ 0-9a-zA-Z]+)</a>$
(assert (str.in.re X (re.++ (str.to.re "<a") (re.* (re.comp (str.to.re ">"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.+ (re.union (str.to.re " ") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "</a>\x0ahttp://") (re.* (re.comp (str.to.re "\x22"))))))
(check-sat)
