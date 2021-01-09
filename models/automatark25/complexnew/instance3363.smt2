(declare-const X String)
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "FreeAccessBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostie") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowser") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:195.225.Subject:\x0a")))))
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:/tba/From:\x0a"))))
(check-sat)
