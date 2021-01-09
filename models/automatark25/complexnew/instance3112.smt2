(declare-const X String)
; /filename=[^\n]*\x2ep2g/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a"))))
; X-Mailer\x3A\s+www\.iggsey\.com
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.com\x0a"))))
; Host\x3Abacktrust\x2EcomconfigINTERNAL\.iniTrojanCurrentDaemonresultsmaster\x2EcomReportMyuntil
(assert (not (str.in.re X (str.to.re "Host:backtrust.comconfigINTERNAL.iniTrojanCurrentDaemonresultsmaster.com\x13ReportMyuntil\x0a"))))
; info\s+wjpropqmlpohj\x2flo\x2Ftoolbar\x2Fsupremetbhoroscope2Cookie\x3a
(assert (str.in.re X (re.++ (str.to.re "info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\x0a"))))
; stats\x2edrivecleaner\x2ecom\sPARSERInformationurl=Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "stats.drivecleaner.com\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSERInformationurl=Host:\x0a")))))
(check-sat)
