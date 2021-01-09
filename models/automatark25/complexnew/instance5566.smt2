(declare-const X String)
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovplLogtraffbest\x2EbizAdToolsLoggedsidesearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to.re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\x0a")))))
; ^(GB)?(\ )?[0-9]\d{2}(\ )?[0-9]\d{3}(\ )?(0[0-9]|[1-8][0-9]|9[0-6])(\ )?([0-9]\d{2})?|(GB)?(\ )?GD(\ )?([0-4][0-9][0-9])|(GB)?(\ )?HA(\ )?([5-9][0-9][0-9])$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "8") (re.range "0" "9")) (re.++ (str.to.re "9") (re.range "0" "6"))) (re.opt (str.to.re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (str.to.re "GD") (re.opt (str.to.re " ")) (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (str.to.re "HA") (re.opt (str.to.re " ")) (str.to.re "\x0a") (re.range "5" "9") (re.range "0" "9") (re.range "0" "9"))))))
; /\x2fn\.php\?h=[a-zA-Z0-9]*?\&s=[a-zA-Z0-9]{1,5}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//n.php?h=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&s=") ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (str.in.re X (str.to.re "X-Mailer:\x13wlpgskmv/lwzo.qv#Subject:Activity\x0a")))
(check-sat)
