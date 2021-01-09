(declare-const X String)
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lnk/i\x0a")))))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in.re X (str.to.re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\x0a"))))
; /[0-9a-fA-F]{8}[a-z]{6}.php/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 6 6) (re.range "a" "z")) re.allchar (str.to.re "php/\x0a"))))
(check-sat)
