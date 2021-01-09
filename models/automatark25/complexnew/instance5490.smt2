(declare-const X String)
; /User-Agent\x3A\s+?mus[\x0d\x0a]/iH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "mus") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "/iH\x0a")))))
; /filename=[^\n]*\x2exslt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a"))))
; \d+([\.|\,][0]+?[1-9]+)?
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) (re.+ (str.to.re "0")) (re.+ (re.range "1" "9")))) (str.to.re "\x0a"))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9")))))))
(check-sat)
