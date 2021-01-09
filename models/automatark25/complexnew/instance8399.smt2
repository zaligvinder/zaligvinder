(declare-const X String)
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a")))
; ^(([1-9]|[0-2]\d|[3][0-1])\.([1-9]|[0]\d|[1][0-2])\.[2][0]\d{2})$|^(([1-9]|[0-2]\d|[3][0-1])\.([1-9]|[0]\d|[1][0-2])\.[2][0]\d{2}\s([1-9]|[0-1]\d|[2][0-3])\:[0-5]\d)$
(assert (str.in.re X (re.union (re.++ (re.union (re.range "1" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re ".") (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ".20") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.union (re.range "1" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re ".") (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ".20") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.range "1" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
; /\x2eram?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ra") (re.opt (str.to.re "m")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ProPOWRSTRPquick\x2Eqsrch\x2EcomReferer\x3A
(assert (str.in.re X (str.to.re "ProPOWRSTRPquick.qsrch.comReferer:\x0a")))
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (str.in.re X (re.++ (re.* (re.comp (str.to.re "*"))) (re.opt (str.to.re "*")) (re.* (re.comp (str.to.re "*"))) (str.to.re "\x0a"))))
(check-sat)
