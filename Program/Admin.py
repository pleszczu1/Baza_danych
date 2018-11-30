import pymysql
from Maszyny import *
from Formy import *
from Uzytkownicy import *
from Butelki import *
from Tworzywa import *
from Opakowanie import *
from Gwint import *
from Produkcja import *

class Admin(Uzytkownicy,Maszyny,Formy,Butelki,Tworzywa,Opakowanie,Gwint,Produkcja):

    def __init__(self):
        self.conn = pymysql.connect('localhost', '******', '******', 'butelczarki', charset='utf8')
        self.c = self.conn.cursor()
        print("------------Połączenie ustanowione----------------")

    def menu(self, uprawnienia):
        while (True):
            if(uprawnienia == 1):
                print("Witaj w moim programie, życzę miłej pracy.")
                print("MENU: ")
                dec = input("U - menu użytkowników, \nM - menu maszyn, form, butelek, \nP - produkcja \nW - wyjście: \n").upper()
                if (dec == "U"):
                    while (True):
                        print("Menu użytkowników systemu: ")
                        dec = input("D - dodaj użytkownika, \nL - lista użytkowników, \nZ - zmien uprawnienia, \nU - usun użytkownika, \nW - wyjście do poprzedniego menu: \n").upper()
                        if (dec == "D"):
                            self.insert()
                        elif (dec == "L"):
                            self.select()
                        elif (dec == "Z"):
                            self.update()
                        elif (dec == "U"):
                            self.delete()
                        elif (dec == "W"):
                            break
                elif (dec == "M"):
                    while (True):
                        print("Menu maszyn, form butelek ...:")
                        dec = input("M - maszyny, \nF - formy, \nB - butelki, \nG - gwinty, \nT - tworzywo, \nO - opakowanie, \nW - wyjście do poprzedniego menu: \n").upper()
                        if (dec == "M"):
                            print("Witaj w menu obsługi maszyn, co  chcesz zrobić: ")
                            while (True):
                                dec = input("L - lista maszyn, \nD - dodaj maszynę, \nM - modyfikuj maszynę, \nU - usuń maszynę, \nW - wyjście do poprzedniego menu: \n").upper()
                                if(dec == "L"):
                                    self.listaMaszyn()
                                elif(dec == "D"):
                                    self.dodajMaszyne()
                                elif(dec == "M"):
                                    self.updateMaszyny()
                                elif(dec == "U"):
                                    self.deleteMaszyne()
                                elif(dec == "W"):
                                    break
                        elif (dec == "F"):
                            print("Menu form butelkowych: ")
                            while (True):
                                dec = input("L - lista form, \nD - dodaj formę, \nM - modyfikuj ilość form dla danej butelki, \nW - wyjście do poprzedniego menu: \n").upper()
                                if (dec == "L"):
                                    self.listaForm()
                                elif (dec == "D"):
                                    self.dodajForme()
                                elif (dec == "M"):
                                    self.updateFormy()
                                elif (dec == "W"):
                                    break
                        elif (dec == "B"):
                            print("Menu butelek: ")
                            while (True):
                                dec = input("L - lista butelek, \nD - dodaj butelkę, \nM - modyfikuj butelkę, \nW - wyjście do poprzedniego menu: \n").upper()
                                if (dec == "L"):
                                    self.listaButelek()
                                elif (dec == "D"):
                                    self.dodajButelke()
                                elif (dec == "M"):
                                    self.updateButelke()
                                elif (dec == "W"):
                                    break
                        elif (dec == "G"):
                            print("Menu gwintów: ")
                            while(True):
                                dec = input( "L - lista gwintów, \nD - dodaj nowe gwint, \nW - wyjście do poprzedniego menu: \n").upper()
                                if (dec == "L"):
                                    self.listaGwintow()
                                elif (dec == "D"):
                                    self.dodajGwint()
                                elif (dec == "W"):
                                    break;
                        elif (dec == "T"):
                            print("Menu tworzyw: ")
                            while(True):
                                dec = input("L - lista tworzyw, \nD - dodaj nowe tworzywo, \nW - wyjście do poprzedniego menu: \n").upper()
                                if (dec == "L"):
                                    self.listaTworzyw()
                                elif (dec == "D"):
                                    self.dodajTworzywo()
                                elif (dec == "W"):
                                    break;
                        elif (dec == "O"):
                            print("menu opkowania: ")
                            while(True):
                                dec = input("L - lista opakowań, \nD - dodaj nowe opakowanie, \nW - wyjście do poprzedniego menu: \n").upper()
                                if (dec == "L"):
                                    self.listaOpakowan()
                                elif (dec == "D"):
                                    self.dodajOpakowanie()
                                elif (dec == "W"):
                                    break;
                        elif (dec == "W"):
                            break;
                elif (dec == "P"):
                    while(True):
                        print("Obsługa produkcji: ")
                        dec = input("P - produkcja, \nD - lista produkcji \nN - wydajność, \nL - lista wydajności, \nW - wyjście do poprzedniego menu: \n").upper()
                        if (dec == "P"):
                            self.produkcja()
                        elif (dec == "D"):
                            self.listaProdukcji()
                        elif (dec == "L"):
                            self.listaWydajnosci()
                        elif (dec == "N"):
                            self.wydajnosc()
                        elif (dec == "W"):
                            break;
            else:
                print("Menu użytkownika: ")
                while (True):
                    dec = input("P - produkcja, \nD - lista produkcji, \nL - lista wydajności, \nO - lista opakowań, \nT - lista tworzyw, \nB - lista butelek, \nM - lista maszyn,"
                            "\nW - koniec").upper()
                    if (dec == "P"):
                        self.produkcja()
                    elif (dec == "D"):
                        self.listaProdukcji()
                    elif (dec == "L"):
                        self.listaWydajnosci()
                    elif (dec == "O"):
                        self.listaOpakowan()
                    elif (dec == "T"):
                        self.listaTworzyw()
                    elif (dec == "B"):
                        self.listaButelek()
                    elif (dec == "M"):
                        self.listaMaszyn()
                    elif (dec == "W"):
                        break
            break
obj = Admin()
obj.logowanie()
