(declare-const X String)
; /listoverridecount([2345678]|[019][0-9])/i
(assert (str.in.re X (re.++ (str.to.re "/listoverridecount") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "9")) (re.range "0" "9")) (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8")) (str.to.re "/i\x0a"))))
; ^\{?[a-fA-F\d]{32}\}?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "{")) ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt (str.to.re "}")) (str.to.re "\x0a")))))
; ^(\d{4}-){3}\d{4}$|^(\d{4} ){3}\d{4}$|^\d{16}$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a"))))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
(check-sat)
