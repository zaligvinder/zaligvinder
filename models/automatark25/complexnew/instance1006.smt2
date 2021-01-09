(declare-const X String)
; This\s+\x7D\x7BPassword\x3A\d+
(assert (str.in.re X (re.++ (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; bar\-navig\x2Eyandex\x2Eru\s+
(assert (str.in.re X (re.++ (str.to.re "bar-navig.yandex.ru") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^0?(5[024])(\-)?\d{7}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "0")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a5") (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4"))))))
; ^1+0+$
(assert (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
