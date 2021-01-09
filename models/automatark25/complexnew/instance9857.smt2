(declare-const X String)
; ^(0+[1-9]|[1-9])[0-9]*$
(assert (str.in.re X (re.++ (re.union (re.++ (re.+ (str.to.re "0")) (re.range "1" "9")) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.* (str.to.re "@"))) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (str.to.re ".")) (re.* (str.to.re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re "."))))
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a")))))
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a")))))
(check-sat)
