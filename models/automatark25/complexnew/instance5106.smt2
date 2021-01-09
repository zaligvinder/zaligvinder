(declare-const X String)
; /bbdd(host|user|passwd)=\x22[^\s]*?([\x60\x3b\x7c]|\x24\x28)/i
(assert (str.in.re X (re.++ (str.to.re "/bbdd") (re.union (str.to.re "host") (str.to.re "user") (str.to.re "passwd")) (str.to.re "=\x22") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "$(") (str.to.re "`") (str.to.re ";") (str.to.re "|")) (str.to.re "/i\x0a"))))
; /^[a-z]\x3D[0-9a-z]{100}$/Pm
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Pm\x0a"))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (str.in.re X (str.to.re "Host:Subject:From:\xd0\xc5\xcf\xa2\x0a")))
; (Jan(uary)?|Feb(ruary)?|Mar(ch)?|Apr(il)?|May|Jun(e)?|Jul(y)?|Aug(ust)?|Sep(tember)?|Oct(ober)?|(Nov|Dec)(ember)?)
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "Jan") (re.opt (str.to.re "uary"))) (re.++ (str.to.re "Feb") (re.opt (str.to.re "ruary"))) (re.++ (str.to.re "Mar") (re.opt (str.to.re "ch"))) (re.++ (str.to.re "Apr") (re.opt (str.to.re "il"))) (str.to.re "May") (re.++ (str.to.re "Jun") (re.opt (str.to.re "e"))) (re.++ (str.to.re "Jul") (re.opt (str.to.re "y"))) (re.++ (str.to.re "Aug") (re.opt (str.to.re "ust"))) (re.++ (str.to.re "Sep") (re.opt (str.to.re "tember"))) (re.++ (str.to.re "Oct") (re.opt (str.to.re "ober"))) (re.++ (re.union (str.to.re "Nov") (str.to.re "Dec")) (re.opt (str.to.re "ember")))) (str.to.re "\x0a")))))
; [A-Z0-9]{5}\d[0156]\d([0][1-9]|[12]\d|3[01])\d[A-Z0-9]{3}[A-Z]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.range "0" "9") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "5") (str.to.re "6")) (re.range "0" "9") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.range "0" "9") ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
(check-sat)
