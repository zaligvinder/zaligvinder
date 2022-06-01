(declare-const X String)
; (.|[\r\n]){1,5}
(assert (str.in_re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}"))))
; PortweatherX-Mailer\u{3a}User-Agent\u{3A}Toolbar
(assert (not (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}"))))
; HXDownloadUser-Agent\u{3A}answerDeletingCookieReferer\u{3A}
(assert (not (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{a}"))))
; (^(\d|,)*\.?\d*[1-9]+\d*$)|(^[1-9]+(\d|,)*\.\d*$)|(^[1-9]+(\d|,)*\d*$)
(assert (str.in_re X (re.union (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.union (re.range "0" "9") (str.to_re ","))) (str.to_re ".") (re.* (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.+ (re.range "1" "9")) (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.* (re.range "0" "9"))))))
(check-sat)
