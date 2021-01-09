(declare-const X String)
; (^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)
(assert (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm") (str.to.re "aM") (str.to.re "Am") (str.to.re "pM") (re.++ (str.to.re "P") ((_ re.loop 2 2) (str.to.re "m")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm") (str.to.re "aM") (str.to.re "Am") (str.to.re "pM") (re.++ (str.to.re "P") ((_ re.loop 2 2) (str.to.re "m"))))))))
; \\$\\d+[.]?\\d*
(assert (str.in.re X (re.++ (str.to.re "\x5c\x5c") (re.+ (str.to.re "d")) (re.opt (str.to.re ".")) (str.to.re "\x5c") (re.* (str.to.re "d")) (str.to.re "\x0a"))))
; \x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (str.to.re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\x0a")))
(check-sat)
