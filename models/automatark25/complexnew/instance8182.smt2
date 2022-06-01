(declare-const X String)
; \u{22}reaction\u{2E}txt\u{22}User-Agent\u{3A}newsSpyAgentsmrtshpr-cs-
(assert (not (str.in_re X (str.to_re "\u{22}reaction.txt\u{22}User-Agent:newsSpyAgentsmrtshpr-cs-\u{13}\u{a}"))))
; www\u{2E}emp3finder\u{2E}com\d+ZOMBIES\u{5f}HTTP\u{5f}GET
(assert (not (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}")))))
; /<body[^>]+?onreadystatechange\s*=.*?<body[^>]+?style\s*=\s*[\u{22}\u{27}](-ms-)?behavior\s*:[^\u{22}\u{27}]+?[\u{22}\u{27}][^>]*?>[\s\t\r\n]*?<\/body/si
(assert (not (str.in_re X (re.++ (str.to_re "/<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "onreadystatechange") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* re.allchar) (str.to_re "<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "style") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.opt (str.to_re "-ms-")) (str.to_re "behavior") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":") (re.+ (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "\u{9}") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "</body/si\u{a}")))))
; User-Agent\u{3A}\s+Robert
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Robert\u{a}")))))
; ^[1-9]{1,2}(.5)?$
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to_re "5"))) (str.to_re "\u{a}"))))
(check-sat)
