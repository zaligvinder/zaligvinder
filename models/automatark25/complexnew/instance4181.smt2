(declare-const X String)
; ^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.union (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to_re ",") (re.* (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; 3ASoftwarephpinfoSpy\u{2E}nbdMailerX-Mailer\u{3A}195\.225\.Subject\u{3a}
(assert (not (str.in_re X (str.to_re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\u{13}195.225.Subject:\u{a}"))))
; ReportIterenetUser-Agent\u{3A}Host\u{3A}KEYLOGGER\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (str.in_re X (str.to_re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\u{a}")))
(check-sat)
