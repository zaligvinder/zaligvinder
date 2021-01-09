(declare-const X String)
; [0-9]+|-[0-9]+
(assert (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; AdTools\sdownloadfile\x2eorg\w+com\x3E[^\n\r]*as\x2Estarware\x2EcomOS\x2FSSKCstech\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "AdTools") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "as.starware.comOS/SSKCstech.web-nexus.net\x0a"))))
; /\x2exlw([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xlw") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2emet([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.met") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
