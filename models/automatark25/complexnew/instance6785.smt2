(declare-const X String)
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (str.to.re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\x0a")))
; [\(]{1,}[^)]*[)]{1,}
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "(")) (re.* (re.comp (str.to.re ")"))) (re.+ (str.to.re ")")) (str.to.re "\x0a")))))
(check-sat)
