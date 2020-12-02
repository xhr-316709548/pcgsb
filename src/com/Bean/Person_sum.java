package com.Bean;

public class Person_sum {
    int person_id;
    int sum;

    public int getPerson_id() {
        return person_id;
    }

    public void setPerson_id(int person_id) {
        this.person_id = person_id;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public Person_sum(int person_id) {
        this.person_id = person_id;
        sum=0;
    }

}
