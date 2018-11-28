import pymysql

class Uzytkownicy():

    def select(self):
        self.c.execute("SELECT * FROM logowanie")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s}".format("ID", 5, "Imie", 10, "Nazwisko", 10, "Login", 10,"Hasło", 10, "Uprawnienia", 5))
        for row in dane:
            print(" {:<{}d} {:<{}s} {:<{}s} {:<{}s} {:<{}s} {:<{}s}".format(row[0], 5, row[1], 10, row[2], 10, row[3], 10, row[4], 10, row[5], 5))

    def insert(self):
        imie = input("Podaj imie: ")
        nazwisko = input("Podaj nazwisko: ")
        login = input("Podaj login: ")
        haslo = input("Podaj hasło: ")
        uprawnienia = int(input("Podaj uprawnienia: "))
        self.c.execute("INSERT INTO logowanie(imie, nazwisko, login, haslo, uprawnienia) VALUES (%s,%s,%s,%s,%s)", (imie, nazwisko, login, haslo, uprawnienia, ))

        dec = input("Czy na pewno chcesz dodać dane:? T/N" ).upper()
        if (dec == "T"):
            self.conn.commit()  #zatwierdzenie dodania
        else:
            self.conn.rollback()  #wycofanie danych

    def update(self):
        uprawnienia = input("Podaj nazwisko pracownika do zmiany uprawnien : ")
        wartosc = (input("Podaj nową wartosc: "))
        if (wartosc == "2" and uprawnienia == "Administrator"):
            print("Nie możesz usunąć admina !!!")
        else:
            self.c.execute("UPDATE logowanie SET uprawnienia=%s WHERE nazwisko=%s",(wartosc, uprawnienia))

            dec = input("Czy na pewno chcesz zmienić dane:? T/N").upper()
            if (dec == "T"):
                self.conn.commit()  # zatwierdzenie dodania
            else:
                self.conn.rollback()  # wycofanie danych

    def logowanie(self):
        login = input("Podaj login: ")
        haslo = input("Podaj haslo: ")

        self.c.execute("SELECT * FROM logowanie WHERE login=%s AND haslo=%s", (login, haslo))
        dane = self.c.fetchall()
        if (len(dane) == 0):
            print("bład logowanie, koniec programu")
        else:
            self.menu(int(dane[0][5]))

    def delete(self):
        id = input("Podaj ID użytkownika do usunięcia: ")
        if(id == "1"):
            print("Nie możesz usunąć admina !!!")
        else:
            self.c.execute("DELETE FROM logowanie WHERE id=%s", id)
            dec = input("Czy na pewno chcesz usunąć dane:? T/N").upper()
            if (dec == "T"):
                self.conn.commit()  # zatwierdzenie dodania
            else:
                self.conn.rollback()  # wycofanie danych
