(declare-const X String)
; ^\{?[a-fA-F\d]{32}\}?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "{")) ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt (str.to.re "}")) (str.to.re "\x0a"))))
; /insertBefore\(document\.body\)([^?]+createElement\([\x22\x27]TR[\x22\x27]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (not (str.in.re X (re.++ (str.to.re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to.re "?"))) (str.to.re "createElement(") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "TR") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "))"))) (re.+ (re.comp (str.to.re "?"))) (str.to.re "<body") (re.+ (re.comp (str.to.re "?"))) (str.to.re "</body>/i\x0a")))))
(check-sat)
