(declare-const X String)
; /User-Agent\u{3a}\u{20}[^\n]*?WinHttp\u{2e}WinHttpRequest.*?\n/H
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{a}/H\u{a}")))))
(check-sat)
