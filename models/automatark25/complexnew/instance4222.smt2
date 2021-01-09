(declare-const X String)
; RequestWindowszzzvmkituktgr\x2fetieencoder
(assert (str.in.re X (str.to.re "RequestWindowszzzvmkituktgr/etieencoder\x0a")))
; /\/pte\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//pte.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; /^[0-9a-fA-F]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/\x0a"))))
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (not (str.in.re X (re.union (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "!") (str.to.re "|") (str.to.re "\x5c") (str.to.re "}") (str.to.re "]") (str.to.re "[") (str.to.re "{") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re ".") (str.to.re ">") (str.to.re "<") (str.to.re "*") (re.range "0" "9") (str.to.re "(") (str.to.re ")") (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z")))))
; www\x2Epcsentinelsoftware\x2Ecom
(assert (not (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a"))))
(check-sat)
