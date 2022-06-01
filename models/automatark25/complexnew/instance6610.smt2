(declare-const X String)
; Host\u{3A}YOURcache\u{2E}everer\u{2E}comwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
; ([^\\"]|\\.)*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{5c}") (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
(check-sat)
