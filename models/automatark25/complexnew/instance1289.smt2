(declare-const X String)
; (^\d{1,3}$)|(\d{1,3})\.?(\d{0,0}[0,5])
(assert (str.in.re X (re.union ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re ".")) (str.to.re "\x0a") ((_ re.loop 0 0) (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "5"))))))
; /filename=[^\n]*\x2ecnt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cnt/i\x0a"))))
; ppcdomain\x2Eco\x2EukBasic
(assert (not (str.in.re X (str.to.re "ppcdomain.co.ukBasic\x0a"))))
; ^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "8"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2")))) (re.++ (str.to.re "31/") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2"))))) (re.++ (re.union (str.to.re "29") (str.to.re "30")) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re ",") (re.range "3" "9"))) (re.++ (str.to.re "1") (re.range "0" "2"))))) (str.to.re "/") (re.union (re.++ (str.to.re "20") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to.re "\x0a29/02/") (re.union (str.to.re "19") (str.to.re "20")) (re.union (re.++ (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.union (str.to.re "0") (str.to.re "4") (str.to.re "8"))) (re.++ (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "9")) (re.union (str.to.re "2") (str.to.re "6")))))))))
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "]") (str.to.re "\x22"))) (re.* (re.comp (str.to.re "["))) (str.to.re "[/url]\x0a[url") (re.opt (str.to.re "=")) (re.opt (str.to.re "\x22")) (re.opt (str.to.re "\x22")) (str.to.re "]"))))
(check-sat)
