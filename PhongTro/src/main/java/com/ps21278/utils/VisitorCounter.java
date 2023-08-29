package com.ps21278.utils;

import org.springframework.stereotype.Component;
import java.io.*;

@Component
public class VisitorCounter {
    private static final String FILE_PATH = "solan.txt";
    
    public int getVisitorCount() {
        try {
            File file = new File(FILE_PATH);
            if (!file.exists()) {
                return 0;
            }
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line = reader.readLine();
            reader.close();

            return Integer.parseInt(line);
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void incrementVisitorCount() {
        try {
            int currentCount = getVisitorCount();
            currentCount++;

            BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH));
            writer.write(String.valueOf(currentCount));
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
