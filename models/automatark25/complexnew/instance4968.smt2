(declare-const X String)
; /^\x2fnosignal\.jpg\?\d\.\d+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//nosignal.jpg?") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
; ^[12345]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5")) (str.to.re "\x0a")))))
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (str.in.re X (re.++ (str.to.re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to.re "&u=") (re.* re.allchar) (str.to.re "==/U\x0a"))))
(check-sat)
