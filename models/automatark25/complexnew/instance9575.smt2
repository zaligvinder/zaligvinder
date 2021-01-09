(declare-const X String)
; Host\x3Abacktrust\x2EcomconfigINTERNAL\.iniTrojanCurrentDaemonresultsmaster\x2EcomReportMyuntil
(assert (not (str.in.re X (str.to.re "Host:backtrust.comconfigINTERNAL.iniTrojanCurrentDaemonresultsmaster.com\x13ReportMyuntil\x0a"))))
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a"))))
; ^[A-Za-z]{4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; (\+)?([-\._\(\) ]?[\d]{3,20}[-\._\(\) ]?){2,10}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 10) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))) ((_ re.loop 3 20) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))))) (str.to.re "\x0a")))))
(check-sat)
