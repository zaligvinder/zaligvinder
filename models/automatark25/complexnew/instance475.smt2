(declare-const X String)
; <img([^>]*[^/])>
(assert (not (str.in.re X (re.++ (str.to.re "<img>\x0a") (re.* (re.comp (str.to.re ">"))) (re.comp (str.to.re "/"))))))
; User-Agent\x3A\dServer
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Server\x0a")))))
(check-sat)
