(declare-const X String)
; /^\u{2f}nosignal\.jpg\?\d\.\d+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//nosignal.jpg?") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; ^[12345]$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5")) (str.to_re "\u{a}")))))
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (str.in_re X (re.++ (str.to_re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to_re "&u=") (re.* re.allchar) (str.to_re "==/U\u{a}"))))
(check-sat)
