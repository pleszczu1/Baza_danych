import pymysql

class Gwint():

    def listaGwintow(self):
        self.c.execute("SELECT * FROM gwint")
        dane = self.c.fetchall()
        print(" {:^{}s} {:^{}s} {:^{}s} ".format("ID", 5, "Rodzaj gwintu", 20, "Średnica gwintu", 15))
        for row in dane:
            print( " {:^{}d} {:^{}s} {:^{}s} ".format(row[0], 5, row[1], 20, row[2], 15))

    def dodajGwint(self):
        rodzajGwintu = input("Podaj rodzaj gwintu: ")
        srednicaGwintu = input("Podaj średnicę gwintu: ")
        self.c.execute("INSERT INTO gwint(rodzaj_gwintu, srednica)VALUES (%s,%s)",(rodzajGwintu, srednicaGwintu))

        dec = input("Czy na pewno chcesz dodać dane:? T/N").upper()
        if (dec == "T"):
            self.conn.commit()  # zatwierdzenie dodania
        else:
            self.conn.rollback()  # wycofanie danych
