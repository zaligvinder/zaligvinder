(declare-const X String)
; adfsgecoiwnf\d+Host\u{3a}TCP\u{2F}AD\u{2F}ULOGNetBus
(assert (not (str.in_re X (re.++ (str.to_re "adfsgecoiwnf\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBus\u{a}")))))
(check-sat)
