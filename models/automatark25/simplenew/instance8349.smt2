(declare-const X String)
; Host\u{3A}YOURcache\u{2E}everer\u{2E}comwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
(check-sat)
