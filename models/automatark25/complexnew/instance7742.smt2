(declare-const X String)
; /php\?jnlp\=[a-f0-9]{10}($|\u{2c})/U
(assert (str.in_re X (re.++ (str.to_re "/php?jnlp=") ((_ re.loop 10 10) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ",/U\u{a}"))))
; /^[014567d]-/R
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "d")) (str.to_re "-/R\u{a}")))))
; /filename=[^\n]*\u{2e}rt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rt/i\u{a}")))))
; <(.|\n)*?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">\u{a}"))))
; /^Cookie\u{3a}\s?SECID=[^\u{3b}]+?$/mD
(assert (not (str.in_re X (re.++ (str.to_re "/Cookie:") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SECID=") (re.+ (re.comp (str.to_re ";"))) (str.to_re "/mD\u{a}")))))
(check-sat)
