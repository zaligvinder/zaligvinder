(declare-const X String)
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a")))))
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a"))))
; Fictionaliufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (str.to.re "Fictionaliufilfwulmfi/riuf.lio\x0a"))))
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
