import pymysql

class Maszyny():

    def listaMaszyn(self):
        self.c.execute("SELECT * FROM butelczarki")
        dane = self.c.fetchall()
        print(" {:^{}s} {:{}s} {:{}s} {:{}s} ".format("ID", 5, "Numer butelczarki", 20, "Liczba głowic", 15, "Liczba wózków", 10))
        for row in dane:
            print(" {:<{}d} {:<{}s} {:<{}d} {:<{}d} ".format(row[0], 5, row[1], 20, row[2], 15, row[3], 10))

    def dodajMaszyne(self):
        butelczarka = input("Podaj numer butelczarki: ")
        glowice = int(input("Podaj liczbe głowic: "))
        wozki = int(input("Podaj liczbę wózków: "))
        self.c.execute("INSERT INTO butelczarki(numer_butelczarki, liczba_glowic, liczba_wozkow)VALUES (%s,%s,%s)",(butelczarka, glowice, wozki))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

    def updateMaszyny(self):
        maszyna = input("Podaj numer maszyny do modyfikacji : ")
        wartosc = int(input("Podaj nową ilość głowic: "))
        self.c.execute("UPDATE butelczarki SET liczba_glowic=%s WHERE numer_butelczarki=%s",(wartosc, maszyna))

        dec = input("Czy na pewno chcesz zmienić dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

    def deleteMaszyne(self):
        id = input("Podaj numer maszyny do usunięcia: ")
        self.c.execute("DELETE FROM butelczarki WHERE numer_butelczarki=%s", id)

        dec = input("Czy na pewno chcesz usunąć dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

