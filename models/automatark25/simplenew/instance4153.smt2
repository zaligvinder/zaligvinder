(declare-const X String)
; wv=update\.cgidrivesDaysform-data\x3B\x20name=\x22pid\x22
(assert (str.in.re X (str.to.re "wv=update.cgidrivesDaysform-data; name=\x22pid\x22\x0a")))
(check-sat)
