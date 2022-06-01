(declare-const X String)
; ProjectHost\u{3A}logHost\u{3A}www\u{2E}snap\u{2E}comGoogle-\>rtServidor\u{2E}
(assert (not (str.in_re X (str.to_re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\u{13}\u{a}"))))
(check-sat)
