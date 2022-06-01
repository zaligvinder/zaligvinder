(declare-const X String)
; /\.jpg\u{20}HTTP\/1\.[01]\r\nUser\u{2d}Agent\u{3a}\u{20}[a-z]+\r\nHost\u{3a}\u{20}[a-z0-9\u{2d}\u{2e}]+\.com\.br\r\n\r\n$/
(assert (not (str.in_re X (re.++ (str.to_re "/.jpg HTTP/1.") (re.union (str.to_re "0") (str.to_re "1")) (str.to_re "\u{d}\u{a}User-Agent: ") (re.+ (re.range "a" "z")) (str.to_re "\u{d}\u{a}Host: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".com.br\u{d}\u{a}\u{d}\u{a}/\u{a}")))))
; Agent\s+Server\s+www\u{2E}internet-optimizer\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.com\u{a}"))))
; Prodaosearch\u{2E}comReferer\u{3A}007User-Agent\u{3A}
(assert (str.in_re X (str.to_re "Prodaosearch.comReferer:007User-Agent:\u{a}")))
(check-sat)
