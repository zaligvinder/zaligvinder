(declare-const X String)
; Searchdata2\.activshopper\.comdll\u{3F}productsCUSTOMSAccwww\u{2E}locators\u{2E}com
(assert (str.in_re X (str.to_re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\u{a}")))
; User-Agent\u{3a}\w+Owner\u{3A}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:\u{a}"))))
(check-sat)
