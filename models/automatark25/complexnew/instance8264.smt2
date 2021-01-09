(declare-const X String)
; Information.*Firewall\s+ised2k\xc0STATUS\xc0Server
(assert (str.in.re X (re.++ (str.to.re "Information") (re.* re.allchar) (str.to.re "Firewall") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ised2k\xc0STATUS\xc0Server\x13\x0a"))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (not (str.in.re X (str.to.re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\x0a"))))
; ^(([0-2])?([0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "2")) (re.range "0" "9"))))
(check-sat)
