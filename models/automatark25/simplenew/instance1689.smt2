(declare-const X String)
; sports\s+ToolbarScanerX-Mailer\u{3A}Information
(assert (str.in_re X (re.++ (str.to_re "sports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolbarScanerX-Mailer:\u{13}Information\u{a}"))))
(check-sat)
