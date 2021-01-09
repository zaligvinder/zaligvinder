(declare-const X String)
; User-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; ^(([0-9]|1[0-9]|2[0-4])(\.[0-9][0-9]?)?)$|([2][5](\.[0][0]?)?)$
(assert (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to.re "\x0a25") (re.opt (re.++ (str.to.re ".0") (re.opt (str.to.re "0"))))))))
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (str.in.re X (re.++ (str.to.re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to.re "TM_SEARCH3engineto=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":\x0a"))))
; /\x0d\x0aHost\x3a\x20[^\x0d\x0a\x2e]+\x2e[^\x0d\x0a\x2e]+(\x3a\d{1,5})?\x0d\x0a\x0d\x0a$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a\x0d\x0a/H\x0a")))))
(check-sat)
