(declare-const X String)
; Supreme\d+Host\u{3A}\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9])?$
(assert (str.in_re X (re.++ (str.to_re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to_re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; ^(1[89]|[2-9]\d)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; Daemonwww\u{2E}lookquick\u{2E}comHost\u{3A}
(assert (not (str.in_re X (str.to_re "Daemonwww.lookquick.comHost:\u{a}"))))
; Host\u{3A}.*c=[^\n\r]*KeyloggerHost\u{3A}www\.trackhits\.cc
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "c=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerHost:www.trackhits.cc\u{a}")))))
(check-sat)
