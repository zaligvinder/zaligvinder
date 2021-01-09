(declare-const X String)
; ToolbarBasedATLRemoteFrom\x3Adcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\x0a"))))
(check-sat)
