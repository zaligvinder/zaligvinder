(declare-const X String)
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a"))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (str.in.re X (str.to.re "My/desktop/WinSessionHost:OnlineTPSystem}|\x0a")))
(check-sat)
