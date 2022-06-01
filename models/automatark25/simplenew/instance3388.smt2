(declare-const X String)
; www\u{2E}yoogee\u{2E}comserverHost\u{3A}ref\u{3D}\u{25}user\u{5F}id
(assert (str.in_re X (str.to_re "www.yoogee.com\u{13}serverHost:ref=%user_id\u{a}")))
(check-sat)
