(declare-const X String)
; /filename=[^\n]*\u{2e}m4a/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4a/i\u{a}"))))
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re ".") (re.union (str.to_re "htm") (str.to_re "asp") (str.to_re "php") (str.to_re "jsp"))) (re.++ (str.to_re "\u{a}href") (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&") (str.to_re "\u{22}") (str.to_re "'"))))))))
; Host\u{3a}\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\u{2f}ggqh\.kqh
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Pre") (re.* re.allchar) (str.to_re "Keyloggeradfsgecoiwnf\u{1b}hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
(check-sat)
