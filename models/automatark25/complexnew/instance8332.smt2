(declare-const X String)
; ^([07][1-7]|1[0-6]|2[0-7]|[35][0-9]|[468][0-8]|9[0-589])-?\d{7}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "7")) (re.range "1" "7")) (re.++ (str.to.re "1") (re.range "0" "6")) (re.++ (str.to.re "2") (re.range "0" "7")) (re.++ (re.union (str.to.re "3") (str.to.re "5")) (re.range "0" "9")) (re.++ (re.union (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.range "0" "8")) (re.++ (str.to.re "9") (re.union (re.range "0" "5") (str.to.re "8") (str.to.re "9")))) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2erdp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rdp/i\x0a")))))
; ^(([1..9])|(0[1..9])|(1\d)|(2\d)|(3[0..1])).((\d)|(0\d)|(1[0..2])).(\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re ".") (str.to.re "9"))) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ".") (str.to.re "1"))) (str.to.re "1") (str.to.re ".") (str.to.re "9")) re.allchar (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re ".") (str.to.re "2")))) re.allchar ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (not (str.in.re X (str.to.re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\x0a"))))
(check-sat)
