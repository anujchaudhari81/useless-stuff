package main;

import javax.swing.*;
import java.awt.*;

public class GamePanel extends JPanel implements Runnable{

    // SCREEN SETTINGS
    final int originalTileSize =16; // 16x16 tile
    final int scale=3;

    final int tileSize=originalTileSize*scale; // means it will 16x3=48;
    final int maxScreenCol=16;
    final int maxScreenRow=12;
    final int screenWidth=tileSize*maxScreenCol; //768 px
    final int screenHeight=tileSize*maxScreenRow; //576 px

    Thread gameThread;


    public GamePanel(){

        this.setPreferredSize(new Dimension(screenWidth, screenHeight));
        this.setBackground(Color.black);
        this.setDoubleBuffered(true);
    }

    public void startGameThread(){
        gameThread = new Thread(this); // created a thread of the object,gameThread, which contains the run() method
        gameThread.start(); // it will start a new separate thread, and will call run() method inside that thread :)

    }

    @Override //replacing the run() method from the Runnable interface
    public void run() {

        while(gameThread != null){
            System.out.println("abba dabba");

            // UPDATE: update the position of the character
            update();

            // CRAW: update the screen's graphics based on update() method
            repaint();
        }
    }

    public void update(){

    }
    public void paintComponent(Graphics g){

        super.paintComponent(g); // parent's class is JPanel
        
        Graphics2D g2=(Graphics2D)g; //Changed Graphics to Graphics2D(coz we need some advance functions which Graphics doesn't have)
        
        g2.setColor(Color.white);
        g2.fillRect(100, 100, tileSize, tileSize);
        
        g2.dispose();

    }
}
