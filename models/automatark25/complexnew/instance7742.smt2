(declare-const X String)
; /php\?jnlp\=[a-f0-9]{10}($|\x2c)/U
(assert (str.in.re X (re.++ (str.to.re "/php?jnlp=") ((_ re.loop 10 10) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ",/U\x0a"))))
; /^[014567d]-/R
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "d")) (str.to.re "-/R\x0a")))))
; /filename=[^\n]*\x2ert/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rt/i\x0a")))))
; <(.|\n)*?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">\x0a"))))
; /^Cookie\x3a\s?SECID=[^\x3b]+?$/mD
(assert (not (str.in.re X (re.++ (str.to.re "/Cookie:") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SECID=") (re.+ (re.comp (str.to.re ";"))) (str.to.re "/mD\x0a")))))
(check-sat)
