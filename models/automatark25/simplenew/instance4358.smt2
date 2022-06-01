(declare-const X String)
; www\u{2E}altnet\u{2E}com[^\n\r]*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.altnet.com\u{1b}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(check-sat)
