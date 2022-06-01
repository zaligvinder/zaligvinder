(declare-const X String)
; /[^\u{20}-\u{7e}\u{d}\u{a}]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}"))))
; /filename\=\d+\.swf/H
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "0" "9")) (str.to_re ".swf/H\u{a}"))))
; ^04[0-9]{8}
(assert (not (str.in_re X (re.++ (str.to_re "04") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
