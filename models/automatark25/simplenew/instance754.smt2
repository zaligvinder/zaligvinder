(declare-const X String)
; /^\/jhan.jar?r=\d+/Ui
(assert (str.in_re X (re.++ (str.to_re "//jhan") re.allchar (str.to_re "ja") (re.opt (str.to_re "r")) (str.to_re "r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
(check-sat)
