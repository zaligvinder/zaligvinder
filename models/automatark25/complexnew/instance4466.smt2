(declare-const X String)
; SbAts\d+dcww\u{2E}dmcast\u{2E}comdistID=
(assert (not (str.in_re X (re.++ (str.to_re "SbAts") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=\u{a}")))))
; Supreme\d+Host\u{3A}\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
; [\w\-_\+\(\)]{0,}[\.png|\.PNG]{4}
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "-") (str.to_re "_") (str.to_re "+") (str.to_re "(") (str.to_re ")") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 4 4) (re.union (str.to_re ".") (str.to_re "p") (str.to_re "n") (str.to_re "g") (str.to_re "|") (str.to_re "P") (str.to_re "N") (str.to_re "G"))) (str.to_re "\u{a}")))))
; Port.*Pro.*www\u{2e}proventactics\u{2e}comwv=update\.cgidrivesDays
(assert (str.in_re X (re.++ (str.to_re "Port") (re.* re.allchar) (str.to_re "Pro") (re.* re.allchar) (str.to_re "www.proventactics.comwv=update.cgidrivesDays\u{a}"))))
(check-sat)
