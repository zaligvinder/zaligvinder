(declare-const X String)
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".ico") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x0a"))))
; /\x2eslk([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.slk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2etif(f)?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tif") (re.opt (str.to.re "f")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x02[^\x0a]+\x3a[^\x0a]+\x0a/
(assert (str.in.re X (re.++ (str.to.re "/\x02") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "\x0a/\x0a"))))
; (^\d{3,5}\,\d{2}$)|(^\d{3,5}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
