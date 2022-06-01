(declare-const X String)
; ad\u{2E}searchsquire\u{2E}com[^\n\r]*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
(check-sat)
