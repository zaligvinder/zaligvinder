(declare-const X String)
; /filename=[^\n]*\x2esmi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a"))))
; /^\d+$/P
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "/P\x0a")))))
; [+-](^0.*)
(assert (str.in.re X (re.++ (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "\x0a0") (re.* re.allchar))))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in.re X (str.to.re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\x0a"))))
(check-sat)
