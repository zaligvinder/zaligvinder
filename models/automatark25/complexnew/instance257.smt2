(declare-const X String)
; ^(\d{1,3}'(\d{3}')*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{3})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "'") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "'"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; Toolbarverpop\x2Epopuptoast\x2Ecomtvshowticketscount\x2Eyok\x2Ecom
(assert (not (str.in.re X (str.to.re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\x0a"))))
; ^[\w]{3}(p|P|c|C|h|H|f|F|a|A|t|T|b|B|l|L|j|J|g|G)[\w][\d]{4}[\w]$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "p") (str.to.re "P") (str.to.re "c") (str.to.re "C") (str.to.re "h") (str.to.re "H") (str.to.re "f") (str.to.re "F") (str.to.re "a") (str.to.re "A") (str.to.re "t") (str.to.re "T") (str.to.re "b") (str.to.re "B") (str.to.re "l") (str.to.re "L") (str.to.re "j") (str.to.re "J") (str.to.re "g") (str.to.re "G")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re "\x0a")))))
; (\(")([0-9]*)(\")
(assert (str.in.re X (re.++ (str.to.re "(\x22") (re.* (re.range "0" "9")) (str.to.re "\x22\x0a"))))
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\x0a")))
(check-sat)
