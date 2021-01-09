(declare-const X String)
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "scribd") re.allchar (str.to.re "com/doc/2569355/Geo-Distance-Search-with-MySQL\x0a"))))
; /User-Agent\x3a\x20Agent\d{5,9}/Hi
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to.re "/Hi\x0a"))))
; ^(19|20)\d\d[-/.]([1-9]|0[1-9]|1[012])[- /.]([1-9]|0[1-9]|[12][0-9]|3[01])$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "19") (str.to.re "20")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".")) (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a")))))
; \x5BStatic\w+www\.iggsey\.comUser-Agent\x3AX-Mailer\x3aComputer
(assert (str.in.re X (re.++ (str.to.re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.iggsey.comUser-Agent:X-Mailer:\x13Computer\x0a"))))
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (not (str.in.re X (str.to.re "Fen\xeatreEye/dss/cc.2_0_0.TROJAN-\x0a"))))
(check-sat)
