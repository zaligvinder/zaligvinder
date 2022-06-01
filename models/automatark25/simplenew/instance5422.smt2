(declare-const X String)
; WinSession\w+asdbiz\u{2E}bizfrom\u{7c}roogoo\u{7c}CurrentiOpus
(assert (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|CurrentiOpus\u{a}"))))
(check-sat)
