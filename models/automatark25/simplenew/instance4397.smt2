(declare-const X String)
; Host\u{3a}===========\u{3E}www\u{2E}onetoolbar\u{2E}com
(assert (str.in_re X (str.to_re "Host:===========>www.onetoolbar.com\u{a}")))
(check-sat)
