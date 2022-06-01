(declare-const X String)
; WinSession\w+asdbiz\u{2E}bizfrom\u{7c}roogoo\u{7c}CurrentiOpus
(assert (not (str.in_re X (re.++ (str.to_re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "asdbiz.bizfrom|roogoo|CurrentiOpus\u{a}")))))
; Subject\u{3A}AlexaOnline\u{25}21\u{25}21\u{25}21
(assert (str.in_re X (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))
(check-sat)
