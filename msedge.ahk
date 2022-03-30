prm2 := A_Args[2]

if InStr(prm2, "https") {
} else {
if InStr(prm2, "") {
} else {
MsgBox, Error at Line 32`.`r`n`r`nArg`: %2%`r`nError: The argument is not a URL`.`r`n`r`nThe program will exit`.
ExitApp,
}
}

if InStr(prm2, "--out-pipe-name") {
ExitApp,
}

HTML := RegExReplace(prm2, ".*https%3A%2F%2F", "")
HTML := StrReplace(HTML, "microsoft-edge:", "")
HTML := StrReplace(HTML, "https://", "")
HTML := StrReplace(HTML, "%3F", "?")
HTML := StrReplace(HTML, "%26", "&")
HTML := StrReplace(HTML, "%21", "!")
HTML := StrReplace(HTML, "%23", "#")
HTML := StrReplace(HTML, "%24", "$")
HTML := StrReplace(HTML, "%25", "%")
HTML := StrReplace(HTML, "%27", "'")
HTML := StrReplace(HTML, "%28", "(")
HTML := StrReplace(HTML, "%29", ")")
HTML := StrReplace(HTML, "%2A", "*")
HTML := StrReplace(HTML, "%2B", "+")
HTML := StrReplace(HTML, "%2C", ",")
HTML := StrReplace(HTML, "%2F", "/")
HTML := StrReplace(HTML, "%3A", ":")
HTML := StrReplace(HTML, "%3B", ";")
HTML := StrReplace(HTML, "%3D", "=")
HTML := StrReplace(HTML, "%40", "@")
HTML := StrReplace(HTML, "%5B", "[")
HTML := StrReplace(HTML, "%5D", "]")

Run, http://%html%
