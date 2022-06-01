(declare-const X String)
; Host\u{3a}YOUR\u{2F}xml\u{2F}toolbar\u{2F}GREATExplorerSecureNet
(assert (str.in_re X (str.to_re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\u{a}")))
(check-sat)
