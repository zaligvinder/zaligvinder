(declare-const X String)
; /^[0-9]\d{2,4}-\d{6,8}$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.range "0" "9") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 6 8) (re.range "0" "9")) (str.to_re "/\u{a}"))))
; www\u{2E}makemesearch\u{2E}comLOGOnevclxatmlhavj\u{2f}vsy
(assert (str.in_re X (str.to_re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\u{a}")))
(check-sat)
