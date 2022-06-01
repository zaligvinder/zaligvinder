(declare-const X String)
; Host\u{3A}backtrust\u{2E}comconfigINTERNAL\.iniTrojanCurrentDaemonresultsmaster\u{2E}comReportMyuntil
(assert (str.in_re X (str.to_re "Host:backtrust.comconfigINTERNAL.iniTrojanCurrentDaemonresultsmaster.com\u{13}ReportMyuntil\u{a}")))
; /ID3\u{3}\u{0}.{5}([TW][A-Z]{3}|COMM)/smi
(assert (str.in_re X (re.++ (str.to_re "/ID3\u{3}\u{0}") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to_re "T") (str.to_re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to_re "COMM")) (str.to_re "/smi\u{a}"))))
; Host\u{3A}[^\n\r]*cache\u{2E}everer\u{2E}com\s+from\.myway\.comToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "cache.everer.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "from.myway.com\u{1b}Toolbar\u{a}")))))
; forum=related\u{2E}yok\u{2E}com\sStarted\!$3
(assert (str.in_re X (re.++ (str.to_re "forum=related.yok.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Started!3\u{a}"))))
(check-sat)
