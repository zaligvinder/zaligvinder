(declare-const X String)
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aLocation: https:") ((_ re.loop 2 2) (str.to.re "/")) (str.to.re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/"))) (str.to.re "/avcheck.exe\x0d\x0a\x0d\x0a/H\x0a")))))
; (\d+)?-?(\d+)-(\d+)
(assert (str.in.re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (str.in.re X (re.++ (str.to.re "ppcdomain.co.uk") (re.* re.allchar) (str.to.re "Spy-Locked") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/r/keys/keysS:Users\x5cIterenet\x0a"))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* re.allchar) (str.to.re "report") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:kwd-i%3fUser-Agent:www.proventactics.com\x0a"))))
; ^[a-zA-Z]+(\.[a-zA-Z]+)+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
(check-sat)
