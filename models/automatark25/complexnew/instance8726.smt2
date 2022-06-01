(declare-const X String)
; ^<a[^>]*(http://[^"]*)[^>]*>([ 0-9a-zA-Z]+)</a>$
(assert (not (str.in_re X (re.++ (str.to_re "<a") (re.* (re.comp (str.to_re ">"))) (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.+ (re.union (str.to_re " ") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "</a>\u{a}http://") (re.* (re.comp (str.to_re "\u{22}")))))))
; ^(\d{4})[.](0{0,1}[1-9]|1[012])[.](0{0,1}[1-9]|[12][0-9]|3[01])[.](\d{2})$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ".") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re ".") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; version\s+error\*\-\*WrongUser-Agent\u{3A}com\u{2F}index\.php\?tpid=
(assert (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "error*-*WrongUser-Agent:com/index.php?tpid=\u{a}"))))
; ProjectHost\u{3A}logHost\u{3A}www\u{2E}snap\u{2E}comGoogle-\>rtServidor\u{2E}
(assert (str.in_re X (str.to_re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\u{13}\u{a}")))
; (("|')[a-z0-9\/\.\?\=\&]*(\.htm|\.asp|\.php|\.jsp)[a-z0-9\/\.\?\=\&]*("|'))|(href=*?[a-z0-9\/\.\?\=\&"']*)
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re ".") (re.union (str.to_re "htm") (str.to_re "asp") (str.to_re "php") (str.to_re "jsp"))) (re.++ (str.to_re "\u{a}href") (re.* (str.to_re "=")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re ".") (str.to_re "?") (str.to_re "=") (str.to_re "&") (str.to_re "\u{22}") (str.to_re "'")))))))
(check-sat)
