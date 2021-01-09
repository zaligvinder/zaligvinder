(declare-const X String)
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/ezsb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.range "0" "9") (str.to.re "Remotetoolsbar.kuaiso.com\x0a"))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (not (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a")))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* re.allchar) (str.to.re "report") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:kwd-i%3fUser-Agent:www.proventactics.com\x0a"))))
; /^number=[0-9A-F]{32}$/mC
(assert (str.in.re X (re.++ (str.to.re "/number=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/mC\x0a"))))
; /^tcpdata\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/tcpdata|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
(check-sat)
