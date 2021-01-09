(declare-const X String)
; User-Agent\x3A\s+GET.*toowww\.123mania\.com
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GET") (re.* re.allchar) (str.to.re "toowww.123mania.com\x0a")))))
; /\x2etga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
; ^((4(\d{12}|\d{15}))|(5\d{15})|(6011\d{12})|(3(4|7)\d{13}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "4") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 15 15) (re.range "0" "9")))) (re.++ (str.to.re "5") ((_ re.loop 15 15) (re.range "0" "9"))) (re.++ (str.to.re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "4") (str.to.re "7")) ((_ re.loop 13 13) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
