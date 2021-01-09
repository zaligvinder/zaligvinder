(declare-const X String)
; /filename=[^\n]*\x2em4a/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4a/i\x0a"))))
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re ".") (re.union (str.to.re "htm") (str.to.re "asp") (str.to.re "php") (str.to.re "jsp"))) (re.++ (str.to.re "\x0ahref") (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&") (str.to.re "\x22") (str.to.re "'"))))))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a"))))
(check-sat)
