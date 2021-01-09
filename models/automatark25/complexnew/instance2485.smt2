(declare-const X String)
; (^(09|9)[1][1-9]\\d{7}$)|(^(09|9)[3][12456]\\d{7}$)
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "1") (re.range "1" "9") (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "09") (str.to.re "9")) (str.to.re "3") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "4") (str.to.re "5") (str.to.re "6")) (str.to.re "\x5c") ((_ re.loop 7 7) (str.to.re "d"))))))
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a"))))
; /\x2emov([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mov") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
