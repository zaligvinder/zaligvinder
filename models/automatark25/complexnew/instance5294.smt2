(declare-const X String)
; Host\x3A\w+Host\x3AUser-Agent\x3ATPSystemad\x2Esearchsquire\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:User-Agent:TPSystemad.searchsquire.com\x0a"))))
; xbqyosoe\x2fcpvmdll\x3F
(assert (not (str.in.re X (str.to.re "xbqyosoe/cpvmdll?\x0a"))))
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\x0a")))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; /\*[^\/]+/
(assert (str.in.re X (re.++ (str.to.re "/*") (re.+ (re.comp (str.to.re "/"))) (str.to.re "/\x0a"))))
(check-sat)
