(declare-const X String)
; /insertBefore\(document\.body\)([^?]+createElement\([\u{22}\u{27}]TR[\u{22}\u{27}]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (not (str.in_re X (re.++ (str.to_re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to_re "?"))) (str.to_re "createElement(") (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "TR") (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "))"))) (re.+ (re.comp (str.to_re "?"))) (str.to_re "<body") (re.+ (re.comp (str.to_re "?"))) (str.to_re "</body>/i\u{a}")))))
(check-sat)
