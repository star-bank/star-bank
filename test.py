import sqlite3
from sqlite3 import Error


def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

    return conn

def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")


def createTable(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Create table")

    print("++++++++++++++++++++++++++++++++++")


def dropTable(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Drop tables")

    print("++++++++++++++++++++++++++++++++++")


def populateTable(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Populate table")

    print("++++++++++++++++++++++++++++++++++")


def PrintingConst(_conn):
    print("++++++++++++++++++++++++++++++++++")
    print("Q1")

    cur = _conn.cursor()
    cur.execute("SELECT * FROM Constellations")

    rows = cur.fetchall()

    for row in rows:
        print(row)

    print("++++++++++++++++++++++++++++++++++")


# def Q2(_conn):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Q2")

#     print("++++++++++++++++++++++++++++++++++")


# def Q3(_conn):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Q3")

#     print("++++++++++++++++++++++++++++++++++")


# def Q4(_conn):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Q4")

#     print("++++++++++++++++++++++++++++++++++")


# def Q5(_conn):
#     print("++++++++++++++++++++++++++++++++++")
#     print("Q5")

#     print("++++++++++++++++++++++++++++++++++")


def main():
    database = r"data/star-bank1.db"

    # create a database connection
    conn = openConnection(database)
    with conn:
        dropTable(conn)
        createTable(conn)
        populateTable(conn)

        PrintingConst(conn)
        # Q2(conn)
        # Q3(conn)
        # Q4(conn)
        # Q5(conn)

    closeConnection(conn, database)


if __name__ == '__main__':
    main()
