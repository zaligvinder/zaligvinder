(declare-const X String)
; Subject\u{3a}.*Host\u{3a}.*\u{2F}products\u{2F}spyblocs\u{2F}\sinternalcyber@yahoo\u{2E}comHeadersRedirection
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/products/spyblocs/\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}"))))
; /^\s+$|^$/gi
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "/gi\u{a}"))))
(check-sat)
