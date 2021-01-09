(declare-const X String)
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (not (str.in.re X (re.++ (str.to.re "SbAts") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=\x0a")))))
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (not (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystem\x0a")))))
; [\w\-_\+\(\)]{0,}[\.png|\.PNG]{4}
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "_") (str.to.re "+") (str.to.re "(") (str.to.re ")") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 4 4) (re.union (str.to.re ".") (str.to.re "p") (str.to.re "n") (str.to.re "g") (str.to.re "|") (str.to.re "P") (str.to.re "N") (str.to.re "G"))) (str.to.re "\x0a")))))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a"))))
(check-sat)
