(declare-const X String)
; ShadowNet\dsearchreslt\sTROJAN-Host\u{3A}YWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{a}"))))
; \u{2E}aspx\s+www\u{2E}altnet\u{2E}comSubject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re ".aspx") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.altnet.com\u{1b}Subject:\u{a}")))))
; ^[ a - z, 0 - 9 , ?   -   ?   ,?   -   ? , ?    -  ?   ,?   -  ? , . ]
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "a") (re.range " " " ") (str.to_re "z") (str.to_re ",") (str.to_re "0") (str.to_re "9") (str.to_re "?") (str.to_re ".")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}pui/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pui/i\u{a}")))))
(check-sat)
