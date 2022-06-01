(declare-const X String)
; ';([dmstrl])([ .,?!\)\\/<])
(assert (not (str.in_re X (re.++ (str.to_re "';") (re.union (str.to_re "d") (str.to_re "m") (str.to_re "s") (str.to_re "t") (str.to_re "r") (str.to_re "l")) (re.union (str.to_re " ") (str.to_re ".") (str.to_re ",") (str.to_re "?") (str.to_re "!") (str.to_re ")") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "<")) (str.to_re "\u{a}")))))
; User-Agent\u{3A}readyHost\u{3A}Host\u{3A}Subject\u{3A}wininetproducts
(assert (not (str.in_re X (str.to_re "User-Agent:readyHost:Host:Subject:wininetproducts\u{a}"))))
; ^0[234679]{1}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ (str.to_re "0") ((_ re.loop 1 1) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
