(declare-const X String)
; \b(((20)((0[0-9])|(1[0-1])))|(([1][^0-8])?\d{2}))((0[1-9])|1[0-2])((0[1-9])|(2[0-9])|(3[01]))[-+]?\d{4}[,.]?\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "20") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.++ (re.opt (re.++ (str.to.re "1") (re.range "0" "8"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.opt (re.union (str.to.re "-") (str.to.re "+"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a")))))
; ^[\+\-]?\d+(,\d+)?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; www\x2Emakemesearch\x2EcomLOGOnevclxatmlhavj\x2fvsy
(assert (not (str.in.re X (str.to.re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gni") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a"))))
(check-sat)
