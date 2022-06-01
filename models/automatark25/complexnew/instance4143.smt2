(declare-const X String)
; body=\u{25}21\u{25}21\u{25}21Optix\s+Host\u{3a}
(assert (str.in_re X (re.++ (str.to_re "body=%21%21%21Optix\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
; User-Agent\u{3A}\dServer
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Server\u{a}")))))
; ^[1-9][0-9]{1,6}\-[0-9]{2}\-[0-9]
(assert (not (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.range "0" "9") (str.to_re "\u{a}")))))
; richfind\u{2E}comdcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}")))
(check-sat)
