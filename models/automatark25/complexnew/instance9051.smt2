(declare-const X String)
; sponsor2\.ucmore\.comUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "sponsor2.ucmore.comUser-Agent:User-Agent:\x0a"))))
; \x2Fcgi\x2Flogurl\.cgi\s+IDENTIFY.*max-www\x2Eu88\x2Ecn
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "max-www.u88.cn\x0a")))))
; /^\/[\w-]{48}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/U\x0a")))))
; User-Agent\x3AHost\x3a\x22The
(assert (str.in.re X (str.to.re "User-Agent:Host:\x22The\x0a")))
(check-sat)
