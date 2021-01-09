(declare-const X String)
; richfind\x2EcomCookie\x3aName=Your\+Host\+is\x3A
(assert (not (str.in.re X (str.to.re "richfind.comCookie:Name=Your+Host+is:\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gni") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a"))))
; ([\r\n ]*//[^\r\n]*)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a"))))
; ^A([0-9]|10)$
(assert (str.in.re X (re.++ (str.to.re "A") (re.union (re.range "0" "9") (str.to.re "10")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewrf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wrf/i\x0a")))))
(check-sat)
