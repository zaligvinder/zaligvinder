(declare-const X String)
; [ \t]+$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a"))))
; AdTools\sdownloadfile\x2eorg\w+com\x3E[^\n\r]*as\x2Estarware\x2EcomOS\x2FSSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "AdTools") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "as.starware.comOS/SSKCstech.web-nexus.net\x0a")))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (str.in.re X (str.to.re "Validation of Mexican RFC for tax payers individuals\x0a")))
; /^[a-z][\w\.]+@([\w\-]+\.)+[a-z]{2,7}$/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (re.+ (re.union (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.range "a" "z")) (str.to.re "/i\x0a")))))
(check-sat)
