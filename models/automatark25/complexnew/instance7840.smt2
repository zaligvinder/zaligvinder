(declare-const X String)
; /User-Agent\u{3a}\u{20}[^\n]*?WinHttp\u{2e}WinHttpRequest.*?\n/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{a}/H\u{a}"))))
; www\.thecommunicator\.net\sHost\u{3A}\dhoroscope2
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.range "0" "9") (str.to_re "horoscope2\u{a}"))))
; /window\u{2e}location\s*=\s*unescape\s*\u{28}\s*["']\u{25}[^"']*https?\u{3a}/
(assert (str.in_re X (re.++ (str.to_re "/window.location") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "unescape") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "%") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re ":/\u{a}"))))
; RXnewads1\u{2E}comSPYcom\u{2F}index\.php\?tpid=
(assert (str.in_re X (str.to_re "RXnewads1.comSPYcom/index.php?tpid=\u{a}")))
(check-sat)
