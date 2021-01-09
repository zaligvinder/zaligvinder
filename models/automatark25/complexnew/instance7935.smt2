(declare-const X String)
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13Subject:\x0a")))))
; ^([0-9]{2})(00[1-9]|0[1-9][0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-6])$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to.re "00") (re.range "1" "9")) (re.++ (str.to.re "0") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to.re "36") (re.range "0" "6"))) (str.to.re "\x0a"))))
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (str.in.re X (re.++ (str.to.re "/Libs/Starter") (re.union (str.to.re "CmdExec") (str.to.re "NetUtils") (str.to.re "Rec") (str.to.re "ScreenShots") (str.to.re "Settings")) (str.to.re ".py/\x0a"))))
; User-Agent\x3AWeb-Mail
(assert (str.in.re X (str.to.re "User-Agent:Web-Mail\x0a")))
(check-sat)
