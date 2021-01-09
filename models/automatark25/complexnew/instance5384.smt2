(declare-const X String)
; /\x2em4a([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.m4a") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; EI.*to\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (re.++ (str.to.re "EI") (re.* re.allchar) (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AppName/GRSI|Server|\x13Host:origin=sidefind\x0a")))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "/cbn/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:binde2give.com\x0a")))))
; /<[A-Z]+\s+[^>]*?padding-left\x3A\x2D1000px\x3B[^>]*text-indent\x3A\x2D1000px/smi
(assert (str.in.re X (re.++ (str.to.re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ">"))) (str.to.re "padding-left:-1000px;") (re.* (re.comp (str.to.re ">"))) (str.to.re "text-indent:-1000px/smi\x0a"))))
(check-sat)
