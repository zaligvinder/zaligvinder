(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in.re X (str.to.re "//stat_u//U\x0a")))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a"))))
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to.re "\x0a/H\x0a"))))
(check-sat)
