(declare-const X String)
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (str.in_re X (re.++ (str.to_re "<a") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (re.* re.allchar) (str.to_re ">") (re.opt (re.union (re.+ (re.comp (str.to_re "<"))) (re.* re.allchar))) (str.to_re "</a>\u{a}"))))
; /\u{2e}j2k([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.j2k") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; too[^\n\r]*User-Agent\u{3A}\sHost\u{3A}.*IP-WindowsAttachedPalas\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (re.++ (str.to_re "too") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\u{a}"))))
(check-sat)
