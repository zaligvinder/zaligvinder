(declare-const X String)
; ^((0[123456789]|1[0-2])(0[1-3]|1[0-9]|2[0-9]))|((0[13456789]|1[0-2])(30))|((0[13578]|1[02])(31))$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (re.++ (str.to.re "0") (re.range "1" "3")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")))) (re.++ (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "30")) (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2")))) (str.to.re "31")))))
; ^([^S]|S[^E]|SE[^P]).*
(assert (str.in.re X (re.++ (re.union (re.comp (str.to.re "S")) (re.++ (str.to.re "S") (re.comp (str.to.re "E"))) (re.++ (str.to.re "SE") (re.comp (str.to.re "P")))) (re.* re.allchar) (str.to.re "\x0a"))))
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "alert") (re.+ (re.range "0" "9")) (str.to.re "an") (re.* re.allchar) (str.to.re "Spyiz=e2give.comrichfind.com\x0a")))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "information") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a")))))
; ^([1-9]{0,1})([0-9]{1})((\.[0-9]{0,1})([0-9]{1})|(\,[0-9]{0,1})([0-9]{1}))?$
(assert (str.in.re X (re.++ (re.opt (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ".") (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ",") (re.opt (re.range "0" "9"))))) (str.to.re "\x0a"))))
(check-sat)
