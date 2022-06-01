(declare-const X String)
; ^([a-zA-Z,#/ \.\(\)\-\+\*]*[0-9]){7}[0-9a-zA-Z,#/ \.\(\)\-\+\*]*$
(assert (not (str.in_re X (re.++ ((_ re.loop 7 7) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (re.range "0" "9"))) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re ",") (str.to_re "#") (str.to_re "/") (str.to_re " ") (str.to_re ".") (str.to_re "(") (str.to_re ")") (str.to_re "-") (str.to_re "+") (str.to_re "*"))) (str.to_re "\u{a}")))))
; www\.thecommunicator\.net\d+http\u{3A}\u{2F}\u{2F}tv\u{2E}seekmo\u{2E}com\u{2F}showme\u{2E}aspx\u{3F}keyword=
(assert (not (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))))
(check-sat)
