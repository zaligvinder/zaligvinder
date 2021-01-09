(declare-const X String)
; /filename=[^\n]*\x2esln/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a"))))
; nick_name=CIA-Testsearchnuggetprotocolframe_ver2MailerToolbarUser-Agent\x3afromEnTrY
(assert (str.in.re X (str.to.re "nick_name=CIA-Testsearchnugget\x13protocolframe_ver2MailerToolbarUser-Agent:fromEnTrY\x0a")))
; /(bot|spider|crawler|google)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "bot") (str.to.re "spider") (str.to.re "crawler") (str.to.re "google")) (str.to.re "/\x0a")))))
; /filename=[^\n]*\x2ejpe/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpe/i\x0a"))))
; configINTERNAL\.ini\s+User-Agent\x3A\s+Host\x3ASubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:\x0a")))))
(check-sat)
