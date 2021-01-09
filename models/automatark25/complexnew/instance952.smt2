(declare-const X String)
; ^\d+\*\d+\*\d+$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /^([A-Za-z0-9+\x2f]{4})*([A-Za-z0-9+\x2f]{4}|[A-Za-z0-9+\x2f]{3}=|[A-Za-z0-9+\x2f]{2}==)$/mP
(assert (str.in.re X (re.++ (str.to.re "/") (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/")))) (re.union ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=="))) (str.to.re "/mP\x0a"))))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (not (str.in.re X (re.++ (str.to.re "/)\x0d\x0aHost: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0d\x0aCache-Control: no-cache\x0d\x0a\x0d\x0a/\x0a")))))
; /^guid=[a-f0-9]{32}\x26state=(LOST|WORK|WAIT|RUN)/P
(assert (str.in.re X (re.++ (str.to.re "/guid=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&state=") (re.union (str.to.re "LOST") (str.to.re "WORK") (str.to.re "WAIT") (str.to.re "RUN")) (str.to.re "/P\x0a"))))
; Root\s+insert\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrectClientsConnected-Host\x3A\x2APORT3\x2A
(assert (not (str.in.re X (re.++ (str.to.re "Root") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;IncorrectClientsConnected-Host:*PORT3*\x0a")))))
(check-sat)
