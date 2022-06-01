(declare-const X String)
; Host\u{3A}.*rt[^\n\r]*Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "rt") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:\u{a}")))))
(check-sat)
