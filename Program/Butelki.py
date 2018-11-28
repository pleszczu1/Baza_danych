import pymysql

class Butelki():

    def listaButelek(self):
        self.c.execute("SELECT idbutelki, numer_katalogowy, b.pojemnosc, waga, ilosc_w_opakowaniu, nazwa_tworzywa, rodzaj_gwintu, rodzaj_opakowania FROM butelki b INNER JOIN gwint g ON gwint_idgwint = g.idgwint INNER JOIN tworzywo t ON b.tworzywo_idtworzywo = t.idtworzywo INNER JOIN ilosc_w_opakowaniu o ON b.ilosc_w_opakowaniu = o.ilosc INNER JOIN opakowanie p ON o.opakowanie_idopakowanie = p.idopakowanie")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s}".format("ID", 5, "Numer butelki", 15, "Pojemność", 15, "Waga", 15, "Ilość w opakowaniu", 15, "Tworzywo", 15, "Rodzaj gwintu", 15, "Rodzaj opakowania", 15))
        for row in dane:
            print(" {:<{}d} {:<{}d} {:<{}d} {:<{}s} {:<{}s} {:<{}s} {:<{}s} {:<{}s}".format(row[0], 5, row[1], 20, row[2], 15, row[3], 15,row[4], 15, row[5], 15, row[6], 15, row[7], 15))

    def dodajButelke(self):
        numerButelki = input("Podaj numer katalogowy butelki: ")
        pojemnoscButelki = int(input("Podaj pojemnosc butelki: "))
        wagaButelki = input("Podaj gramatur: butelki: ")
        iloscOpakowanie = input("Podaj ilość w opakowaniu: ")
        idTworzywa = int(input("Podaj id tworzywa: "))
        idGwintu = int(input("Podaj id gwintu: "))
        self.c.execute("INSERT INTO butelki(tworzywo_idtworzywo, gwint_idgwint, waga, numer_katalogowy, pojemnosc, ilosc_w_opakowaniu)VALUES (%s,%s,%s,%s,%s,%s)",(idTworzywa, idGwintu, wagaButelki, numerButelki, pojemnoscButelki, iloscOpakowanie))


        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

    def updateButelke(self):
        numerButelki = input("Podaj ID butelki: ")
        iloscOpakowanie = input("Podaj nową ilość w opakowaniu: ")
        self.c.execute("UPDATE butelki SET ilosc_w_opakowaniu=%s WHERE idbutelki=%s ",(iloscOpakowanie, numerButelki ))


        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

