(declare-const X String)
; /filename=[^\n]*\x2empeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpeg/i\x0a")))))
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\x00{7}\x55\x00{3}\x21.{4}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 7 7) (str.to.re "\x00")) (str.to.re "U") ((_ re.loop 3 3) (str.to.re "\x00")) (str.to.re "!") ((_ re.loop 4 4) re.allchar) (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ")") (str.to.re ";")) (str.to.re "/\x0a"))))
; ((19|20)[\d]{2}/[\d]{6}/[\d]{2})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9"))))))
; ^[[V|E|J|G]\d\d\d\d\d\d\d\d]{0,9}$
(assert (str.in.re X (re.++ (re.union (str.to.re "[") (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") ((_ re.loop 0 9) (str.to.re "]")) (str.to.re "\x0a"))))
(check-sat)
