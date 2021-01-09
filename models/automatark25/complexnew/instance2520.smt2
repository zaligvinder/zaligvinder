(declare-const X String)
; (\d{1,2}(\:|\s)\d{1,2}(\:|\s)\d{1,2}\s*(AM|PM|A|P))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ":") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ":") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "A") (str.to.re "P"))))))
; /^ver\x3aGhost\s+version\s+\d+\x2E\d+\s+server/smi
(assert (not (str.in.re X (re.++ (str.to.re "/ver:Ghost") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "server/smi\x0a")))))
; ((\d{2})|(\d))\/((\d{2})|(\d))\/((\d{4})|(\d{2}))
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "9")) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "9")) (str.to.re "/") (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^\d{5}[- .]?\d{7}[- .]?\d{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
