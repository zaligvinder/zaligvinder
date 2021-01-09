(declare-const X String)
; ^((100)|(\d{0,2}))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "100") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; protocol\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "protocol") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a"))))
; /filename=[^\n]*\x2eets/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ets/i\x0a")))))
(check-sat)
