(declare-const X String)
; Host\u{3A}\w+www.*ToolbartheServer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www") (re.* re.allchar) (str.to_re "ToolbartheServer:www.searchreslt.com\u{a}"))))
; (href=|url|import).*[\'"]([^(http:)].*css)[\'"]
(assert (str.in_re X (re.++ (re.union (str.to_re "href=") (str.to_re "url") (str.to_re "import")) (re.* re.allchar) (re.union (str.to_re "'") (str.to_re "\u{22}")) (re.union (str.to_re "'") (str.to_re "\u{22}")) (str.to_re "\u{a}") (re.union (str.to_re "(") (str.to_re "h") (str.to_re "t") (str.to_re "p") (str.to_re ":") (str.to_re ")")) (re.* re.allchar) (str.to_re "css"))))
; [0-1]+
(assert (str.in_re X (re.++ (re.+ (re.range "0" "1")) (str.to_re "\u{a}"))))
(check-sat)
