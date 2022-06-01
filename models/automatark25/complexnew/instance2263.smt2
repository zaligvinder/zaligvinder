(declare-const X String)
; (^-\d*\.?\d*[1-9]+\d*$)|(^-[1-9]+\d*\.\d*$)
(assert (str.in_re X (re.union (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to_re "\u{a}-") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))))))
; e2give\.comConnectionSpywww\u{2E}slinkyslate
(assert (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}")))
(check-sat)
