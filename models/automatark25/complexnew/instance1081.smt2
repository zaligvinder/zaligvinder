(declare-const X String)
; ^http://\w{0,3}.?youtube+\.\w{2,3}/watch\?v=[\w-]{11}
(assert (not (str.in.re X (re.++ (str.to.re "http://") ((_ re.loop 0 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt re.allchar) (str.to.re "youtub") (re.+ (str.to.re "e")) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/watch?v=") ((_ re.loop 11 11) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /^loginpost\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/loginpost|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a"))))
(check-sat)
