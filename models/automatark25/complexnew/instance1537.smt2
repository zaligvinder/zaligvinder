(declare-const X String)
; /filename=[^\n]*\x2eamf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".amf/i\x0a")))))
; /insertBefore\(document\.body\)([^?]+createElement\([\x22\x27]TR[\x22\x27]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (str.in.re X (re.++ (str.to.re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to.re "?"))) (str.to.re "createElement(") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "TR") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "))"))) (re.+ (re.comp (str.to.re "?"))) (str.to.re "<body") (re.+ (re.comp (str.to.re "?"))) (str.to.re "</body>/i\x0a"))))
; ^[0-9]+$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
