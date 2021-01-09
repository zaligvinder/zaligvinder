(declare-const X String)
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (not (str.in.re X (str.to.re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\x0a"))))
; Toolbar\w+www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.commedia.top-banners.com\x0a"))))
; /\x2ecgm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.cgm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
