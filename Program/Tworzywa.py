import pymysql

class Tworzywa():

    def listaTworzyw(self):
        self.c.execute("SELECT * FROM tworzywo")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} ".format("ID", 5, "Rodzaj tworzywa", 20, "Nazwa tworzywa", 15))
        for row in dane:
            print( " {:^{}d} {:^{}s} {:^{}s} ".format(row[0], 5, row[1], 20, row[2], 15))



    def dodajTworzywo(self):
        rodzajTworzywa = input("Podaj rodzaj tworzywa: ")
        nazwaTworzywa = input("Podaj nazwę tworzywa: ")
        self.c.execute("INSERT INTO tworzywo(rodzaj_tworzywa, nazwa_tworzywa)VALUES (%s,%s)",(rodzajTworzywa, nazwaTworzywa))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych
