(declare-const X String)
; ^.*(([^\.][\.][wW][mM][aA])|([^\.][\.][mM][pP][3]))$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "w") (str.to.re "W")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "a") (str.to.re "A"))) (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "p") (str.to.re "P")) (str.to.re "3"))) (str.to.re "\x0a"))))
; (http://|)(www\.)?([^\.]+)\.(\w{2}|(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum))$
(assert (str.in.re X (re.++ (str.to.re "http://") (re.opt (str.to.re "www.")) (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.union ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com") (str.to.re "net") (str.to.re "org") (str.to.re "edu") (str.to.re "int") (str.to.re "mil") (str.to.re "gov") (str.to.re "arpa") (str.to.re "biz") (str.to.re "aero") (str.to.re "name") (str.to.re "coop") (str.to.re "info") (str.to.re "pro") (str.to.re "museum")) (str.to.re "\x0a"))))
; User-Agent\x3A\d+wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a")))))
; /\x2fx\x2f[0-9a-z]{8,10}\x2f[0-9a-f]{32}\x2fAA\x2f0$/U
(assert (not (str.in.re X (re.++ (str.to.re "//x/") ((_ re.loop 8 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/AA/0/U\x0a")))))
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "\x09") (re.range " " "~"))) (str.to.re "/P\x0a"))))
(check-sat)
