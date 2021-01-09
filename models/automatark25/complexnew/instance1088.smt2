(declare-const X String)
; kl\x2Esearch\x2Eneed2find\x2Ecom\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (re.++ (str.to.re "kl.search.need2find.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a")))))
; Last.*?(\d+.?\d*)
(assert (not (str.in.re X (re.++ (str.to.re "Last") (re.* re.allchar) (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9"))))))
(check-sat)
