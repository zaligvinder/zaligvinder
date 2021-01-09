(declare-const X String)
; ^((67\d{2})|(4\d{3})|(5[1-5]\d{2})|(6011))-?\s?\d{4}-?\s?\d{4}-?\s?\d{4}|3[4,7]\d{13}$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "67") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "6011")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "4") (str.to.re ",") (str.to.re "7")) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a"))))))
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (not (str.in.re X (str.to.re "Referer:www.ccnnlc.com\x13\x04\x00User-Agent:\x22The\x0a"))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "configINTERNAL.inikwdwww.wordiq.com\x1bas.starware.com\x0a"))))
; ^[ 1(]{0,3}?([02-9][0-9]{2})\D{0,2}([0-9]{3})\D?([0-9]{4})($|\D+.+$)
(assert (not (str.in.re X (re.++ ((_ re.loop 0 3) (re.union (str.to.re " ") (str.to.re "1") (str.to.re "("))) ((_ re.loop 0 2) (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a") (re.union (str.to.re "0") (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.+ (re.comp (re.range "0" "9"))) (re.+ re.allchar)))))
(check-sat)
