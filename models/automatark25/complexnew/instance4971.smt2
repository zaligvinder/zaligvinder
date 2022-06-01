(declare-const X String)
; \u{2F}desktop\u{2F}SystemwwwfromToolbartheServer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\u{a}"))))
; /^[0-9]\d{2,4}-\d{6,8}$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.range "0" "9") ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 6 8) (re.range "0" "9")) (str.to_re "/\u{a}")))))
; User-Agent\u{3A}\dServer
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Server\u{a}")))))
; Logger.*aresflashdownloader\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.* re.allchar) (str.to_re "aresflashdownloader.com\u{a}")))))
; /filename=[^\n]*\u{2e}reg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".reg/i\u{a}"))))
(check-sat)
