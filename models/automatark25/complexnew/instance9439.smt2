(declare-const X String)
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* re.allchar) (str.to.re "report") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:kwd-i%3fUser-Agent:www.proventactics.com\x0a")))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (str.in.re X (str.to.re "client.baigoo.comUser:\x0a")))
; ^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
(check-sat)
