(declare-const X String)
; ^[1-9]{1}[0-9]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ovplHost\u{3A}Host\u{3A}DownloadUser
(assert (str.in_re X (str.to_re "ovplHost:Host:DownloadUser\u{a}")))
(check-sat)
