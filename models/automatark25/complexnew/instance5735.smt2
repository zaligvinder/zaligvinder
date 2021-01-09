(declare-const X String)
; /insertBefore\(document\.body\)([^?]+createElement\([\x22\x27]TR[\x22\x27]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (not (str.in.re X (re.++ (str.to.re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to.re "?"))) (str.to.re "createElement(") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "TR") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "))"))) (re.+ (re.comp (str.to.re "?"))) (str.to.re "<body") (re.+ (re.comp (str.to.re "?"))) (str.to.re "</body>/i\x0a")))))
; hjhgquqssq\x2fpjm[^\n\r]*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hjhgquqssq/pjm") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
(check-sat)
