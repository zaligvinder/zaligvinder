(declare-const X String)
; ReportIterenetUser-Agent\u{3A}Host\u{3A}KEYLOGGER\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}")))
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in_re X (re.++ (re.+ (str.to_re "(")) (re.* (re.comp (str.to_re ")"))) (re.+ (str.to_re ")")) (str.to_re "\u{a}")))))
(check-sat)
