(declare-const X String)
; Host\u{3A}\dMicrosoft\w+\+Version\+
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "+Version+\u{a}"))))
; [$][0 -9]+
(assert (str.in_re X (re.++ (str.to_re "$") (re.+ (re.union (str.to_re "0") (re.range " " "9"))) (str.to_re "\u{a}"))))
(check-sat)
