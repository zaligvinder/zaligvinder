(declare-const X String)
; www\u{2E}slinkyslate.*Redirector\u{22}.*Host\u{3A}toolbarplace\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "www.slinkyslate") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:toolbarplace.com\u{a}"))))
(check-sat)
