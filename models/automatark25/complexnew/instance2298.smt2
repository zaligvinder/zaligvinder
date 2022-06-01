(declare-const X String)
; [+]346[0-9]{8}
(assert (str.in_re X (re.++ (str.to_re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; \u{2F}dss\u{2F}cc\.2_0_0\.GoogleHXDownloadasdbiz\u{2E}biz
(assert (str.in_re X (str.to_re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\u{a}")))
; /filename=[^\n]*\u{2e}sum/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}")))))
; (\/\*[\s\S.]+?\*\/|[/]{2,}.*|\/((\\\/)|.??)*\/[gim]{0,3}|'((\\\')|.??)*'|"((\\\")|.??)*"|-?\d+\.\d+e?-?e?\d*|-?\.\d+e-?\d+|\w+|[\[\]\(\)\{\}:=;"'\-&!|+,.\/*])
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "/*") (re.+ (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*/")) (re.++ (re.* re.allchar) ((_ re.loop 2 2) (str.to_re "/")) (re.* (str.to_re "/"))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "\u{5c}/") (re.opt re.allchar))) (str.to_re "/") ((_ re.loop 0 3) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m")))) (re.++ (str.to_re "'") (re.* (re.union (str.to_re "\u{5c}'") (re.opt re.allchar))) (str.to_re "'")) (re.++ (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{5c}\u{22}") (re.opt re.allchar))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (re.opt (str.to_re "e")) (re.opt (str.to_re "-")) (re.opt (str.to_re "e")) (re.* (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "e") (re.opt (str.to_re "-")) (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "{") (str.to_re "}") (str.to_re ":") (str.to_re "=") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "-") (str.to_re "&") (str.to_re "!") (str.to_re "|") (str.to_re "+") (str.to_re ",") (str.to_re ".") (str.to_re "/") (str.to_re "*")) (str.to_re "\u{a}"))))
; /\u{2e}jp2([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jp2") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
