(declare-const X String)
; /^\x2f\d{3}\x2f\d{3}\x2ehtml$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".html/U\x0a")))))
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in.re X (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a")))
; /filename=[^\n]*\x2esvg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".svg/i\x0a")))))
; ^([-]?[0-9]?(\.[0-9]{0,2})?)$|^([-]?([1][0-1])(\.[0-9]{0,2})?)$|^([-]?([1][0-3](\.[0]{0,2})))$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "-")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "1") (re.range "0" "1")) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (str.to.re "1") (re.range "0" "3") (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0"))))))
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "connectedNodes/cgi-bin/PopupV\x0a"))))
(check-sat)
