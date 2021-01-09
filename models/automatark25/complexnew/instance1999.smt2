(declare-const X String)
; Logger.*Host\x3A.*\x2Fcommunicatortb\x7croogoo\x7c
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/communicatortb|roogoo|\x0a"))))
; ^0[1-9]\d{7,8}$
(assert (not (str.in.re X (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2eru\/\w+\?\d$/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.ru/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "?") (re.range "0" "9") (str.to.re "/miU\x0a")))))
(check-sat)
