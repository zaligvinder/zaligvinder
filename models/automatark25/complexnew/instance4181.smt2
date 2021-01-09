(declare-const X String)
; ^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.union (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re ",") (re.* (re.range "0" "9")) (re.range "0" "9")))) (str.to.re "\x0a")))))
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (not (str.in.re X (str.to.re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\x13195.225.Subject:\x0a"))))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (str.to.re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\x0a")))
(check-sat)
