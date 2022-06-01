(declare-const X String)
; /filename=[^\n]*\u{2e}m4r/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4r/i\u{a}"))))
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (str.in_re X (re.union (str.to_re "1") (re.++ (str.to_re "\u{a}") (re.+ (str.to_re "1")) (re.* (re.range "0" "9")) (re.+ (str.to_re ".")) (re.* (re.range "0" "9")) (re.range "1" "5")))))
; <(\/{0,1})img(.*?)(\/{0,1})\>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (str.to_re "img") (re.* re.allchar) (re.opt (str.to_re "/")) (str.to_re ">\u{a}")))))
; <script type="text/javascript">
(assert (str.in_re X (str.to_re "<script type=\u{22}text/javascript\u{22}>\u{a}")))
; Server\s+www\u{2E}peer2mail\u{2E}comsubject\u{3A}fileId\u{3d}\u{5b}
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.comsubject:fileId=[\u{a}")))))
(check-sat)
