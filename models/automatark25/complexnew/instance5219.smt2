(declare-const X String)
; /filename=[^\n]*\x2eqt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qt/i\x0a")))))
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (str.in.re X (re.++ (str.to.re "Kontiki") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13|roogoo|\x0a"))))
; User-Agent\x3A\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "xbqyosoe/cpvmAdToolsconnectedNodes\x0a")))))
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a")))))
; WinSession\w+asdbiz\x2Ebiz\dpjpoptwql\x2frlnj\x2Fpagead\x2Fads\?
(assert (str.in.re X (re.++ (str.to.re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.biz") (re.range "0" "9") (str.to.re "pjpoptwql/rlnj/pagead/ads?\x0a"))))
(check-sat)
