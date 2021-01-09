(declare-const X String)
; ^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$
(assert (str.in.re X (re.++ (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.comp (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(http(s?):\/\/)(www.)?(\w|-)+(\.(\w|-)+)*((\.[a-zA-Z]{2,3})|\.(aero|coop|info|museum|name))+(\/)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "www") re.allchar)) (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.+ (re.union (re.++ (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re ".") (re.union (str.to.re "aero") (str.to.re "coop") (str.to.re "info") (str.to.re "museum") (str.to.re "name"))))) (re.opt (str.to.re "/")) (str.to.re "\x0ahttp") (re.opt (str.to.re "s")) (str.to.re "://")))))
(check-sat)
