(declare-const X String)
; ovplHost\u{3A}Host\u{3A}DownloadUser
(assert (str.in_re X (str.to_re "ovplHost:Host:DownloadUser\u{a}")))
; .*[a-zA-Z]$
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
; DigExt.*\u{23}\u{23}\u{23}\u{23}
(assert (str.in_re X (re.++ (str.to_re "DigExt") (re.* re.allchar) (str.to_re "####\u{a}"))))
(check-sat)
