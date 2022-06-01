(declare-const X String)
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (str.in_re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to_re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; SbAts\d+dcww\u{2E}dmcast\u{2E}comdistID=
(assert (not (str.in_re X (re.++ (str.to_re "SbAts") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=\u{a}")))))
; 3A\s+URLBlazeHost\u{3A}trackhjhgquqssq\u{2f}pjm
(assert (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlazeHost:trackhjhgquqssq/pjm\u{a}"))))
; Referer\u{3A}dialupvpn\u{5f}pwdwww\u{2E}searchreslt\u{2E}com
(assert (str.in_re X (str.to_re "Referer:dialupvpn_pwdwww.searchreslt.com\u{a}")))
; X-OSSproxy\u{3a}\dMicrosoft\u{2A}PORT3\u{2A}ProLive\+Version\+3A
(assert (str.in_re X (re.++ (str.to_re "X-OSSproxy:") (re.range "0" "9") (str.to_re "Microsoft*PORT3*ProLive+Version+3A\u{a}"))))
(check-sat)
