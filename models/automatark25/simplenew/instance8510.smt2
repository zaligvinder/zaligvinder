(declare-const X String)
; Informationsearchnuggetspastb\u{2E}freeprod\u{2E}comOnlineWeb\.fcgi
(assert (str.in_re X (str.to_re "Informationsearchnugget\u{13}spastb.freeprod.comOnlineWeb.fcgi\u{a}")))
(check-sat)
