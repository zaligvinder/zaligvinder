(declare-const X String)
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (str.to.re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\x0a")))
(check-sat)
