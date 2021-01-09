(declare-const X String)
; /filename=[^\n]*\x2eoga/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".oga/i\x0a")))))
; /\x253D$/Im
(assert (not (str.in.re X (str.to.re "/%3D/Im\x0a"))))
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re "|") (str.to.re ".")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (not (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a"))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (not (str.in.re X (str.to.re "My/desktop/WinSessionHost:OnlineTPSystem}|\x0a"))))
(check-sat)
