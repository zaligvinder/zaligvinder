(declare-const X String)
; ^([1-9]+)?[02468]$
(assert (str.in_re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (str.to_re "\u{a}"))))
; password\u{3B}1\u{3B}OptixOwner\u{3A}Barwww\u{2E}accoona\u{2E}com
(assert (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}")))
; FTP\s+\u{7D}\u{7B}Port\u{3A}\s+Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; engineResultUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
(check-sat)
