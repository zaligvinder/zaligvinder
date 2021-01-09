(declare-const X String)
; /\&k=\d+($|\&h=)/U
(assert (str.in.re X (re.++ (str.to.re "/&k=") (re.+ (re.range "0" "9")) (str.to.re "&h=/U\x0a"))))
; /filename=[^\n]*\x2esvg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".svg/i\x0a"))))
; ^((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".") (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".") (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".") (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")))))))
; url=\d+Host\x3A.*backtrust\x2Ecomv\x2ELoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "backtrust.comv.LoginHost:/friendship/email_thank_you?\x0a")))))
; (.*\.([wW][mM][aA])|([mM][pP][3])$)
(assert (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".") (re.union (str.to.re "w") (str.to.re "W")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "a") (str.to.re "A"))) (re.++ (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "p") (str.to.re "P")) (str.to.re "3"))) (str.to.re "\x0a"))))
(check-sat)
