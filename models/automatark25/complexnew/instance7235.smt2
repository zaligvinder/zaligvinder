(declare-const X String)
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "sIda/sId") (str.to_re "urua/uru")) (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c") (str.to_re "d")) (str.to_re ".classPK/ims\u{a}")))))
; User-Agent\u{3A}Host\u{3A}hasHost\u{3A}ComputerKeylogger\u{2E}com
(assert (not (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}"))))
; Fictionaliufilfwulmfi\u{2f}riuf\.lio
(assert (not (str.in_re X (str.to_re "Fictionaliufilfwulmfi/riuf.lio\u{a}"))))
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
