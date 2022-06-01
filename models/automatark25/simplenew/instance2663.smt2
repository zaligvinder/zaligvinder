(declare-const X String)
; User-Agent\u{3A}[^\n\r]*Host\u{3A}.*\u{2F}toolbar\u{2F}Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/toolbar/Host:User-Agent:\u{a}")))))
(check-sat)
