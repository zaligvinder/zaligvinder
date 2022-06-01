(declare-const X String)
; /\/modules\/(n?\d|nu)\.swf$/U
(assert (str.in_re X (re.++ (str.to_re "//modules/") (re.union (re.++ (re.opt (str.to_re "n")) (re.range "0" "9")) (str.to_re "nu")) (str.to_re ".swf/U\u{a}"))))
(check-sat)
