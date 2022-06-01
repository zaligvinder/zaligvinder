(declare-const X String)
; on\dstepwww\u{2E}kornputers\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "on") (re.range "0" "9") (str.to_re "stepwww.kornputers.com\u{a}"))))
(check-sat)
