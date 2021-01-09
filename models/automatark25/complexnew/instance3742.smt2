(declare-const X String)
; port\d+\.compress\s+aresflashdownloader\x2Ecomv\x2Edll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (re.++ (str.to.re "port") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.comv.dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a")))))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (str.in.re X (re.++ (str.to.re "//software.php?/Ui\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (not (str.in.re X (re.++ (str.to.re "/.document.insertBefore") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ","))) (str.to.re ")/smi\x0a")))))
; ^([1-9]{1}(([0-9])?){2})+(,[0-9]{1}[0-9]{2})*$
(assert (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.opt (re.range "0" "9"))))) (re.* (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
