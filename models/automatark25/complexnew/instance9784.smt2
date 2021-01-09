(declare-const X String)
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mp4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a")))))
; /^\/b\/(letr|req|opt|eve)\/[0-9a-fA-F]{24}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//b/") (re.union (str.to.re "letr") (str.to.re "req") (str.to.re "opt") (str.to.re "eve")) (str.to.re "/") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/U\x0a")))))
(check-sat)
