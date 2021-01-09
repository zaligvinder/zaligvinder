(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a"))))
; www\x2Emakemesearch\x2EcomLOGOnevclxatmlhavj\x2fvsy
(assert (not (str.in.re X (str.to.re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\x0a"))))
; ^[^\s]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
