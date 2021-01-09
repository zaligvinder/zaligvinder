(declare-const X String)
; User-Agent\x3A\s+\x7D\x7BPassword\x3A\d+information
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "information\x0a")))))
; Ts2\x2F\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.* re.allchar) (str.to.re "Host:HELOHourssurvey.asp?nUserId=\x0a"))))
; /^[-+]?[1-9](\d*|((\d{1,2})?,(\d{3},)*(\d{3})))?([eE][-+]\d+)?$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "1" "9") (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.union (str.to.re "-") (str.to.re "+")) (re.+ (re.range "0" "9")))) (str.to.re "/\x0a"))))
; kl\x2Esearch\x2Eneed2find\x2Ecom\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "kl.search.need2find.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; /^("(\\"|[^"])*"|'(\\'|[^'])*'|[^\n])*(\n|$)/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (str.to.re "\x5c\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.union (str.to.re "\x5c'") (re.comp (str.to.re "'")))) (str.to.re "'")) (re.comp (str.to.re "\x0a")))) (str.to.re "\x0a/gm\x0a")))))
(check-sat)
