import pymysql

class Produkcja():

    def listaWydajnosci(self):
        self.c.execute("SELECT w.idwydajnosc, b.numer_butelczarki, f.numer_butelki, o.rodzaj_opakowania, w.wydajnosc FROM wydajnosc w INNER JOIN butelczarki b ON w.butelaczarki_idbutelaczarki = b.idbutelaczarki INNER JOIN forma_butelki f ON w.forma_butelki_idforma_butelki = f.idforma_butelki INNER JOIN opakowanie o ON w.opakowanie_idopakowanie = o.idopakowanie")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} ".format("ID", 10, "Numer butelczarki", 20, "Numer butelki", 15, "Opakowanie", 15, "Wydajność", 15))
        for row in dane:
            print( " {:^{}d} {:^{}s} {:^{}d} {:^{}s} {:^{}f} ".format(row[0], 10, row[1], 20, row[2], 15, row[3], 15, row[4], 15))

    def wydajnosc(self):
        butelczarka = input("Podaj ID butelczarki: ")
        forma = input("Podaj id butelki: ")
        opakowanie = input("Podaj ID opakowania: ")
        wydajnosc = input("Podaj ilość wyprodukowanych opakowań: ")
        self.c.execute("INSERT INTO wydajnosc(butelaczarki_idbutelaczarki, forma_butelki_idforma_butelki, opakowanie_idopakowanie,wydajnosc)VALUES (%s,%s,%s,%s)",(butelczarka, forma, opakowanie, wydajnosc))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

    def produkcja(self):
        wydajnoscTeor = input("Podaj wydajność teoretyczną: ")
        wydajnoscRzecz = input("Podaj wydajnosc rzeczywistą: ")
        dzienMies = input("Podaj dzien miesiąca: ")
        brygada = input("Podaj id brygady: ")
        zestaw = input("Podaj ID zestawu maszyna - forma: ")
        czasPracy = input("Podaj czas pracy: ")
        self.c.execute("INSERT INTO produkcja(wydajnosc_teoretyczna, wydajnosc_rzeczywista, data, brygada_idbrygada, butelaczarki_has_formabutelczarek_id, czas_pracy)VALUES (%s,%s,%s,%s,%s,%s)",(wydajnoscTeor, wydajnoscRzecz, dzienMies, brygada, zestaw, czasPracy))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych

    def listaProdukcji(self):
        self.c.execute("SELECT p.wydajnosc_teoretyczna, p.wydajnosc_rzeczywista, p.data as numer_dnia , p.czas_pracy,b.lider_brygady, u.numer_butelczarki, f.numer_katalogowy FROM produkcja p INNER JOIN brygada b ON p.brygada_idbrygada = b.idbrygada INNER JOIN butelaczarki_has_formabultelczarek INNER JOIN butelczarki u ON butelaczarki_idbutelaczarki = idbutelaczarki INNER JOIN butelki f ON formabultelczarek_idformabultelczarek = idbutelki INNER JOIN opakowanie o ON opakowanie_idopakowanie = idopakowanie")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s} {:^{}s}".format("Wydajność teoretyczna", 20, "Wydajność rzeczywista", 20, "Numer dnia miesiąca", 5,"Czas pracy", 5,
                                                                 "Nazwisko lidera", 15, "Numer maszyny", 5, "Numer butelki", 5))
        for row in dane:
            print(" {:^{}d} {:^{}d} {:^{}d} {:^{}f} {:^{}s} {:^{}s} {:^{}d}".format(row[0], 20, row[1], 20, row[2], 20, row[3], 15, row[4],10, row[5], 15, row[6], 5))
