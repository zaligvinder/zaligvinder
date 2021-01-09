(declare-const X String)
; A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (str.in.re X (re.++ (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finSubject:Basic\x0a"))))
; ^([0-1]?\d|2[0-3])([:]?[0-5]\d)?([:]?|[0-5]\d)?\s?(A|AM|P|p|a|PM|am|pm|pM|aM|Am|Pm)?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.opt (re.++ (re.opt (str.to.re ":")) (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.union (re.opt (str.to.re ":")) (re.++ (re.range "0" "5") (re.range "0" "9")))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "A") (str.to.re "AM") (str.to.re "P") (str.to.re "p") (str.to.re "a") (str.to.re "PM") (str.to.re "am") (str.to.re "pm") (str.to.re "pM") (str.to.re "aM") (str.to.re "Am") (str.to.re "Pm"))) (str.to.re "\x0a"))))
; /\/\d+\.mp3$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a")))))
(check-sat)
