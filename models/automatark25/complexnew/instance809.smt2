(declare-const X String)
; ';([dmstrl])([ .,?!\)\\/<])
(assert (not (str.in.re X (re.++ (str.to.re "';") (re.union (str.to.re "d") (str.to.re "m") (str.to.re "s") (str.to.re "t") (str.to.re "r") (str.to.re "l")) (re.union (str.to.re " ") (str.to.re ".") (str.to.re ",") (str.to.re "?") (str.to.re "!") (str.to.re ")") (str.to.re "\x5c") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a")))))
; User-Agent\x3AreadyHost\x3AHost\x3ASubject\x3Awininetproducts
(assert (not (str.in.re X (str.to.re "User-Agent:readyHost:Host:Subject:wininetproducts\x0a"))))
; ^0[234679]{1}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
