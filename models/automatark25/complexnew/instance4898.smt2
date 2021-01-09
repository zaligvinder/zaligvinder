(declare-const X String)
; Host\x3AWordmyway\.comhoroscope2Host
(assert (not (str.in.re X (str.to.re "Host:Wordmyway.comhoroscope2Host\x0a"))))
; (\d{1,3}[\.]\d*)[, ]+-?(\d{1,3}[\.]\d*)
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ",") (str.to.re " "))) (re.opt (str.to.re "-")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))))))
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (not (str.in.re X (re.++ (str.to.re "<textarea") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</textarea>\x0a")))))
; ^(\d){7,8}$
(assert (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com\x0a")))))
(check-sat)
