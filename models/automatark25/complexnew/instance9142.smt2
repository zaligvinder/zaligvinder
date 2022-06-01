(declare-const X String)
; Host\u{3A}Attachedengineact=Download
(assert (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}")))
; /^\u{2f}nosignal\.jpg\?\d\.\d+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//nosignal.jpg?") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
