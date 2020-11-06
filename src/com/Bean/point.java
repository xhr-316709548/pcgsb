package com.Bean;

public class point {
    String name;
    String des;
    int  symbolSize=40;
    int category;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
        des=name;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getSymbolSize() {
        return symbolSize;
    }

    public void setSymbolSize(int symbolSize) {
        this.symbolSize = symbolSize;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }
}
