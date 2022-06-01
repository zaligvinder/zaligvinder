(declare-const X String)
; /filename=[^\n]*\u{2e}wmv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmv/i\u{a}")))))
; fsbuffshprrprt-cs-Host\u{3A}
(assert (not (str.in_re X (str.to_re "fsbuffshprrprt-cs-\u{13}Host:\u{a}"))))
; comUser-Agent\u{3A}si=PORT\u{3D}\u{2F}pagead\u{2F}ads\?Host\u{3a}\u{2F}desktop\u{2F}
(assert (not (str.in_re X (str.to_re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\u{a}"))))
; Keylogger[^\n\r]*dll\u{3F}\w+www2\u{2e}instantbuzz\u{2e}com\s+Online100013Agentsvr\u{5E}\u{5E}MerlinHost\u{3A}Host\u{3A}port
(assert (not (str.in_re X (re.++ (str.to_re "Keylogger") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online100013Agentsvr^^Merlin\u{13}Host:Host:port\u{a}")))))
(check-sat)
