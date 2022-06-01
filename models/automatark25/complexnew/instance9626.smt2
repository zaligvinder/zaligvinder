(declare-const X String)
; /mJKV[^\s\u{D}\u{A}]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (not (str.in_re X (re.++ (str.to_re "/mJKV") (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\u{a}")))))
; Host\u{3A}\d+Subject\u{3A}[^\n\r]*Seconds\-ovplHost\u{3A}Host\u{3A}Download
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Seconds-ovplHost:Host:Download\u{a}")))))
(check-sat)
