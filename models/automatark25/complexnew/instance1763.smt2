(declare-const X String)
; configINTERNAL\.ini.*SecureNet\s+User-Agent\u{3A}register\.asp
(assert (not (str.in_re X (re.++ (str.to_re "configINTERNAL.ini") (re.* re.allchar) (str.to_re "SecureNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:register.asp\u{a}")))))
; Host\u{3a}YOUR\u{2F}xml\u{2F}toolbar\u{2F}GREATExplorerSecureNet
(assert (str.in_re X (str.to_re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\u{a}")))
; /filename=[^\n]*\u{2e}avi/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".avi/i\u{a}")))))
; EFError.*\u{2F}cs\u{2F}pop4\u{2F}[^\n\r]*
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)
