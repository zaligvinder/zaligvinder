(declare-const X String)
; User-Agent\x3A\s+www\x2Emyarmory\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.myarmory.com\x0a"))))
; /filename=[^\n]*\x2ehhk/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hhk/i\x0a"))))
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Address:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAtsHTTP_RAT_Subject:\x0a")))))
; ^(\$|R\$|\-\$|\-R\$|\$\-|R\$\-|-)?([0-9]{1}[0-9]{0,2}(\.[0-9]{3})*(\,[0-9]{0,2})?|[1-9]{1}[0-9]{0,}(\,[0-9]{0,2})?|0(\,[0-9]{0,2})?|(\,[0-9]{1,2})?)$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "$") (str.to.re "R$") (str.to.re "-$") (str.to.re "-R$") (str.to.re "$-") (str.to.re "R$-") (str.to.re "-"))) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
