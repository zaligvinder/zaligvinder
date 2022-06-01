(declare-const X String)
; /filename=[^\n]*\u{2e}wmx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmx/i\u{a}"))))
; password\u{3B}1\u{3B}OptixOwner\u{3A}Barwww\u{2E}accoona\u{2E}com
(assert (not (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}"))))
; onAlertMGS-Internal-Web-Manager
(assert (not (str.in_re X (str.to_re "onAlertMGS-Internal-Web-Manager\u{a}"))))
; cyber@yahoo\u{2E}comconfig\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}"))))
; /\u{2e}wax([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wax") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
