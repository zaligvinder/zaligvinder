(declare-const X String)
; Host\x3Abacktrust\x2EcomconfigINTERNAL\.iniTrojanCurrentDaemonresultsmaster\x2EcomReportMyuntil
(assert (str.in.re X (str.to.re "Host:backtrust.comconfigINTERNAL.iniTrojanCurrentDaemonresultsmaster.com\x13ReportMyuntil\x0a")))
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (str.in.re X (re.++ (str.to.re "/ID3\x03\x00") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to.re "T") (str.to.re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to.re "COMM")) (str.to.re "/smi\x0a"))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a")))))
; forum=related\x2Eyok\x2Ecom\sStarted\!$3
(assert (str.in.re X (re.++ (str.to.re "forum=related.yok.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Started!3\x0a"))))
(check-sat)
