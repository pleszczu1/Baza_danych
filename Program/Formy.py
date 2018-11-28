import pymysql

class Formy():

    def listaForm(self):
        self.c.execute("SELECT idforma_butelki, numer_butelki, ilosc_form, f.pojemnosc, butelki_idbutelki, nazwa_tworzywa, rodzaj_gwintu FROM forma_butelki f INNER JOIN butelki b ON f.butelki_idbutelki = b.idbutelki INNER JOIN tworzywo t ON b.tworzywo_idtworzywo = t.idtworzywo INNER JOIN gwint g ON b.gwint_idgwint = g.idgwint")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s}".format("ID", 5, "Numer butelki", 15, "Ilość form", 15, "Pojemność", 15, "ID butelki", 15, "Tworzywo", 15, "Rodzaj gwintu", 15))
        for row in dane:
            print(" {:<{}d} {:<{}d} {:<{}d} {:<{}s} {:<{}d} {:<{}s} {:<{}s}".format(row[0], 5, row[1], 20, row[2], 15, row[3], 15,row[4], 15, row[5], 15, row[6], 15))



    def dodajForme(self):
        numerButelki = input("Podaj numer katalogowy butelki: ")
        iloscForm = int(input("Podaj ilosc form: "))
        pojemnoscButelki = int(input("Podaj pojemnosc butelki: "))
        idButelki = int(input("Podaj id butelki: "))
        idTworzywa = int(input("Podaj id tworzywa: "))
        idGwintu = int(input("Podaj id gwintu: "))
        self.c.execute("INSERT INTO forma_butelki(numer_butelki, ilosc_form, pojemnosc, butelki_idbutelki, butelki_tworzywo_idtworzywo, butelki_gwint_idgwint"
                       ")VALUES (%s,%s,%s,%s,%s,%s)",(numerButelki, iloscForm, pojemnoscButelki, idButelki, idTworzywa, idGwintu))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

    def updateFormy(self):
        numerButelki = input("Podaj ID formy do modyfikacji : ")
        iloscForm = int(input("Podaj nową ilosc form: "))
        self.c.execute("UPDATE forma_butelki SET ilosc_form=%s WHERE idforma_butelki=%s",(numerButelki, iloscForm))

        dec = input("Czy na pewno chcesz zmienić dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

