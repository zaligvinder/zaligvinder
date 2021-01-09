(declare-const X String)
; ^([01][012]|0[1-9])/([0-2][0-9]|[3][0-1])/([0-9][0-9][0-9][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.++ (str.to.re "0") (re.range "1" "9"))) (str.to.re "/") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/\x0a") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (not (str.in.re X (str.to.re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\x0a"))))
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (not (str.in.re X (re.++ (str.to.re "/.document.insertBefore") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ","))) (str.to.re ")/smi\x0a")))))
(check-sat)
