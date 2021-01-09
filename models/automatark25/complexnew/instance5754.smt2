(declare-const X String)
; ^(0?[1-9]|1[012])/([012][0-9]|[1-9]|3[01])/([12][0-9]{3})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.range "1" "9") (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/\x0a") (re.union (str.to.re "1") (str.to.re "2")) ((_ re.loop 3 3) (re.range "0" "9"))))))
; Toolbar\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a"))))
; /\x2epfm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pfm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
(check-sat)
