Dim frases(4)
frases(0) = "Eu estou te vendo!"
frases(1) = "Eu estou aqui!"
frases(2) = "Você está sozinho(a)?"
frases(3) = "Sempre gostei do seu cabelo"
frases(4) = "Podemos conversar?"

Dim i
i = 0

Do While True
    x=msgbox(frases(i), 0+64, "Título da Mensagem")
    i = (i + 1) Mod 5  ' Alterna entre os índices 0 a 4
    CreateObject("WScript.Shell").Run "wscript.exe """ & WScript.ScriptFullName & """", 0, False
Loop
