(declare-const X String)
; Host\u{3A}stech\u{2E}web-nexus\u{2E}netHost\u{3A}
(assert (not (str.in_re X (str.to_re "Host:stech.web-nexus.netHost:\u{a}"))))
; if\s[(][A-Za-z]*\s[=]\s
(assert (not (str.in_re X (re.++ (str.to_re "if") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "(") (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")))))
; /Referer\u{3a}\s*?http\u{3a}\u{2f}{2}[a-z0-9\u{2e}\u{2d}]+\u{2f}s\u{2f}\u{3f}k\u{3d}/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "http:") ((_ re.loop 2 2) (str.to_re "/")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "/s/?k=/Hi\u{a}")))))
; pjpoptwql\u{2f}rlnjsportsHost\u{3A}Subject\u{3a}YAHOOdestroyed\u{21}
(assert (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}")))
(check-sat)
