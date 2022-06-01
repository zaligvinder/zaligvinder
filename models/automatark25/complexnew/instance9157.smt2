(declare-const X String)
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re ".") (re.union (str.to_re "htm") (str.to_re "asp") (str.to_re "php") (str.to_re "jsp"))) (re.++ (str.to_re "\u{a}href") (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&") (str.to_re "\u{22}") (str.to_re "'"))))))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\u{d}\u{a}/Hm
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".xap\u{d}\u{a}/Hm\u{a}"))))
(check-sat)
