(declare-const X String)
; toolbar_domain_redirectlibManager\u{2E}dll\u{5E}get
(assert (str.in_re X (str.to_re "toolbar_domain_redirectlibManager.dll^get\u{a}")))
(check-sat)
