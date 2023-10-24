#!/usr/bin/env python2
# -*- coding: utf-8 -*-
# Если у вас не работает вывод на русском, это не моя проблема, оно не гуглится
import webbrowser

def show_menu(text_string, name_of, dict_variants, if_the_end_is_good): #главная функция менюшки. Она рекурсивная
    print(*text_string)
    print("1.", dict_variants[1])
    print("2.", dict_variants[2])
    print("3.", dict_variants[3])
    print("4. Выход")
    name_of_variant = name_of + "_variant"
    dict_variants = opener(name_of) # ваш словарь
    name_of = renamer_name_of(name_of, if_the_end_is_good)
    text_string = renamer_text_string(text_string, name_of)
    choice = int(input("Выберите опцию: "))
    if choice == 1:
        if_the_end_is_good += first_variant(name_of_variant)
        show_menu(text_string, name_of, dict_variants, if_the_end_is_good)
    elif choice == 2:
        if_the_end_is_good += second_variant(name_of_variant)
        show_menu(text_string, name_of, dict_variants, if_the_end_is_good)
    elif choice == 3:
        if_the_end_is_good += third_variant(name_of_variant)
        show_menu(text_string, name_of, dict_variants, if_the_end_is_good)
    elif choice == 4:
        print("Выход")
    else:
        print("Некорректный ввод. Начинай все заново, мне лень перезапускать тебе тот же момент")

def opener(name_of): #открывашка вариантов выбора
    name_of_variants = name_of + "_variants.txt"
    with open (name_of_variants) as f:
        variant_one = f.readline()
        variant_two = f.readline()
        variant_three = f.readline()
        dict_variants = {1: variant_one, 2: variant_two, 3:variant_three}
    return dict_variants

def renamer_name_of(name_of, if_the_end_is_good): #переименователь названия всего
    if (name_of == "first_bedroom"):
        name_of = "second_kitchen"
    elif (name_of == "second_kitchen"):
        name_of = "third_garden"
    elif (name_of == "third_garden"):
        name_of = "fourth_library"
    elif (name_of == "fourth_library"):
         print(*open("fourth_library_text.txt"))
         if (if_the_end_is_good > 0):
              text_string = open('fourth_library_variant_good.txt','r')
              print(*text_string)
              print("Хорошая концовка")
              for i in range(10):
                  print("УРА!")
         else:
              text_string = open('fourth_library_variant_bad.txt','r')
              print(*text_string)
              print("Плохая концовка")
         dict_variants = {1: "Начать игру", 2: "Спасибо, разраб", 3: "Выход"}
         text_string = open('first_bedroom_text.txt', 'r')
         name_of = "first_bedroom"
         if_the_end_is_good = 0
         show_menu(text_string, name_of, dict_variants, if_the_end_is_good)
    return name_of

def renamer_text_string(text_string, name_of): #переименователь названия файла основного сюжетного текста
    name_of_text = name_of + "_text.txt"
    text_string = open(name_of_text,'r')
    return text_string

def first_variant(name_of_variant): #функция для первого варианта
    name_of_variant += "_one.txt"
    text_string_variant = open(name_of_variant, 'r')
    string_one = text_string_variant.readline()
    print(*string_one)
    if (string_one == "End"):
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        print("Незаконченная концовка")
        dict_variants = {1: "Начать игру", 2: "Спасибо, разраб", 3: "Выход"} 
        text_string = open('first_bedroom_text.txt', 'r')
        name_of = "first_bedroom"
        if_the_end_is_good = 0
        show_menu(text_string, name_of, dict_variants, if_the_end_is_good)
    elif (string_one == "Another_variant"):
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        name_of_variant = name_of_variant - "_one.txt" + "_one_variant"
        name_of = name_of_variant - "_variant"
        dict_variants = opener(name_of)
        print("1.", dict_variants[1])
        print("2.", dict_variants[2])
        print("3.", dict_variants[3])
        print("4. Выход")
        choice = int(input("Выберите опцию: "))
        if (choice == 1):
             first_variant(name_of_variant)
        elif (choice == 2):
             second_variant(name_of_variant)
        elif (choice == 3):
             third_variant(name_of_variant)
        elif (choice == 4):
             print("Выход")
        else:
             print("Некорректный ввод. Начинай все заново, мне лень перезапускать тебе тот же момент")
    elif (string_one == "flag"):
        if_the_end_is_good = 1
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        return if_the_end_is_good
    else:
        if_the_end_is_good = 0
        print(*text_string_variant)
        return if_the_end_is_good

def second_variant(name_of_variant): #функция если пользователь выбрал вариант два
    name_of_variant += "_two.txt"
    text_string_variant = open(name_of_variant, 'r')
    string_one = text_string_variant.readline()
    print(*string_one)
    if (string_one == "End"): #если в первой строке файла написано это, то игра завершается (оно не работает)
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        print("Незаконченная концовка")
        dict_variants = {1: "Начать игру", 2: "Спасибо, разраб", 3: "Выход"} 
        text_string = open('first_bedroom_text.txt', 'r')
        name_of = "first_bedroom"
        show_menu(text_string, name_of, dict_variants)
    elif (string_one == "Another_variant"): #если в первой строке написано это, то по ходу сюжета есть еще один выбор
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        name_of_variant = name_of_variant - "_two.txt" + "_two_variant"
        name_of = name_of_variant - "_variant"
        dict_variants = opener(name_of)
        print("1.", dict_variants[1])
        print("2.", dict_variants[2])
        print("3.", dict_variants[3])
        print("4. Выход")
        choice = int(input("Выберите опцию: "))
        if (choice == 1):
             first_variant(name_of_variant)
        elif (choice == 2):
             second_variant(name_of_variant)
        elif (choice == 3):
             third_variant(name_of_variant)
        elif (choice == 4):
             print("Выход")
        else:
             print("Некорректный ввод. Начинай все заново, мне лень перезапускать тебе тот же момент")
    elif (string_one == "flag"): #скрытая концовка
        if_the_end_is_good = 1
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        return if_the_end_is_good
    else: #переход к след локации
        if_the_end_is_good = 0
        print(*text_string_variant)
        return if_the_end_is_good

def third_variant(name_of_variant): #функция если пользователь выбрал вариант 3
    name_of_variant += "_three.txt"
    text_string_variant = open(name_of_variant, 'r')
    string_one = text_string_variant.readline()
    print(*string_one)
    if (string_one == "End"):
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        print("Незаконченная концовка")
        dict_variants = {1: "Начать игру", 2: "Спасибо, разраб", 3: "Выход"} 
        text_string = open('first_bedroom_text.txt', 'r')
        name_of = "first_bedroom"
        show_menu(text_string, name_of, dict_variants)
    elif (string_one == "Another_variant"):
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        name_of_variant = name_of_variant - "_three.txt" + "_three_variant"
        name_of = name_of_variant - "_variant"
        dict_variants = opener(name_of)
        print("1.", dict_variants[1])
        print("2.", dict_variants[2])
        print("3.", dict_variants[3])
        print("4. Выход")
        choice = int(input("Выберите опцию: "))
        if (choice == 1):
             first_variant(name_of_variant)
        elif (choice == 2):
             second_variant(name_of_variant)
        elif (choice == 3):
             third_variant(name_of_variant)
        elif (choice == 4):
             print("Выход")
        else:
             print("Некорректный ввод. Начинай все заново, мне лень перезапускать тебе тот же момент")
    elif (string_one == "flag"):
        if_the_end_is_good = 1
        lines = text_string_variant.readlines()[1:]
        print(*lines)
        return if_the_end_is_good
    else:
        if_the_end_is_good = 0
        print(*text_string_variant)
        return if_the_end_is_good

choice = 0 #переменная для хранения ответа пользователя
dict_variants = {1: "Начать игру", 2: "Спасибо, разраб", 3: "Выход"} #словарь для хранения меню
text_string = open('first_bedroom_text.txt', 'r') #словарь с нынешним текстом
name_of = "first_bedroom" # название нынешнего текста
name_of_variant = "second_kitchen_variant" # название нынешнего варианта (без номера)
if_end = 0 # флаг проигрыша
if_the_end_is_good = 0 # флаг хорошей концовки
print("Здравствуйте. Эта игра поломана в нескольких местах, и я знаю почти о всех, но как исправить - без понятия. Во-первых, питон не создан для такого рода проектов. Во-торых, тут нет глобальных переменных. В-третьих у меня не отображается русский язык, поэтому я не в курсе, что оно выводит. Удачной игры")
webbrowser.open('https://www.youtube.com/watch?v=LT6PkdT2Dsg', new=0)

while (choice != 1): #while пока пользователь не начнет игру
    print("1.", dict_variants[1])
    print("2.", dict_variants[2])
    print("3.", dict_variants[3])
    choice = int(input("Выберите опцию: ")) #ввод ответа + подсказка. Да, оно сломается если ввести не число
    if (choice == 1):
        print(*text_string) #вывод первой сцены
        name_of_variant = name_of + "_variant"
        name_of = renamer_name_of(name_of, if_the_end_is_good)
        text_string = renamer_text_string(text_string, name_of) #переименовка всего. Через файлы так написано
        dict_variants = opener(name_of)
        show_menu(text_string, name_of, dict_variants, if_the_end_is_good)
    elif (choice == 2):
        print("Спасибо, что нажали эту кнопку. Если честно, я делаю эту игру вторую ночь подряд и смертельно устала")
        print("Надеюсь вы насладитесь игрой и напишите мне отзыв")
    elif (choice == 3):
        print("Выход")
    else:
        print("Некорректный ввод")
