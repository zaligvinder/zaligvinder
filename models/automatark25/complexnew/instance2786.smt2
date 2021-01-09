(declare-const X String)
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a")))))
; ProAgent\d+X-Mailer\x3Abacktrust\x2EcomReferer\x3aSupreme
(assert (str.in.re X (re.++ (str.to.re "ProAgent") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.comReferer:Supreme\x0a"))))
; X-Mailer\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13User-Agent:\x0a"))))
; /\/html\/license_[0-9A-F]{550,}\.html$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//html/license_.html/Ui\x0a") ((_ re.loop 550 550) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F")))))))
(check-sat)
