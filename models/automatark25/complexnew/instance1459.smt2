(declare-const X String)
; MyPostsearch\x2econduit\x2ecomUser-Agent\x3AAcmeSubject\x3Aready\.\r\n
(assert (str.in.re X (str.to.re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\x0d\x0a\x0a")))
; [0](\d{9})|([0](\d{2})( |-)((\d{3}))( |-)(\d{4}))|[0](\d{2})( |-)(\d{7})
(assert (str.in.re X (re.union (re.++ (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; /filename=[^\n]*\x2eqt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qt/i\x0a")))))
; /^\/jmx.jar?r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "//jmx") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
