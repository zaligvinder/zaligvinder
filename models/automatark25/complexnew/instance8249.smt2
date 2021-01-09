(declare-const X String)
; Logger.*Host\x3A.*\x2Fcommunicatortb\x7croogoo\x7c
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/communicatortb|roogoo|\x0a"))))
; ^((0?[1-9]|1[012])(:[0-5]\d){1,2}(\ [AaPp][Mm]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) ((_ re.loop 1 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re " ") (re.union (str.to.re "A") (str.to.re "a") (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "M") (str.to.re "m"))))))
; ^[A-Z]{3}(\s)?[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a"))))
(check-sat)
