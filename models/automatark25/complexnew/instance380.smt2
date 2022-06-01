(declare-const X String)
; Cookie\u{3a}AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))
; ^[89][0-9]{9}
(assert (str.in_re X (re.++ (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}"))))
; search\u{2e}imesh\u{2e}com\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in_re X (re.++ (str.to_re "search.imesh.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WatchDogupwww.klikvipsearch.com\u{a}"))))
; Searchdata2\.activshopper\.comdll\u{3F}productsCUSTOMSAccwww\u{2E}locators\u{2E}com
(assert (str.in_re X (str.to_re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\u{a}")))
(check-sat)
