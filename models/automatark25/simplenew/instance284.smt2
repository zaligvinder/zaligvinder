(declare-const X String)
; ServerHost\u{3A}tid\u{3D}\u{25}toolbar\u{5F}idcomtrustyfiles\u{2E}com
(assert (not (str.in_re X (str.to_re "ServerHost:tid=%toolbar_idcomtrustyfiles.com\u{a}"))))
(check-sat)
