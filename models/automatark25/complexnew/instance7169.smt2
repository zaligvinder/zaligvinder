(declare-const X String)
; ^[0-9]+\.?[0-9]?[0-9]?[0,5]?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re ",") (str.to.re "5"))) (str.to.re "\x0a")))))
; Ts2\x2F\s+insertinfoSnakeUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insertinfoSnakeUser-Agent:\x0a"))))
; (refs|references|re|closes|closed|close|see|fixes|fixed|fix|addresses) #(\d+)(( and |, | & | )#(\d+))*
(assert (str.in.re X (re.++ (re.union (str.to.re "refs") (str.to.re "references") (str.to.re "re") (str.to.re "closes") (str.to.re "closed") (str.to.re "close") (str.to.re "see") (str.to.re "fixes") (str.to.re "fixed") (str.to.re "fix") (str.to.re "addresses")) (str.to.re " #") (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to.re " and ") (str.to.re ", ") (str.to.re " & ") (str.to.re " ")) (str.to.re "#") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; ContactHost\x3aHost\x3AFloodedFictionalUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (str.to.re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\x0a"))))
; ([0-9]+)\s(d)\s(([0-1][0-9])|([2][0-3])):([0-5][0-9]):([0-5][0-9])
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "d") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
