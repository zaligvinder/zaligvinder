(declare-const X String)
; Fictional\sHost\u{3A}Wordmyway\.com
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.com\u{a}"))))
; User-Agent\u{3A}[^\n\r]*Host\u{3A}.*\u{2F}toolbar\u{2F}Host\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/toolbar/Host:User-Agent:\u{a}"))))
(check-sat)
