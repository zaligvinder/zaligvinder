(declare-const X String)
; ^[-|\+]?[0-9]{1,3}(\,[0-9]{3})*$|^[-|\+]?[0-9]+$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a"))))
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in.re X (str.to.re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\x0a"))))
; ^\d{2}\s{1}(Jan|Feb|Mar|Apr|May|Jun|Jul|Apr|Sep|Oct|Nov|Dec)\s{1}\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "Jan") (str.to.re "Feb") (str.to.re "Mar") (str.to.re "Apr") (str.to.re "May") (str.to.re "Jun") (str.to.re "Jul") (str.to.re "Apr") (str.to.re "Sep") (str.to.re "Oct") (str.to.re "Nov") (str.to.re "Dec")) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
