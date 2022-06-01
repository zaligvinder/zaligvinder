(declare-const X String)
; /\u{2e}ttf([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ttf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Ready[^\n\r]*User-Agent\u{3A}\s+Client\dFrom\u{3A}Webtool\u{2E}world2\u{2E}cnUser-Agent\u{3A}User-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}"))))
; LOG\w+PARSER\d+scn\u{2e}mystoretoolbar\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSER") (re.+ (re.range "0" "9")) (str.to_re "scn.mystoretoolbar.com\u{13}\u{a}"))))
; (\+1|\+|1)|([^0-9])
(assert (not (str.in_re X (re.union (re.++ (re.range "0" "9") (str.to_re "\u{a}")) (str.to_re "+1") (str.to_re "+") (str.to_re "1")))))
; ([A-Za-z]{2}|[A-Za-z]\d|\d[A-Za-z])[A-Za-z]{0,1}\d(\d{0,3})[A-Za-z]{0,1}
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")) (re.++ (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.range "0" "9") ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
(check-sat)
