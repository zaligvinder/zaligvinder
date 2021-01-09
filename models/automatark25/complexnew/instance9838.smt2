(declare-const X String)
; Keylogger\w+Owner\x3A\dBetaWordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (not (str.in.re X (re.++ (str.to.re "Keylogger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccsServer\x00MyBYReferer:www.ccnnlc.com\x13\x04\x00\x0a")))))
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "FreeAccessBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostie") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowser") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:195.225.Subject:\x0a"))))
; ((^([\d]{1,3})(,{1}([\d]{3}))*)|(^[\d]*))((\.{1}[\d]{2})?$)
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ ((_ re.loop 1 1) (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.* (re.range "0" "9"))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
