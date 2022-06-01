(declare-const X String)
; gpstool\u{2e}globaladserver\u{2e}com\daction\u{2E}\w+data2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "data2.activshopper.com\u{a}"))))
; /exploit\/(Exploit(App)?|Loader)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/exploit/") (re.union (re.++ (str.to_re "Exploit") (re.opt (str.to_re "App"))) (str.to_re "Loader")) (str.to_re ".class/ims\u{a}"))))
; \u{2A}PORT2\u{2A}\w+Host\u{3a}\s+jspIDENTIFYserverHOST\u{3A}Subject\u{3A}i\-femdom\u{2E}comUser-Agent\u{3A}log\=\u{7B}IP\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "*PORT2*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jspIDENTIFYserverHOST:Subject:i-femdom.comUser-Agent:log={IP:\u{a}")))))
(check-sat)
