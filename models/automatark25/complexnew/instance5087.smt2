(declare-const X String)
; UI2AgentConnectedDesktopSubject\u{3A}ixqshv\u{2f}qzccsactualnames\.com
(assert (not (str.in_re X (str.to_re "UI2AgentConnectedDesktopSubject:ixqshv/qzccsactualnames.com\u{a}"))))
; /filename=[^\n]*\u{2e}addin/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}")))))
(check-sat)
