(declare-const X String)
; RootviewNetControl\u{2E}Serverdata2\.activshopper\.com
(assert (not (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}"))))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
(check-sat)
