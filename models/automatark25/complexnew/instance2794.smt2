(declare-const X String)
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (not (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystem\x0a")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9])?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^(1[89]|[2-9]\d)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; Daemonwww\x2Elookquick\x2EcomHost\x3A
(assert (not (str.in.re X (str.to.re "Daemonwww.lookquick.comHost:\x0a"))))
; Host\x3A.*c=[^\n\r]*KeyloggerHost\x3Awww\.trackhits\.cc
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "c=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerHost:www.trackhits.cc\x0a")))))
(check-sat)
