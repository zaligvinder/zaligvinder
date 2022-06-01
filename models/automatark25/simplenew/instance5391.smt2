(declare-const X String)
; RootviewNetControl\u{2E}Serverdata2\.activshopper\.com
(assert (not (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}"))))
(check-sat)
