(declare-const X String)
; /filename=[^\n]*\x2em4r/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4r/i\x0a"))))
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (str.in.re X (re.union (str.to.re "1") (re.++ (str.to.re "\x0a") (re.+ (str.to.re "1")) (re.* (re.range "0" "9")) (re.+ (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "5")))))
; <(\/{0,1})img(.*?)(\/{0,1})\>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "img") (re.* re.allchar) (re.opt (str.to.re "/")) (str.to.re ">\x0a")))))
; <script type="text/javascript">
(assert (str.in.re X (str.to.re "<script type=\x22text/javascript\x22>\x0a")))
; Server\s+www\x2Epeer2mail\x2Ecomsubject\x3AfileId\x3d\x5b
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.comsubject:fileId=[\x0a")))))
(check-sat)
