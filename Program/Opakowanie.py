import pymysql

class Opakowanie():

    def listaOpakowan(self):
        self.c.execute("SELECT * FROM opakowanie")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} ".format("ID", 5, "Rodzaj opakowania", 20))
        for row in dane:
            print( " {:^{}d} {:^{}s} ".format(row[0], 5, row[1], 20))

    def dodajOpakowanie(self):
        rodzajOpakowania = input("Podaj rodzaj opakowania: ")
        self.c.execute("INSERT INTO opakowanie(rodzaj_opakowania)VALUES (%s)",(rodzajOpakowania))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych
