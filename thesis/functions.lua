function rmLineEnds(text)
    print('>>>>>>>>>>>>>>>> here we go')
    local s, _ = string.gsub(text, "a", "X")
    return s
end

function rawText(text)
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>---------------------------------------------------")
    print(text)
    text = string.gsub(text, "\\\\", "")
    print(text)
    tex.print(text)
end
