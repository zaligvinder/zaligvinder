(declare-const X String)
; \u{2F}rss\d+Host\u{3a}TCP\u{2F}AD\u{2F}ULOGNetBusCookie\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBusCookie:\u{a}")))))
(check-sat)
