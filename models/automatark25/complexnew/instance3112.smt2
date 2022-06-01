(declare-const X String)
; /filename=[^\n]*\u{2e}p2g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".p2g/i\u{a}"))))
; X-Mailer\u{3A}\s+www\.iggsey\.com
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.iggsey.com\u{a}"))))
; Host\u{3A}backtrust\u{2E}comconfigINTERNAL\.iniTrojanCurrentDaemonresultsmaster\u{2E}comReportMyuntil
(assert (not (str.in_re X (str.to_re "Host:backtrust.comconfigINTERNAL.iniTrojanCurrentDaemonresultsmaster.com\u{13}ReportMyuntil\u{a}"))))
; info\s+wjpropqmlpohj\u{2f}lo\u{2F}toolbar\u{2F}supremetbhoroscope2Cookie\u{3a}
(assert (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\u{a}"))))
; stats\u{2e}drivecleaner\u{2e}com\sPARSERInformationurl=Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "stats.drivecleaner.com\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PARSERInformationurl=Host:\u{a}")))))
(check-sat)
