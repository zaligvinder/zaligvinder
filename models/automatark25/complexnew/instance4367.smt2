(declare-const X String)
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 48 48) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; /MODE\sd?u?n?\u{7b}[AU]\u{5c}[LD]\u{5c}(86|64)\u{5c}\w{0,8}\u{5c}\w{2,16}\u{7d}[a-z]{8}\s\u{2B}piwksT\u{2D}x\u{D}\u{A}/i
(assert (not (str.in_re X (re.++ (str.to_re "/MODE") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.opt (str.to_re "d")) (re.opt (str.to_re "u")) (re.opt (str.to_re "n")) (str.to_re "{") (re.union (str.to_re "A") (str.to_re "U")) (str.to_re "\u{5c}") (re.union (str.to_re "L") (str.to_re "D")) (str.to_re "\u{5c}") (re.union (str.to_re "86") (str.to_re "64")) (str.to_re "\u{5c}") ((_ re.loop 0 8) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") ((_ re.loop 2 16) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "}") ((_ re.loop 8 8) (re.range "a" "z")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "+piwksT-x\u{d}\u{a}/i\u{a}")))))
; www\u{2E}freescratchandwin\u{2E}com\w+Port.*User-Agent\u{3A}Toolbarkit
(assert (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Port") (re.* re.allchar) (str.to_re "User-Agent:Toolbarkit\u{a}"))))
; /[^ -~\r\n]{4}/P
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}"))))
(check-sat)
