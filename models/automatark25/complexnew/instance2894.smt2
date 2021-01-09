(declare-const X String)
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (not (str.in.re X (re.union (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "!") (str.to.re "|") (str.to.re "\x5c") (str.to.re "}") (str.to.re "]") (str.to.re "[") (str.to.re "{") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re ".") (str.to.re ">") (str.to.re "<") (str.to.re "*") (re.range "0" "9") (str.to.re "(") (str.to.re ")") (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z")))))
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (not (str.in.re X (str.to.re "findX-Mailer:\x13User-Agent:www.take5bingo.com\x1bX-Mailer:\x13\x04\x00\x0a"))))
; MyBrowserSbAtsHost\x3A
(assert (str.in.re X (str.to.re "MyBrowserSbAtsHost:\x0a")))
; /filename=[^\n]*\x2etar/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tar/i\x0a"))))
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
