(declare-const X String)
; / \x2D .{1,20}\x07(LAN|PROXY|MODEM|MODEM BUSY|UNKNOWN)\x07Win/
(assert (not (str.in.re X (re.++ (str.to.re "/ - ") ((_ re.loop 1 20) re.allchar) (str.to.re "\x07") (re.union (str.to.re "LAN") (str.to.re "PROXY") (str.to.re "MODEM") (str.to.re "MODEM BUSY") (str.to.re "UNKNOWN")) (str.to.re "\x07Win/\x0a")))))
(check-sat)
