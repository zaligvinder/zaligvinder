(declare-const X String)
; Login\d+dll\x3FHOST\x3Acontains
(assert (not (str.in.re X (re.++ (str.to.re "Login") (re.+ (re.range "0" "9")) (str.to.re "dll?HOST:contains\x0a")))))
; ^[1-9]{1}[0-9]{3}-(0[1-9]{1}|1[0-2]{1})-([0-2]{1}[1-9]{1}|3[0-1]{1}) ([0-1]{1}[0-9]{1}|2[0-3]{1}):[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "1") ((_ re.loop 1 1) (re.range "0" "2")))) (str.to.re "-") (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "3") ((_ re.loop 1 1) (re.range "0" "1")))) (str.to.re " ") (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "3")))) (str.to.re ":") ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; cid=tb\x2e\s+NETObserve\s+WinSession
(assert (not (str.in.re X (re.++ (str.to.re "cid=tb.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObserve") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WinSession\x0a")))))
; /\/flash201(3|4)\.php$/U
(assert (not (str.in.re X (re.++ (str.to.re "//flash201") (re.union (str.to.re "3") (str.to.re "4")) (str.to.re ".php/U\x0a")))))
; ^(([1-9]{1}[0-9]{0,5}([.]{1}[0-9]{0,2})?)|(([0]{1}))([.]{1}[0-9]{0,2})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "0")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9")))))) (str.to.re "\x0a")))))
(check-sat)
