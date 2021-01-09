(declare-const X String)
; ^\s+|\s+$
(assert (not (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to.re "\x0d\x0a/Hm\x0a")))))
; Root\s+insert\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrectClientsConnected-Host\x3A\x2APORT3\x2A
(assert (str.in.re X (re.++ (str.to.re "Root") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;IncorrectClientsConnected-Host:*PORT3*\x0a"))))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a"))))
; ^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "1")) (re.opt (str.to.re "-")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a") (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)
