(declare-const X String)
; Subject\u{3a}\d+rprpgbnrppb\u{2f}ci
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci\u{a}"))))
; shprrprt-cs-Pre\u{2F}ta\u{2F}NEWS\u{2F}
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
; Host\u{3A}\s+\.ico\s+Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}"))))
; Cookie\u{3a}.*Host\u{3A}.*ldap\u{3A}\u{2F}\u{2F}
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}"))))
; spas\d+media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=
(assert (not (str.in_re X (re.++ (str.to_re "spas") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=\u{a}")))))
(check-sat)
