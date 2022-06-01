(declare-const X String)
; started\u{2E}.*\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "started.") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV\u{a}"))))
; ^([a-zA-Z0-9\-]{2,80})$
(assert (str.in_re X (re.++ ((_ re.loop 2 80) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re "\u{a}"))))
(check-sat)
