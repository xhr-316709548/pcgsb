package com.Bean;

public class Movie_sum {
    int movie_id;
    int sum;

    public int getMovie_id() {
        return movie_id;
    }

    public void setMovie_id(int movie_id) {
        this.movie_id = movie_id;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public Movie_sum(int movie_id) {
        this.movie_id = movie_id;
        sum=0;
    }
}
