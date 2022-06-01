(declare-const X String)
; [\s0-9a-zA-Z\;\"\,\<\>\\?\+\=\)\(\\*\&\%\\$\#\.]*
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re ";") (str.to_re "\u{22}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re "?") (str.to_re "+") (str.to_re "=") (str.to_re ")") (str.to_re "(") (str.to_re "*") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "1" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (re.+ (re.range "1" "9"))) (str.to_re "0") (re.++ (re.opt (str.to_re "-")) (str.to_re "0.") (re.+ (re.range "0" "9")))))))
; Server\s+Basic\d+action\u{2E}pioletHost\u{3A}IP-www\u{2E}internetadvertisingcompany\u{2E}biz
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}")))))
(check-sat)
