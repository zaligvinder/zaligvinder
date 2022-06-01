(declare-const X String)
; toolbar_domain_redirectlibManager\u{2E}dll\u{5E}get
(assert (not (str.in_re X (str.to_re "toolbar_domain_redirectlibManager.dll^get\u{a}"))))
; /\u{2e}mp4([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mp4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
