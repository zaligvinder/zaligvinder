(declare-const X String)
; ^(Jan(uary)?|Feb(ruary)?|Mar(ch)?|Apr(il)?|May|Jun(e)?|Jul(y)?|Aug(ust)?|Sep(tember)?|Sept|Oct(ober)?|Nov(ember)?|Dec(ember)?)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "Jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "Feb") (re.opt (str.to_re "ruary"))) (re.++ (str.to_re "Mar") (re.opt (str.to_re "ch"))) (re.++ (str.to_re "Apr") (re.opt (str.to_re "il"))) (str.to_re "May") (re.++ (str.to_re "Jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "Jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "Aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "Sep") (re.opt (str.to_re "tember"))) (str.to_re "Sept") (re.++ (str.to_re "Oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "Nov") (re.opt (str.to_re "ember"))) (re.++ (str.to_re "Dec") (re.opt (str.to_re "ember")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}gz/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gz/i\u{a}")))))
; /filename=[^\n]*\u{2e}pfa/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfa/i\u{a}")))))
; http://(www\.)?([^\.]+)\.com
(assert (str.in_re X (re.++ (str.to_re "http://") (re.opt (str.to_re "www.")) (re.+ (re.comp (str.to_re "."))) (str.to_re ".com\u{a}"))))
(check-sat)
