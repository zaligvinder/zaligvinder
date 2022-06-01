(declare-const X String)
; Toolbarverpop\u{2E}popuptoast\u{2E}comtvshowticketscount\u{2E}yok\u{2E}com
(assert (str.in_re X (str.to_re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\u{a}")))
(check-sat)
