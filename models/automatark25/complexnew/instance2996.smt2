(declare-const X String)
; ovplSubject\u{3A}TencentTravelerClient\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "ovplSubject:TencentTravelerClient}{Sysuptime:\u{a}")))
; ^([0-9]{0,5}|[0-9]{0,5}\.[0-9]{0,3})$
(assert (str.in_re X (re.++ (re.union ((_ re.loop 0 5) (re.range "0" "9")) (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; trustyfiles\u{2E}com\d+lnzzlnbk\u{2f}pkrm\.fin\s+
(assert (str.in_re X (re.++ (str.to_re "trustyfiles.com") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^[a-zA-Z][a-zA-Z\-' ]*[a-zA-Z ]$
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "-") (str.to_re "'") (str.to_re " "))) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re " ")) (str.to_re "\u{a}")))))
; SAcc\d+Seconds\-\u{2F}communicatortb
(assert (not (str.in_re X (re.++ (str.to_re "SAcc") (re.+ (re.range "0" "9")) (str.to_re "Seconds-/communicatortb\u{a}")))))
(check-sat)
