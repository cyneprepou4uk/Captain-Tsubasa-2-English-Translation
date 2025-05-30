local time = os.clock()       --record script execution time


--список файлов для подготовки перед конвертацией
--list of files which need to be prepared before compilation
local files_list = {
    "bank_80.asm",
    "bank_81.asm",
    "bank_82.asm",
    "bank_83.asm",
    "bank_84.asm",
    "bank_85.asm",
    "bank_86.asm",
    "bank_87.asm",
    "bank_88.asm",
    "bank_89.asm",
    "bank_8A.asm",
    "bank_8B.asm",
    "bank_8C.asm",
    "bank_8D.asm",
    "bank_8E.asm",
    "bank_8F.asm",
    "bank_90.asm",
    "bank_92.asm",
    "bank_93.asm",
    "bank_94.asm",
    "bank_96.asm",
    "bank_98.asm",
    "bank_9A.asm",
    "bank_9C.asm",
    "bank_9E.asm",
    "bank_9F.asm",
    "bank_A0.asm",
    "bank_A1.asm",
    "bank_A2.asm",
    "bank_A3.asm",
    "bank_A4.asm",
    "bank_A5.asm",
    "bank_A6.asm",
    "bank_A7.asm",
    "bank_A8.asm",
    "bank_A9.asm",
    "bank___future_expansion.asm",
    "bank_FF.asm",
    "bank_ram.inc",
    "bank_val.inc",
}



--конвертация символов внутри .text "xxx" в .byte $xx, $xx, $xx
--convert text into corresponding bytes
    --try to place most common characters at the top, so the script will work a bit faster
--WARNING: do not use " character for " itself in the files, instead use @ for example, like .text "@hello@"
local translation = {
    [" "] = "$20",
    
    ["A"] = "$41",      ["a"] = "$61",
    ["B"] = "$42",      ["b"] = "$62",
    ["C"] = "$43",      ["c"] = "$63",
    ["D"] = "$44",      ["d"] = "$64",
    ["E"] = "$45",      ["e"] = "$65",
    ["F"] = "$46",      ["f"] = "$66",
    ["G"] = "$47",      ["g"] = "$67",
    ["H"] = "$48",      ["h"] = "$68",
    ["I"] = "$49",      ["i"] = "$69",
    ["J"] = "$4A",      ["j"] = "$6A",
    ["K"] = "$4B",      ["k"] = "$6B",
    ["L"] = "$4C",      ["l"] = "$6C",
    ["M"] = "$4D",      ["m"] = "$6D",
    ["N"] = "$4E",      ["n"] = "$6E",
    ["O"] = "$4F",      ["o"] = "$6F",
    ["P"] = "$50",      ["p"] = "$70",
    ["Q"] = "$51",      ["q"] = "$71",
    ["R"] = "$52",      ["r"] = "$72",
    ["S"] = "$53",      ["s"] = "$73",
    ["T"] = "$54",      ["t"] = "$74",
    ["U"] = "$55",      ["u"] = "$75",
    ["V"] = "$56",      ["v"] = "$76",
    ["W"] = "$57",      ["w"] = "$77",
    ["X"] = "$58",      ["x"] = "$78",
    ["Y"] = "$59",      ["y"] = "$79",
    ["Z"] = "$5A",      ["z"] = "$7A",
    
    [","] = "$5C",
    ["."] = "$5B",
    ["@"] = "$7B",         --symbol "
    ["!"] = "$5E",
    ["?"] = "$5F",
    ["-"] = "$5D",
    ["_"] = "$3A, $3B",    --symbol --
    ["/"] = "$3E",
    [":"] = "$7D",
    ["("] = "$3C",
    [")"] = "$3D",
    ["'"] = "$7C",
    ["~"] = "$7E",
    ["#"] = "$7F",
    ["*"] = "$3F",
    ["%"] = "$40",
    
    ["0"] = "$30",
    ["1"] = "$31",
    ["2"] = "$32",
    ["3"] = "$33",
    ["4"] = "$34",
    ["5"] = "$35",
    ["6"] = "$36",
    ["7"] = "$37",
    ["8"] = "$38",
    ["9"] = "$39",
}

--если скрипт не нашел совпадений по таблице перевода, он заменяет символ на байт $30 (обычно это 0)
--in case the script can't find a match, it will replace a character with $30 (usually it's a zero)
local unknown_character = "$30"



--конвертация остальных русских символов в английские
--convert the rest of the text, which is labels and variables, into english
local english_labels = {
    "А",    "A",        "а",    "a",
    "Б",    "B",        "б",    "b",
    "В",    "V",        "в",    "v",
    "Г",    "G",        "г",    "g",
    "Д",    "D",        "д",    "d",
    "Е",    "E",        "е",    "e",
    "Ё",    "E",        "ё",    "e",
    "Ж",    "J",        "ж",    "j",
    "З",    "Z",        "з",    "z",
    "И",    "I",        "и",    "i",
    "Й",    "I",        "й",    "i",
    "К",    "K",        "к",    "k",
    "Л",    "L",        "л",    "l",
    "М",    "M",        "м",    "m",
    "Н",    "N",        "н",    "n",
    "О",    "O",        "о",    "o",
    "П",    "P",        "п",    "p",
    "Р",    "R",        "р",    "r",
    "С",    "S",        "с",    "s",
    "Т",    "T",        "т",    "t",
    "У",    "Y",        "у",    "y",
    "Ф",    "F",        "ф",    "f",
    "Х",    "H",        "х",    "h",
    "Ц",    "C",        "ц",    "c",
    "Ч",    "CH",       "ч",    "ch",
    "Ш",    "SH",       "ш",    "sh",
    "Щ",    "SH",       "щ",    "sh",
    "Ъ",    "b",        "ъ",    "b",
    "Ы",    "bI",       "ы",    "bI",
    "Ь",    "b",        "ь",    "b",
    "Э",    "E",        "э",    "e",
    "Ю",    "U",        "ю",    "u",
    "Я",    "Ja",       "я",    "ja",
    
    ".text", ".byte",       --for cases when text is already represented with bytes for some reason
}



--вспомогательная подпрограмма для вывода возможных ошибок при работе с файлами
--potential file error subroutine like "can't access file" or something
local function PrintError(err)
    print("\n"..err.."\nPress Enter to exit")
    io.read()
end



--[[ *** MAIN SCRIPT STARTS HERE *** --]]
print("*** Preparing files for the assembler ***\n")

for _, f in ipairs(files_list) do                               --execute this loop for each file from the list
    print("Working on "..f.." file...")
    
    
    
    --print("1 - reading file...")
    local file, err = io.open(f, "r")                           --open next file
    if err ~= nil then PrintError(err) end                      --check for errors during opening
    local text = file:read("*all")                              --read all text
    file:close()                                                --close file
    
    
    
    --print("2 - deleting garbage...")                            --garbage data to the left of the instructions
    text = string.gsub(text, ".%s.%s.%s.%s.%s.%s0x......%s..:....:...........", "\t")  
    
    
    
    --print("3 - writing the result to a temp copy...")
    local file_temp_copy, err = io.open("temp_"..f, "w+")       --create a temporary copy of the file and clear it if this file already exists for some reason
    if err ~= nil then PrintError(err) end                      --check for errors during opening
    file_temp_copy:close()                                      --close file
    file_temp_copy = io.open("temp_"..f, "a")                   --open temp copy again, this time in append mode
    io.output(file_temp_copy)                                   --set output target to a temp copy file
    io.write(text)                                              --paste text from the main file
    file_temp_copy:flush()                                      --make sure all text was pasted from the buffer
    file_temp_copy:close()                                      --close file
    
    
    
    --print("4 - translating text and pasting result to the main copy...")
    local file_main_copy, err = io.open("copy_"..f, "w+")       --create a main copy for assembler and clear it if this file already exists exists for some reason
    if err ~= nil then PrintError(err) end                      --check for errors during opening
    file_main_copy:close()                                      --close file
    file_main_copy = io.open("copy_"..f, "w")                   --open main copy again, this time in a write mode
    io.output(file_main_copy)                                   --set output target to the main copy file
    file_temp_copy = io.open("temp_"..f, "r")                   --open temp copy in a read mode
    
    while true do                                                                   --start translation loop
        local line = file_temp_copy:read("*line")                                   --read line from the file
        if line == nil then break end                                               --exit the loop if there is no more lines in the file
        local find_start, find_end = string.find(line, ".text "..[["]])             --check if there is any lines that contain .text "
        local f_start, _ = string.find(line, ";")                                   --check if there is a comment symbol
        if f_start ~= nil and find_start ~= nil then                                --if both comment and text are found
            if f_start < find_start then                                            --if comment symbol is placed before the text
                find_start = nil                                                    --pretend that there is no text here to translate
            end
        end
        
        if find_start ~= nil then                                                   --start the loop if found (if not, then just copy the whole line as is)
            local text = string.sub(line, find_end + 1)                             --copy all game text from the current line
            local _, length = string.find(text, [["]])                              --find out how long this text is
            local after = string.sub(text, length + 1, string.len(text))            --copy all characters after text
            text = string.sub(text, 0, length - 1)                                  --delete " at the end of the string
            
            local translated_text = ""                                              --this variable will contain all translated text
            for _, c in utf8.codes(text) do
                translated_text = translated_text..(translation[utf8.char(c)] or unknown_character)
                translated_text = translated_text..", "                             --add ", " after each translated character
            end
            
            text = string.sub(translated_text, 0, string.len(translated_text) - 2)          --delete the very last ", "
            line = "\t.byte "..text..after                                                  --create a total line
        end

        io.write(line.."\n")                                            --write line to the main copy
    end
    
    file_main_copy:flush()                              --make sure all text was pasted from the buffer
    file_main_copy:close()                              --close file
    os.remove("temp_"..f)                               --file should be removed, but it doesn't for some reason
                                                            --deletion is handled in assemble.bat
    
    
    
    --print("5 - translating labels and variables inside the main copy...")
    local file_main_copy, err = io.open("copy_"..f, "r")        --open a main copy in a read mode
    if err ~= nil then PrintError(err) end                      --check for errors during opening
    local text = file_main_copy:read("*all")                    --read all text
    file_main_copy:close()                                      --close file
    
    for i, _ in ipairs(english_labels) do                       --replace text with english letters
        if i % 2 ~= 0 then                                      --check every odd cycle
            text = string.gsub(text, english_labels[i], english_labels[i + 1])
        end
    end
    
    file_main_copy = io.open("copy_"..f, "w+")                  --open main copy and erase all text
    file_main_copy:close()                                      --close file
    file_main_copy = io.open("copy_"..f, "w")                   --open main copy again, this time in a write mode
    io.output(file_main_copy)                                   --set output target to this file
    io.write(text)                                              --paste translated text
    file_main_copy:flush()                                      --make sure all text was pasted from the buffer
    file_main_copy:close()                                      --close file



    --print("Done!\n")            --file is ready for the assembler
end



--создание файла комментов для FCEUX
--чтение перевведенного на английский файла с адресами
local inc_file, err = io.open("copy_bank_ram.inc", "r")
if err ~= nil then PrintError(err) end

local nl_file, err = io.open("_ct2.nes.ram.nl", "w+")
if err ~= nil then PrintError(err) end
io.output(nl_file)

local tbl = {}
while true do
    local line = inc_file:read("*line")
    if line == nil then
        io.close(inc_file)
        break
    end
    
    --удалить все пробелы
    line = string.gsub(line, " ", "")
    local find_start, find_end = string.find(line, "=%$")
    local f_start, _ = string.find(line, ";")
    --найти символ коммента
    if f_start ~= nil and find_start ~= nil then
        if f_start < find_start then
            --если коммент существует и находится до "=$" тогда притвориться что адреса не существует
            find_start = nil
        end
    end
    
    local address = ""
    if find_start ~= nil then
        local i = find_start + 2
        while true do
            --тест всех символов после "=$", проверка на то что это hex числа, получаем строку из чисел
            local byte = ""
            byte = string.sub(line, i, i)
            test = tonumber(byte, 16)
            if test == nil then break end
            address = address..byte
            i = i + 1
        end
    end
    
    --проверка что итоговое чисто стопудово hex число, в таком случае создать коммент
    local result = tonumber(address, 16)
    if result ~= nil then
        tbl[result + 1] = string.sub(line, 0, find_start - 1)
    end
end

--запись комментов, если это не примитивный ram_ коммент, а также если это не con_ коммент
for i = 0x0, 0x7FFF, 1 do
    if tbl[i + 1] ~= nil then
        if tbl[i + 1] ~= "ram_"..string.upper(string.format("%04x", i)) then
            if string.find(tbl[i + 1], "con_") == nil then
                local str = "$"..string.upper(string.format("%04x", i)).."#"..tbl[i + 1].."#\n"
                str = string.gsub(str, "ram_", "")
                io.write(str)
            end
        end
    end
end

io.flush(nl_file)
io.close(nl_file)



print(string.format("Script finished in "..string.format("%.3f", os.clock() - time).." seconds"))
--io.read()             --uncomment this line in order to pause the console after script is complete