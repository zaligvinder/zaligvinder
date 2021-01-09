(declare-const X String)
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
; Host\x3A\s+Host\x3A.*c=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "c=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a"))))
; ([+]?\d[ ]?[(]?\d{3}[)]?[ ]?\d{2,3}[- ]?\d{2}[- ]?\d{2})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.range "0" "9") (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re " ")) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9"))))))
; /\/index\d{9}\.asp/i
(assert (not (str.in.re X (re.++ (str.to.re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".asp/i\x0a")))))
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "ver") (re.range "0" "9") (str.to.re "Robert") (re.range "0" "9") (str.to.re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\x0a"))))
(check-sat)
