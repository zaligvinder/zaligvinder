(declare-const X String)
; version\s+error\*\-\*WrongUser-Agent\u{3A}com\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "error*-*WrongUser-Agent:com/index.php?tpid=\u{a}")))))
; /^POST\u{20}\u{2f}[A-F\d]{42}\u{20}HTTP/
(assert (str.in_re X (re.++ (str.to_re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re " HTTP/\u{a}"))))
; ^([012346789][0-9]{4})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
; X-OSSproxy\u{3a}\dMicrosoft\u{2A}PORT3\u{2A}ProLive\+Version\+3A
(assert (str.in_re X (re.++ (str.to_re "X-OSSproxy:") (re.range "0" "9") (str.to_re "Microsoft*PORT3*ProLive+Version+3A\u{a}"))))
; ^([0-9]{3,4})$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
