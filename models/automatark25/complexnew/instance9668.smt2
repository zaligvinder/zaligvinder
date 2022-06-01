(declare-const X String)
; www\u{2E}maxifiles\u{2E}comServidor\u{2E}
(assert (str.in_re X (str.to_re "www.maxifiles.comServidor.\u{13}\u{a}")))
; www\u{2E}emp3finder\u{2E}com\d+ZOMBIES\u{5f}HTTP\u{5f}GET
(assert (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}"))))
; passcorrect\u{3B}\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}version
(assert (not (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}")))))
; ^[0-9]{5}([- /]?[0-9]{4})?$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
