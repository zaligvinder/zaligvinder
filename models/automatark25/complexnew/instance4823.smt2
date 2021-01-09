(declare-const X String)
; ^[a-zA-Z0-9\s]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^\d{1,2}((,)|(,25)|(,50)|(,5)|(,75)|(,0)|(,00))?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re ",25") (str.to.re ",50") (str.to.re ",5") (str.to.re ",75") (str.to.re ",0") (str.to.re ",00"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a"))))
; ^[2-5](2|4|6|8|0)(A(A)?|B|C|D(D(D)?)?|E|F|G|H)$
(assert (not (str.in.re X (re.++ (re.range "2" "5") (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8") (str.to.re "0")) (re.union (re.++ (str.to.re "A") (re.opt (str.to.re "A"))) (str.to.re "B") (str.to.re "C") (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "D") (re.opt (str.to.re "D"))))) (str.to.re "E") (str.to.re "F") (str.to.re "G") (str.to.re "H")) (str.to.re "\x0a")))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a")))))
(check-sat)
