(declare-const X String)
; /^\x2frouji.txt$/mU
(assert (not (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a")))))
; ^[+]?100(\.0{1,2})?%?$|^[+]?\d{1,2}(\.\d{1,2})?%?$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (str.to.re "0")))) (re.opt (str.to.re "%"))) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; ^((1[01])|(\d)):[0-5]\d(:[0-5]\d)?\s?([apAP][Mm])?$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "M") (str.to.re "m")))) (str.to.re "\x0a"))))
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "HBand,") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
(check-sat)
