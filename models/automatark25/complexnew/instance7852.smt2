(declare-const X String)
; /\x2ezip([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.zip") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /("(\\["\\]|[^"])*("|$)|\S)+/g
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "/g\x0a")))))
; engineResultUser-Agent\x3A
(assert (str.in.re X (str.to.re "engineResultUser-Agent:\x0a")))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a"))))
(check-sat)
