(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gni") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a"))))
; /^USER\x20(XP|98|95|NT|ME|WIN|2K3)\x2d\d+\x20\x2a\x20\x30\x20\x3a/mi
(assert (not (str.in.re X (re.++ (str.to.re "/USER ") (re.union (str.to.re "XP") (str.to.re "98") (str.to.re "95") (str.to.re "NT") (str.to.re "ME") (str.to.re "WIN") (str.to.re "2K3")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " * 0 :/mi\x0a")))))
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "My") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22TheZC-BridgeUser-Agent:serverUSER-Attached\x0a"))))
; /filename\=[a-z0-9]{24}\.jar/H
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/H\x0a"))))
(check-sat)
