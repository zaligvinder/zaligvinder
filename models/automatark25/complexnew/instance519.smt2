(declare-const X String)
; %3f\s+url=[^\n\r]*httpUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "httpUser-Agent:\u{a}")))))
; [-'a-zA-Z]
(assert (str.in_re X (re.++ (re.union (str.to_re "-") (str.to_re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
; /^\/info\.php\?act\u{3d}(list|online)/U
(assert (str.in_re X (re.++ (str.to_re "//info.php?act=") (re.union (str.to_re "list") (str.to_re "online")) (str.to_re "/U\u{a}"))))
(check-sat)
