(declare-const X String)
; \d{3}[.-]?\d{3}[.-]?\d{4}
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (not (str.in.re X (str.to.re "horoscope2YAHOOwww.2-seek.com/searchHost:\x0a"))))
; ^(389)[0-9]{11}$
(assert (str.in.re X (re.++ (str.to.re "389") ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
; /<\s*col[^>]*width\s*=\s*[\x22\x27]?\d{7}/i
(assert (str.in.re X (re.++ (str.to.re "/<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "col") (re.* (re.comp (str.to.re ">"))) (str.to.re "width") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/i\x0a"))))
(check-sat)
