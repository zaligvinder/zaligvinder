(declare-const X String)
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (not (str.in.re X (str.to.re "HXDownloadUser-Agent:answerDeletingCookieReferer:\x0a"))))
; ^(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a")))))
; X-OSSproxy\x3a\w+\+Version\+\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fast-look.comwww.maxifiles.com\x0a"))))
; ((^\d{5}$)|(^\d{8}$))|(^\d{5}-\d{3}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))))))
(check-sat)
