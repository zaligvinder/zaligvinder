(declare-const X String)
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re ".") (re.union (str.to.re "htm") (str.to.re "asp") (str.to.re "php") (str.to.re "jsp"))) (re.++ (str.to.re "\x0ahref") (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&") (str.to.re "\x22") (str.to.re "'"))))))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".xap\x0d\x0a/Hm\x0a"))))
(check-sat)
