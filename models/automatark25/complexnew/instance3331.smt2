(declare-const X String)
; ^0[1-9]\d{7,8}$
(assert (str.in_re X (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; loomcompany\u{2E}comBasedURLS\swww\.fast-finder\.com
(assert (str.in_re X (re.++ (str.to_re "loomcompany.comBasedURLS") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}"))))
(check-sat)
