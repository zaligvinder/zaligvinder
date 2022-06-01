(declare-const X String)
; www\u{2E}weepee\u{2E}comhttp\u{D}\u{A}CurrentOwner\u{3A}
(assert (not (str.in_re X (str.to_re "www.weepee.com\u{1b}http\u{d}\u{a}CurrentOwner:\u{a}"))))
(check-sat)
