(declare-const X String)
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a"))))
(check-sat)
