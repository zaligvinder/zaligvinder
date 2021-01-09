(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; /filename=[^\n]*\x2emka/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a")))))
; quick\x2Eqsrch\x2Ecom\s+Apofis\d+ToolBar
(assert (str.in.re X (re.++ (str.to.re "quick.qsrch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Apofis") (re.+ (re.range "0" "9")) (str.to.re "ToolBar\x0a"))))
; news\s+Host\x3A.*Peerwww\x2Elocators\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "news") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Peerwww.locators.com\x0a")))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\x13\x0a"))))
(check-sat)
