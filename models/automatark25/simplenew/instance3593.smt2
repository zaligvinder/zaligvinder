(declare-const X String)
; Host\x3AHost\x3asidebar\.activeshopper\.com
(assert (str.in.re X (str.to.re "Host:Host:sidebar.activeshopper.com\x0a")))
(check-sat)
