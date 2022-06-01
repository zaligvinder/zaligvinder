(declare-const X String)
; ^-?\d+([.,]?\d+)?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; A-311[^\n\r]*Attached\sHost\u{3A}Wordmyway\.comhoroscope2
(assert (str.in_re X (re.++ (str.to_re "A-311") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Attached") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.comhoroscope2\u{a}"))))
; username=(.*)&password=(.*)
(assert (not (str.in_re X (re.++ (str.to_re "username=") (re.* re.allchar) (str.to_re "&password=") (re.* re.allchar) (str.to_re "\u{a}")))))
; search\.dropspam\.com.*SupportFiles.*Referer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "SupportFiles\u{13}") (re.* re.allchar) (str.to_re "Referer:\u{a}"))))
(check-sat)
