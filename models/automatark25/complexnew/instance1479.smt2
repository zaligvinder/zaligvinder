(declare-const X String)
; ^(\+?\d{1,2}[ -]?)?(\(\+?\d{2,3}\)|\+?\d{2,3})?[ -]?\d{3,4}[ -]?\d{3,4}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) (re.opt (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9"))))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2efli/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fli/i\x0a"))))
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (str.to.re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\x0a")))
(check-sat)
