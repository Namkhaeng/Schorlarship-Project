/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.*;
import javax.swing.*;
/**
 *
 * @author Administrator
 */
public class CheckNum {

    public boolean Num(String Number) {
        try {
            int numeric = Integer.parseInt(Number);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean Chars(String Charscheck) {
        String chars = "acdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "กขฃคฅฆงจฉชซฌญฎฏฐฑฒณดตถทธนบปผฝพฟภมยรลวศษสหฬอฮ"
                + "่ ้ ๊ ๋ ็ ์ะา ิ ี ึ ื ุ ู เแโ ำใไฤฦๅ";
        int what = 0;
        for (int i = 0; i < Charscheck.length(); i++) {
            for (int j = 0; j < chars.length(); j++) {
                if (Charscheck.charAt(i) == chars.charAt(j)) {
                    what++;
                }
            }
        }
        if (Charscheck.length() == what) {
            return true;
        } else {
            return false;
        }
    }
}
