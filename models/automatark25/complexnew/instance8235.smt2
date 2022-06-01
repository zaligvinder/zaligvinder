(declare-const X String)
; fromMinixmlldap\u{3A}\u{2F}\u{2F}\u{2F}bonzibuddy\u{2F}toolbar_domain_redirectUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\u{a}"))))
; Host\u{3A}\u{2c}STATSTimeTotalpassword\u{3B}1\u{3B}Optix
(assert (not (str.in_re X (str.to_re "Host:,STATSTimeTotalpassword;1;Optix\u{a}"))))
; Host\u{3A}Portawww\.thecommunicator\.net
(assert (not (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}"))))
; User-Agent\u{3A}\d+Desktop\sIDENTIFY666User-Agent\u{3A}\u{5B}Static
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}"))))
; ^[0-9]{0,5}[ ]{0,1}[0-9]{0,6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 0 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
