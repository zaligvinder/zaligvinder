(declare-const X String)
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (str.in.re X (str.to.re "ovplSubject:TencentTravelerClient}{Sysuptime:\x0a")))
; ^([0-9]{0,5}|[0-9]{0,5}\.[0-9]{0,3})$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 0 5) (re.range "0" "9")) (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; trustyfiles\x2Ecom\d+lnzzlnbk\x2fpkrm\.fin\s+
(assert (str.in.re X (re.++ (str.to.re "trustyfiles.com") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^[a-zA-Z][a-zA-Z\-' ]*[a-zA-Z ]$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "-") (str.to.re "'") (str.to.re " "))) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ")) (str.to.re "\x0a")))))
; SAcc\d+Seconds\-\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "SAcc") (re.+ (re.range "0" "9")) (str.to.re "Seconds-/communicatortb\x0a")))))
(check-sat)
