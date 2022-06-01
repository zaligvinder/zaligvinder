(declare-const X String)
; AgentCSmtpsidebar\.activeshopper\.comTry2Find
(assert (str.in_re X (str.to_re "AgentCSmtpsidebar.activeshopper.comTry2Find\u{a}")))
; /^\u{3c}meta\u{20}name\u{3d}\u{22}token\u{22}\u{20}content\u{3d}\u{22}\u{a4}[A-F\d]{168}\u{a4}\u{22}\u{2f}\u{3e}$/
(assert (not (str.in_re X (re.++ (str.to_re "/<meta name=\u{22}token\u{22} content=\u{22}\u{a4}") ((_ re.loop 168 168) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "\u{a4}\u{22}/>/\u{a}")))))
; wowokay\d+FTP\s+Host\u{3A}Filtered\u{22}reaction\u{2E}txt\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}")))))
(check-sat)
