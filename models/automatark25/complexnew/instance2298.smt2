(declare-const X String)
; [+]346[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; \x2Fdss\x2Fcc\.2_0_0\.GoogleHXDownloadasdbiz\x2Ebiz
(assert (str.in.re X (str.to.re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\x0a")))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a")))))
; (\/\*[\s\S.]+?\*\/|[/]{2,}.*|\/((\\\/)|.??)*\/[gim]{0,3}|'((\\\')|.??)*'|"((\\\")|.??)*"|-?\d+\.\d+e?-?e?\d*|-?\.\d+e-?\d+|\w+|[\[\]\(\)\{\}:=;"'\-&!|+,.\/*])
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "/*") (re.+ (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*/")) (re.++ (re.* re.allchar) ((_ re.loop 2 2) (str.to.re "/")) (re.* (str.to.re "/"))) (re.++ (str.to.re "/") (re.* (re.union (str.to.re "\x5c/") (re.opt re.allchar))) (str.to.re "/") ((_ re.loop 0 3) (re.union (str.to.re "g") (str.to.re "i") (str.to.re "m")))) (re.++ (str.to.re "'") (re.* (re.union (str.to.re "\x5c'") (re.opt re.allchar))) (str.to.re "'")) (re.++ (str.to.re "\x22") (re.* (re.union (str.to.re "\x5c\x22") (re.opt re.allchar))) (str.to.re "\x22")) (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (re.opt (str.to.re "e")) (re.opt (str.to.re "-")) (re.opt (str.to.re "e")) (re.* (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "e") (re.opt (str.to.re "-")) (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "[") (str.to.re "]") (str.to.re "(") (str.to.re ")") (str.to.re "{") (str.to.re "}") (str.to.re ":") (str.to.re "=") (str.to.re ";") (str.to.re "\x22") (str.to.re "'") (str.to.re "-") (str.to.re "&") (str.to.re "!") (str.to.re "|") (str.to.re "+") (str.to.re ",") (str.to.re ".") (str.to.re "/") (str.to.re "*")) (str.to.re "\x0a"))))
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jp2") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
