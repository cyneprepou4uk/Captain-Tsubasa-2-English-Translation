--deleting garbage and changing all characters from russian to english before compilation



--список файлов для подготовки перед конвертацией
files = {
    "bank_01.asm",
    "bank_02.asm",
    "bank_03.asm",
    "bank_04.asm",
    "bank_05.asm",
    "bank_06.asm",
    "bank_07.asm",
    "bank_08.asm",
    "bank_09.asm",
    "bank_10.asm",
    "bank_11.asm",
    "bank_12.asm",
    "bank_13.asm",
    "bank_14.asm",
    "bank_15.asm",
    "bank_16.asm",
    "bank_17.asm",
    "bank_18.asm",
    "bank_19.asm",
    "bank_20.asm",
    "bank_21.asm",
    "bank_22.asm",
    "bank_23.asm",
    "bank_24.asm",
    "bank_25.asm",
    "bank_26.asm",
    "bank_27.asm",
    "bank_FF.asm",
    "bank_ram.inc",
}

--конвертация русских символов в английские
translation = {
    "А",     "A",            "а",    "a",
    "Б",     "B",            "б",    "b",
    "В",     "V",            "в",    "v",
    "Г",     "G",            "г",    "g",
    "Д",     "D",            "д",    "d",
    "Е",     "E",            "е",    "e",
    "Ё",     "E",            "ё",    "e",
    "Ж",     "J",            "ж",    "j",
    "З",     "Z",            "з",    "z",
    "И",     "I",            "и",    "i",
    "Й",     "I",            "й",    "i",
    "К",     "K",            "к",    "k",
    "Л",     "L",            "л",    "l",
    "М",     "M",            "м",    "m",
    "Н",     "N",            "н",    "n",
    "О",     "O",            "о",    "o",
    "П",     "P",            "п",    "p",
    "Р",     "R",            "р",    "r",
    "С",     "S",            "с",    "s",
    "Т",     "T",            "т",    "t",
    "У",     "Y",            "у",    "y",
    "Ф",     "F",            "ф",    "f",
    "Х",     "H",            "х",    "h",
    "Ц",     "C",            "ц",    "c",
    "Ч",     "CH",           "ч",    "ch",
    "Ш",     "SH",           "ш",    "sh",
    "Щ",     "SH",           "щ",    "sh",
    "Ъ",     "b",            "ъ",    "b",
    "Ы",     "bI",           "ы",    "bI",
    "Ь",     "b",            "ь",    "b",
    "Э",     "E",            "э",    "e",
    "Ю",     "U",            "ю",    "u",
    "Я",     "Ja",           "я",    "ja",
    
    ".text", ".byte",
}

--регулярное выражение для удаления флагов, адресов и байтов слева от инструкций и байтов
regex = ".%s.%s.%s.%s.%s0x......%s..:....:..........."

function file_error(err)
    print("\n"..err.."\nPress Enter to exit")
    io.read()
end



--START
--начало скрипта, создание копии каждого файла из таблицы с предварительной модификацией текста
for i, f in ipairs(files) do
    print("Preparing a copy of "..f.." file...")
    
    --открыть файл и прочитать весь текст
    local file, err = io.open(f, "r")
    if err ~= nil then file_error(err) end
    local text = file:read("*all")
    file:close()
    
    --удалить хлам
    text = string.gsub(text, regex, "")
    for i, _ in ipairs(translation) do
        if i % 2 ~= 0 then
            text = string.gsub(text, translation[i], translation[i + 1])
        end
    end
    
    --создать копию файла, очистить, закрыть, повторно открыть, вставить текст, закрыть
    local file_copy, err = io.open("copy_"..f, "w+")
    if err ~= nil then file_error(err) end
    file_copy:close()
    file_copy = io.open("copy_"..f, "a")
    io.output(file_copy)
    io.write(text)
    file_copy:flush()
    file_copy:close()
end