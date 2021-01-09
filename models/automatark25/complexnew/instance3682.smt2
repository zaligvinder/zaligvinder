(declare-const X String)
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in.re X (str.to.re "seqepagqfphv/sfdX-Mailer:\x13\x0a")))
; wv=update\.cgidrivesDaysform-data\x3B\x20name=\x22pid\x22
(assert (not (str.in.re X (str.to.re "wv=update.cgidrivesDaysform-data; name=\x22pid\x22\x0a"))))
(check-sat)
