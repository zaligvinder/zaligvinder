(declare-const X String)
; /^\/uploading\/id=\d+\&u=.*==$/U
(assert (not (str.in.re X (re.++ (str.to.re "//uploading/id=") (re.+ (re.range "0" "9")) (str.to.re "&u=") (re.* re.allchar) (str.to.re "==/U\x0a")))))
; /^<!--\s+[\w]{52,}\s+-->\r\n/smi
(assert (str.in.re X (re.++ (str.to.re "/<!--") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-->\x0d\x0a/smi\x0a") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
(check-sat)
