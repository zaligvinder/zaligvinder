(declare-const X String)
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (str.in.re X (re.++ (str.to.re "<textarea") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</textarea>\x0a"))))
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (str.in.re X (re.++ (str.to.re "sponsor2.ucmore.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:/ezsb\x0a"))))
(check-sat)
