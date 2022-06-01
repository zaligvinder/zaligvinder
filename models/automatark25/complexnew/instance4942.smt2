(declare-const X String)
; /SOAPAction\u{3a}[^\r\n]*Get(ServerTime|FileList|File)\u{22}/i
(assert (not (str.in_re X (re.++ (str.to_re "/SOAPAction:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Get") (re.union (str.to_re "ServerTime") (str.to_re "FileList") (str.to_re "File")) (str.to_re "\u{22}/i\u{a}")))))
; /\u{2e}pif([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.pif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; too[^\n\r]*User-Agent\u{3A}\sHost\u{3A}.*IP-WindowsAttachedPalas\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (not (str.in_re X (re.++ (str.to_re "too") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\u{a}")))))
; eveocczmthmmq\u{2f}omzl\d\u{2F}asp\u{2F}offers\.asp\?
(assert (not (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}")))))
(check-sat)
