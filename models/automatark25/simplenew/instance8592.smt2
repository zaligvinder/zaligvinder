(declare-const X String)
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (not (str.in_re X (re.++ (str.to_re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to_re "&u=") (re.* re.allchar) (str.to_re "==/U\u{a}")))))
(check-sat)
