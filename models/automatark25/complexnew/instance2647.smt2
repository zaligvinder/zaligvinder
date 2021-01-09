(declare-const X String)
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a")))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (not (str.in.re X (re.++ (str.to.re "Google") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:FILESIZE>\x13\x0a")))))
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "RXnewads1.comSPYcom/index.php?tpid=\x0a"))))
(check-sat)
