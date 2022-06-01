(declare-const X String)
; /\.background\s*=\s*[\u{22}\u{27}]{2}/i
(assert (str.in_re X (re.++ (str.to_re "/.background") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/i\u{a}"))))
; @([_a-zA-Z]+)
(assert (not (str.in_re X (re.++ (str.to_re "@") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; Host\u{3A}hjhgquqssq\u{2f}pjmonHost\u{3A}Host\u{3A}A-311byName=Your\+Host\+is\u{3A}
(assert (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}")))
; Host\u{3A}\d+Litequick\u{2E}qsrch\u{2E}comaboutHost\u{3A}Computer\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}"))))
(check-sat)
