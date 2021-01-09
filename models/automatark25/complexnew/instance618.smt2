(declare-const X String)
; ^[-+]?\d*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; /^[A-Z0-9._-]+@[A-Z0-9.-]+\.[A-Z0-9.-]+$/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/i\x0a")))))
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\x5Chome\/lordofsearch
(assert (not (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.range "0" "9")) (str.to.re "informationWinInetEvilFTPOSSProxy\x5chome/lordofsearch\x0a")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (not (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiTrojanHost:\x0a"))))
; on\w+Host\x3AComputerKeylogger\x2EcomHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:ComputerKeylogger.comHost:User-Agent:\x0a"))))
(check-sat)
