(declare-const X String)
; ^[a-zA-Z]$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; User-Agent\x3A.*Host\x3A.*w3whowww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "w3whowww.sogou.com\x0a")))))
(check-sat)
