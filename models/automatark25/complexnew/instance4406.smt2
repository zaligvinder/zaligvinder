(declare-const X String)
; /rec\.php$/Usmi
(assert (str.in.re X (str.to.re "/rec.php/Usmi\x0a")))
; ookflolfctm\x2fnmot\.fmu
(assert (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a")))
; \x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecommedia\x2Etop-banners\x2Ecom\x2Fbar_pl\x2Fb\.fcgi
(assert (not (str.in.re X (str.to.re "[StaticHost:FROM:cs.shopperreports.commedia.top-banners.com/bar_pl/b.fcgi\x0a"))))
; /\.php\?id=(\d{5}-\d{3}-\d{7}-\d{5}|0[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}1)&ver=\d{7}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?id=") (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-") ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-"))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "1"))) (str.to.re "&ver=") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
