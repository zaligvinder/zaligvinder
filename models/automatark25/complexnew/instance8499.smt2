(declare-const X String)
; /\x2ejnlp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jnlp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^SpyBuddy\s+Activity\s+Logs/smi
(assert (str.in.re X (re.++ (str.to.re "/SpyBuddy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Activity") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Logs/smi\x0a"))))
; libManager\x2Edll\x5Eget
(assert (not (str.in.re X (str.to.re "libManager.dll^get\x0a"))))
; www\x2Epurityscan\x2Ecom\s+from\.myway\.comToolbarUI2
(assert (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbarUI2\x0a"))))
; (^\d{9}[V|v|x|X]$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to.re "V") (str.to.re "|") (str.to.re "v") (str.to.re "x") (str.to.re "X")))))
(check-sat)
