(declare-const X String)
; /\x2e(jpg|png|gif)\x3fs?v.*?&tq=g[A-Z0-9]{2}/U
(assert (str.in.re X (re.++ (str.to.re "/.") (re.union (str.to.re "jpg") (str.to.re "png") (str.to.re "gif")) (str.to.re "?") (re.opt (str.to.re "s")) (str.to.re "v") (re.* re.allchar) (str.to.re "&tq=g") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (not (str.in.re X (re.++ (str.to.re "/Content-Type:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "application/octet-stream/smiH\x0a")))))
(check-sat)
