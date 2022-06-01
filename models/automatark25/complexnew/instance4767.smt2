(declare-const X String)
; /<body[^>]+?style\s*=\s*[\u{22}\u{27}](-ms-)?behavior\s*:.*?<body[^>]+?onreadystatechange\s*=[^>]+?>[\s\t\r\n]*?<\/body/si
(assert (str.in_re X (re.++ (str.to_re "/<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "style") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.opt (str.to_re "-ms-")) (str.to_re "behavior") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.* re.allchar) (str.to_re "<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "onreadystatechange") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.+ (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "\u{9}") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "</body/si\u{a}"))))
; /insertBefore\(document\.body\)([^?]+createElement\([\u{22}\u{27}]TR[\u{22}\u{27}]\)\))+[^?]+<body[^?]+?<\/body>/i
(assert (str.in_re X (re.++ (str.to_re "/insertBefore(document.body)") (re.+ (re.++ (re.+ (re.comp (str.to_re "?"))) (str.to_re "createElement(") (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "TR") (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "))"))) (re.+ (re.comp (str.to_re "?"))) (str.to_re "<body") (re.+ (re.comp (str.to_re "?"))) (str.to_re "</body>/i\u{a}"))))
; Version\s+User-Agent\u{3A}bindmqnqgijmng\u{2f}oj
(assert (not (str.in_re X (re.++ (str.to_re "Version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}")))))
; /\&h=11$/U
(assert (str.in_re X (str.to_re "/&h=11/U\u{a}")))
; User-Agent\u{3A}\s+Robert
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Robert\u{a}")))))
(check-sat)
