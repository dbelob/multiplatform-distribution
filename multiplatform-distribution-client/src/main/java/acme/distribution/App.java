package acme.distribution;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.swing.*;

public class App {
    private static final Logger log = LoggerFactory.getLogger(App.class);

    public static void main(String[] args) {
        JPanel panel = new JPanel();
        panel.add(new JLabel("Hello World!"));

        JFrame frame = new JFrame("Title");
        frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        frame.setContentPane(panel);
        frame.pack();
        frame.setVisible(true);

        log.info("Application is started");
    }
}