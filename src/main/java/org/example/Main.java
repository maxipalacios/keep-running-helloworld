package org.example;

public class Main {
    public static void main(String[] args) {
        while(true){
            System.out.println("Hello world!");
            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}