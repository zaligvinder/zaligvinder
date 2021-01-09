(declare-const X String)
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (not (str.in.re X (re.++ (str.to.re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to.re "&u=") (re.* re.allchar) (str.to.re "==/U\x0a")))))
(check-sat)
