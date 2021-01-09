(declare-const X String)
; (.|[\r\n]){1,5}
(assert (str.in.re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a"))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (not (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a"))))
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (not (str.in.re X (str.to.re "HXDownloadUser-Agent:answerDeletingCookieReferer:\x0a"))))
; (^(\d|,)*\.?\d*[1-9]+\d*$)|(^[1-9]+(\d|,)*\.\d*$)|(^[1-9]+(\d|,)*\d*$)
(assert (str.in.re X (re.union (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re ".") (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.+ (re.range "1" "9")) (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.* (re.range "0" "9"))))))
(check-sat)
