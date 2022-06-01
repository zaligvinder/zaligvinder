(declare-const X String)
; Bar\u{2F}newsurfer4\u{2F}client=BysooTBADdcww\u{2E}dmcast\u{2E}comc\.goclick\.com
(assert (str.in_re X (str.to_re "Bar/newsurfer4/client=BysooTBADdcww.dmcast.comc.goclick.com\u{a}")))
(check-sat)
