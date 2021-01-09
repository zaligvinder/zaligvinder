(declare-const X String)
; /\x2etorrent([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.torrent") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^((\d{1,3}((,\d{3})*|\d*)(\.{0,1})\d+)|\d+)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
