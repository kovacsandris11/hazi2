{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Maszkolt (\r\n",
                "    LOGIN NVARCHAR(50) PRIMARY KEY,\r\n",
                "    EMAIL NVARCHAR(100) MASKED WITH (FUNCTION = 'email()'),\r\n",
                "    NEV NVARCHAR(100) NULL,\r\n",
                "    SZULEV INT MASKED WITH (FUNCTION = 'random(1950, 2005)'),\r\n",
                "    NEM CHAR(1) NULL,\r\n",
                "    CIM NVARCHAR(255) MASKED WITH (FUNCTION = 'partial(5, \"*****\", 5)')\r\n",
                ")\r\n",
                "\r\n",
                "CREATE USER Felhasznalo WITHOUT Login;\r\n",
                "GRANT SELECT ON Ugyfel TO Felhasznalo\r\n",
                "\r\n",
                "EXECUTE AS User= 'Felhasznalo';\r\n",
                "SELECT * FROM Ugyfel\r\n",
                "REVERT"
            ],
            "metadata": {
                "azdata_cell_guid": "021f1147-a995-4b58-b3c1-1eac25f9d1a3",
                "language": ""
            },
            "outputs": [],
            "execution_count": 1
        }
    ]
}