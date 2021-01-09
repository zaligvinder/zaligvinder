(declare-const X String)
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (str.in.re X (str.to.re "My/desktop/WinSessionHost:OnlineTPSystem}|\x0a")))
; ^[ABCGHJMPQRTWXYZ]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "M") (str.to.re "P") (str.to.re "Q") (str.to.re "R") (str.to.re "T") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (str.to.re "Z")) (str.to.re "\x0a")))))
; (01*0|1)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "0") (re.* (str.to.re "1")) (str.to.re "0")) (str.to.re "1"))) (str.to.re "\x0a")))))
(check-sat)
