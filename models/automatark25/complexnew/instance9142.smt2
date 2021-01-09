(declare-const X String)
; Host\x3AAttachedengineact=Download
(assert (str.in.re X (str.to.re "Host:Attachedengineact=Download\x0a")))
; /^\x2fnosignal\.jpg\?\d\.\d+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//nosignal.jpg?") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
