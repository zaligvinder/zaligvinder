(declare-const X String)
; ^(([0-2])?([0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "2")) (re.range "0" "9")))))
; ([\r\n ]*//[^\r\n]*)+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a")))))
; ^0[1-6]{1}(([0-9]{2}){4})|((\s[0-9]{2}){4})|((-[0-9]{2}){4})$
(assert (str.in.re X (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 4 4) ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 4 4) (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x2ewm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; dialup\x5fvpn\x40hermangroup\x2Eorg\s+www\x2Epeer2mail\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "dialup_vpn@hermangroup.org") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a"))))
(check-sat)
