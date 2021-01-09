(declare-const X String)
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (str.to.re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\x0a")))
; ([(]?\d{3}[)]?(-| |.)?\d{3}(-| |.)?\d{4})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") re.allchar)) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") re.allchar)) ((_ re.loop 4 4) (re.range "0" "9"))))))
; /^images.php\?t=\d{2,7}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/images") re.allchar (str.to.re "php?t=") ((_ re.loop 2 7) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; /\x2ecnt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cnt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
