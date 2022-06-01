(declare-const X String)
; Host\u{3A}Wordmyway\.comhoroscope2Host
(assert (not (str.in_re X (str.to_re "Host:Wordmyway.comhoroscope2Host\u{a}"))))
; (\d{1,3}[\.]\d*)[, ]+-?(\d{1,3}[\.]\d*)
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re ",") (str.to_re " "))) (re.opt (str.to_re "-")) (str.to_re "\u{a}") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))))))
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (not (str.in_re X (re.++ (str.to_re "<textarea") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</textarea>\u{a}")))))
; ^(\d){7,8}$
(assert (str.in_re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; www\u{2E}weepee\u{2E}com\w+Owner\u{3A}\d+metaresults\.copernic\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.+ (re.range "0" "9")) (str.to_re "metaresults.copernic.com\u{a}")))))
(check-sat)
