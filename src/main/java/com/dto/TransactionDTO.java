package com.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class TransactionDTO {
    private Date transactionDate;
    private String category;
    private String description;
    private Double amount;
    private String status;

    public TransactionDTO(Date transactionDate, String category, String description, Double amount, String status) {
        this.transactionDate = transactionDate;
        this.category = category;
        this.description = description;
        this.amount = amount;
        this.status = status;
    }

}
