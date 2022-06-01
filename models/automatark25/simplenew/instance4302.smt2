(declare-const X String)
; ToolbarBasedATLRemoteFrom\u{3A}dcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (str.to_re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\u{a}"))))
(check-sat)
