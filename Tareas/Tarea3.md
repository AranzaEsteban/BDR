# Tarea 3


## PARTE 1
### <p align="center"> ESQUEMA DE MODELO RELACIONAL </p>


* account(*Account_ID*, *District_ID*, frecuency, date)
* client(*Account_ID*, *Client_ID*, *District_ID*, gender, birth_date)
* trans(*Trans_ID*, date, typpe, operation, amount, balance, k_symbol, bank, account)
* disp(*Client_ID*, *Disp_ID*, account_ID, type)
* card(*Disp_ID*, *Card_ID*, type, issued)
* loan(*Loan_ID*, *Account_ID*, amount, k_symbol)
* order(*Order_ID*, *Account_ID*, bank_to, account_to, amount, k_symbol)
* district(*District_ID*, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16)

## PARTE 2
### <p align="center"> MODELO RELACIÓN </p>

```mermaid
---
title: Financial credit
---
flowchart BT
erDiagram
    transactions_1k }|--o| account: belongs
    transactions_1k{
        int Trans_ID
        date date
        int Account_ID
        varchar(3) type
        varchar(3) operation
        int amount
        int balance
        varchar(6) k_symbol
        varchar(20) bank

    }account{
        int Account_ID
        int District_ID
        int frecuency
        date date
    }
    account||--o{ district : location
    district{
        int District_ID
        int A2
        int A3
        int A4
        int A5
        int A6
        int A7
        int A8
        int A9
        int A10
        int A11
        int A12
        int A13
        int A14
        int A15
        int A16
    }account ||--o{ disp : have
    disp {
        int Disp_ID
        int Client_ID
        int Account_ID
        varchar(10) type
    }
    client ||--o{ disp : location
    disp {
        int CustomerID
        date date
        decimal Consumption
    }
    client {
        int Client_ID
        date birth_date
        int District_ID
        varchar(10) gender
    }
    card ||--o{ disp : make
    card {
        int Card_ID
        int Disp_ID
        varchar(16) type
        date issued
    }
   account ||--o{ order : make
    order {
        int Order_ID
        int Account_ID
        varchar(16) banck_to
        int account_to
        decimal amount
        varchar(6) k_symbol
    }
    account ||--o{ loan : request
    loan {
        int Loan_ID
        int Account_ID
        date date
        int amount
        int duration
        decimal payments
        varchar(6) status
    }
```

## PARTE 3 
### <p align="center"> OPERACIONES DE ALGEBRA RELACIONAL </p>

1. 