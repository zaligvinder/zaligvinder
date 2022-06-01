(declare-const X String)
; This\s+\u{7D}\u{7B}Password\u{3A}\d+
(assert (str.in_re X (re.++ (str.to_re "This") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Password:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; bar\-navig\u{2E}yandex\u{2E}ru\s+
(assert (str.in_re X (re.++ (str.to_re "bar-navig.yandex.ru") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^0?(5[024])(\-)?\d{7}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}5") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4"))))))
; ^1+0+$
(assert (str.in_re X (re.++ (re.+ (str.to_re "1")) (re.+ (str.to_re "0")) (str.to_re "\u{a}"))))
(check-sat)
