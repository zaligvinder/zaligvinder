(declare-const X String)
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re ".") (re.union (str.to.re "htm") (str.to.re "asp") (str.to.re "php") (str.to.re "jsp"))) (re.++ (str.to.re "\x0ahref") (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&") (str.to.re "\x22") (str.to.re "'")))))))
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to.re "Host:User-Agent:\x0a"))))
; (\_\_)(.+)(\_\_)
(assert (str.in.re X (re.++ (str.to.re "__") (re.+ re.allchar) (str.to.re "__\x0a"))))
; ([^\\"]|\\.)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
