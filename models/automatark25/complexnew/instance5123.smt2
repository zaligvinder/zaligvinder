(declare-const X String)
; cs\u{2E}shopperreports\u{2E}comActivityHost\u{3A}Yeah\!User-Agent\u{3A}Microsoft
(assert (str.in_re X (str.to_re "cs.shopperreports.comActivityHost:Yeah!User-Agent:Microsoft\u{a}")))
; for[^\n\r]*Host\u{3A}\sinternalcyber@yahoo\u{2E}comHeadersRedirection
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}")))))
(check-sat)
