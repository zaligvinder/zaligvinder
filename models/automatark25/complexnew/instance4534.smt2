(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in_re X (str.to_re "//stat_u//U\u{a}")))
; sql.*badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "sql") (re.* re.allchar) (str.to_re "badurl.grandstreetinteractive.com\u{a}"))))
; /User-Agent\u{3a}\u{20}[^\n]*?WinHttp\u{2e}WinHttpRequest.*?\n/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{a}/H\u{a}"))))
(check-sat)
