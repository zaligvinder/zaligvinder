(declare-const X String)
; ^<a[^>]*(http://[^"]*)[^>]*>([ 0-9a-zA-Z]+)</a>$
(assert (not (str.in.re X (re.++ (str.to.re "<a") (re.* (re.comp (str.to.re ">"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.+ (re.union (str.to.re " ") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "</a>\x0ahttp://") (re.* (re.comp (str.to.re "\x22")))))))
; ^(\d{4})[.](0{0,1}[1-9]|1[012])[.](0{0,1}[1-9]|[12][0-9]|3[01])[.](\d{2})$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re ".") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re ".") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; version\s+error\*\-\*WrongUser-Agent\x3Acom\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "error*-*WrongUser-Agent:com/index.php?tpid=\x0a"))))
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (str.in.re X (str.to.re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\x13\x0a")))
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "\x22") (str.to.re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re ".") (re.union (str.to.re "htm") (str.to.re "asp") (str.to.re "php") (str.to.re "jsp"))) (re.++ (str.to.re "\x0ahref") (re.* (str.to.re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re ".") (str.to.re "?") (str.to.re "=") (str.to.re "&") (str.to.re "\x22") (str.to.re "'")))))))
(check-sat)
