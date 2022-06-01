(declare-const X String)
; /\*[^\/]+/
(assert (str.in_re X (re.++ (str.to_re "/*") (re.+ (re.comp (str.to_re "/"))) (str.to_re "/\u{a}"))))
; /\u{2e}xspf([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.xspf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; CommonName.*st=\s+Contactfrom=GhostVoiceServerUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "CommonName") (re.* re.allchar) (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Contactfrom=GhostVoiceServerUser-Agent:\u{a}")))))
(check-sat)
