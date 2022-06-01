(declare-const X String)
; Host\u{3A}\u{2F}ta\u{2F}NEWS\u{2F}yayad\u{2E}com
(assert (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{a}")))
(check-sat)
