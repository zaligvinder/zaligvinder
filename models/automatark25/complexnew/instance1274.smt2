(declare-const X String)
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a"))))
; ^[^\s]+@[^\.][^\s]{1,}\.[A-Za-z]{2,10}$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "@") (re.comp (str.to.re ".")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".") ((_ re.loop 2 10) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; \x7D\x7BTrojan\x3A\w+by\d+to\w+dddlogin\x2Edudu\x2EcomSurveillanceIPOblivion
(assert (not (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "by") (re.+ (re.range "0" "9")) (str.to.re "to") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "dddlogin.dudu.comSurveillance\x13IPOblivion\x0a")))))
; /\/[a-z]{1,4}\x2ehtml\x3f0\x2e[0-9]{15,}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re ".html?0./U\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)
