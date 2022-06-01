(declare-const X String)
; wv=update\.cgidrivesDaysform-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (str.in_re X (str.to_re "wv=update.cgidrivesDaysform-data; name=\u{22}pid\u{22}\u{a}")))
(check-sat)
