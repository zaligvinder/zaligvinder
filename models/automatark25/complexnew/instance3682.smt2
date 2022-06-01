(declare-const X String)
; seqepagqfphv\u{2f}sfdX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "seqepagqfphv/sfdX-Mailer:\u{13}\u{a}")))
; wv=update\.cgidrivesDaysform-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (not (str.in_re X (str.to_re "wv=update.cgidrivesDaysform-data; name=\u{22}pid\u{22}\u{a}"))))
(check-sat)
