(declare-const X String)
; (^[0][2][1579]{1})(\d{6,7}$)
(assert (str.in.re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a02") ((_ re.loop 1 1) (re.union (str.to.re "1") (str.to.re "5") (str.to.re "7") (str.to.re "9"))))))
; Theef2\sHost\x3A\s+User-Agent\x3awww\x2Esogou\x2EcomUser-Agent\x3AMyPostToolbar
(assert (str.in.re X (re.++ (str.to.re "Theef2") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:www.sogou.comUser-Agent:MyPostToolbar\x0a"))))
; ^((0*[0-1]?[0-9]{1,2}\.)|(0*((2[0-4][0-9])|(25[0-5]))\.)){3}((0*[0-1]?[0-9]{1,2})|(0*((2[0-4][0-9])|(25[0-5]))))$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.++ (re.* (str.to.re "0")) (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".")) (re.++ (re.* (str.to.re "0")) (re.union (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".")))) (re.union (re.++ (re.* (str.to.re "0")) (re.opt (re.range "0" "1")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.* (str.to.re "0")) (re.union (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))))) (str.to.re "\x0a"))))
; /\x2epct([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pct") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
