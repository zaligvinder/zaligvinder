(declare-const X String)
; JMailReportgpstool\u{2e}globaladserver\u{2e}com
(assert (str.in_re X (str.to_re "JMailReportgpstool.globaladserver.com\u{a}")))
(check-sat)
