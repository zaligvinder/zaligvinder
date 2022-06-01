(declare-const X String)
; ^[0-9]+\.?[0-9]?[0-9]?[0,5]?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.union (str.to_re "0") (str.to_re ",") (str.to_re "5"))) (str.to_re "\u{a}")))))
; Ts2\u{2F}\s+insertinfoSnakeUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insertinfoSnakeUser-Agent:\u{a}"))))
; (refs|references|re|closes|closed|close|see|fixes|fixed|fix|addresses) #(\d+)(( and |, | & | )#(\d+))*
(assert (str.in_re X (re.++ (re.union (str.to_re "refs") (str.to_re "references") (str.to_re "re") (str.to_re "closes") (str.to_re "closed") (str.to_re "close") (str.to_re "see") (str.to_re "fixes") (str.to_re "fixed") (str.to_re "fix") (str.to_re "addresses")) (str.to_re " #") (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to_re " and ") (str.to_re ", ") (str.to_re " & ") (str.to_re " ")) (str.to_re "#") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ContactHost\u{3a}Host\u{3A}FloodedFictionalUser-Agent\u{3A}Host\u{3a}
(assert (not (str.in_re X (str.to_re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\u{a}"))))
; ([0-9]+)\s(d)\s(([0-1][0-9])|([2][0-3])):([0-5][0-9]):([0-5][0-9])
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "d") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
