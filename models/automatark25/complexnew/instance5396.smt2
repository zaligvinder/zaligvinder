(declare-const X String)
; \u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; ^[0-9]{6}-[0-9pPtTfF][0-9]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "-") (re.union (re.range "0" "9") (str.to_re "p") (str.to_re "P") (str.to_re "t") (str.to_re "T") (str.to_re "f") (str.to_re "F")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "&") (str.to_re "-") (str.to_re ".") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; /filename=[^\n]*\u{2e}f4v/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4v/i\u{a}"))))
(check-sat)
