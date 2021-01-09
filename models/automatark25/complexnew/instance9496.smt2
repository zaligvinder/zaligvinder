(declare-const X String)
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mp4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (not (str.in.re X (str.to.re "areKeyloggerver=www.snap.com\x0a"))))
; <img[^>]* src=\"([^\"]*)\"[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<img") (re.* (re.comp (str.to.re ">"))) (str.to.re " src=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
