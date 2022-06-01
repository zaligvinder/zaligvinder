(declare-const X String)
; www\u{2E}webcruiser\u{2E}ccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
; username=(.*)&password=(.*)
(assert (not (str.in_re X (re.++ (str.to_re "username=") (re.* re.allchar) (str.to_re "&password=") (re.* re.allchar) (str.to_re "\u{a}")))))
; /SOAPAction\u{3a}[^\r\n]*Get(ServerTime|FileList|File)\u{22}/i
(assert (str.in_re X (re.++ (str.to_re "/SOAPAction:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Get") (re.union (str.to_re "ServerTime") (str.to_re "FileList") (str.to_re "File")) (str.to_re "\u{22}/i\u{a}"))))
(check-sat)
