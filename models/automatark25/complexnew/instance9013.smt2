(declare-const X String)
; XP\d+Acme\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}versionContact
(assert (str.in_re X (re.++ (str.to_re "XP") (re.+ (re.range "0" "9")) (str.to_re "Acme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=versionContact\u{a}"))))
; /[0-9A-Z]{8}\u{3a}bpass\u{a}/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re ":bpass\u{a}/\u{a}"))))
; ppcdomain\u{2E}co\u{2E}uk.*Spy\-Locked\s+Exploiter\w+\u{2F}r\u{2F}keys\u{2F}keysS\u{3a}Users\u{5c}Iterenet
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.* re.allchar) (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/r/keys/keysS:Users\u{5c}Iterenet\u{a}")))))
; /new (java|org)/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/new ") (re.union (str.to_re "java") (str.to_re "org")) (str.to_re "/Ui\u{a}")))))
; name\u{3d}Emailbadurl\u{2E}grandstreetinteractive\u{2E}comHost\u{3A}stepwww\u{2E}kornputers\u{2E}com
(assert (not (str.in_re X (str.to_re "name=Emailbadurl.grandstreetinteractive.comHost:stepwww.kornputers.com\u{a}"))))
(check-sat)
