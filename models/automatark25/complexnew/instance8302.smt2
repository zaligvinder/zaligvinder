(declare-const X String)
; /Expression\x28\s*?GetClass\x28\x22sun.awt.SunToolkit\x22\x29\s*?,\s*?\x22getField\x22/smi
(assert (str.in.re X (re.++ (str.to.re "/Expression(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GetClass(\x22sun") re.allchar (str.to.re "awt") re.allchar (str.to.re "SunToolkit\x22)") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22getField\x22/smi\x0a"))))
; ^\$\d{1,3}(,?\d{3})*(\.\d{2})?$
(assert (str.in.re X (re.++ (str.to.re "$") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2enab/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".nab/i\x0a")))))
; /filename=[^\n]*\x2erp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rp/i\x0a"))))
(check-sat)
