(declare-const X String)
; <img([^>]*[^/])>
(assert (not (str.in_re X (re.++ (str.to_re "<img>\u{a}") (re.* (re.comp (str.to_re ">"))) (re.comp (str.to_re "/"))))))
; User-Agent\u{3A}\dServer
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Server\u{a}")))))
(check-sat)
