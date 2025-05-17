package main;

import entity.Player;
import tile.Tile;
import tile.TileManager;

import javax.swing.*;
import java.awt.*;

public class GamePanel extends JPanel implements Runnable{

    // SCREEN SETTINGS
    final int originalTileSize =16; // 16x16 tile
    final int scale=3;

    public final int tileSize=originalTileSize*scale; // means it will 16x3=48;
    public final int maxScreenCol=16;
    public final int maxScreenRow=12;
    public final int screenWidth=tileSize*maxScreenCol; //768 px
    public final int screenHeight=tileSize*maxScreenRow; //576 px

    //FPS
    int FPS=60;

    TileManager tileM=new TileManager(this);
    KeyHandler keyH=new KeyHandler();
    Thread gameThread;
    Player player=new Player(this,keyH);


    public GamePanel(){

        this.setPreferredSize(new Dimension(screenWidth, screenHeight));
        this.setBackground(Color.black);
        this.setDoubleBuffered(true);
        this.addKeyListener(keyH);
        this.setFocusable(true);
    }

    public void startGameThread(){
        gameThread = new Thread(this); // created a thread of the object,gameThread, which contains the run() method
        gameThread.start(); // it will start a new separate thread, and will call run() method inside that thread :)

    }

    @Override //replacing the run() method from the Runnable interface
    public void run() {

        double drawInterval=1000000000/FPS; //0.01666 seconds
        double nextDrawTime=System.nanoTime()+drawInterval;

        while(gameThread != null){

            // UPDATE: update the position of the character
            update();
            // DRAW: update the screen's graphics based on update() method
            repaint();

            try{
                double remainingTime=nextDrawTime-System.nanoTime();
                remainingTime=remainingTime/1000000;

                if(remainingTime<0){
                    remainingTime=0;
                }
                Thread.sleep((long) remainingTime);

                nextDrawTime += drawInterval;

            } catch (InterruptedException e){
                e.printStackTrace();
            }
        }
    }

    public void update(){

        player.update();
    }
    public void paintComponent(Graphics g){

        super.paintComponent(g); // parent's class is JPanel
        
        Graphics2D g2=(Graphics2D)g; //Changed Graphics to Graphics2D(coz we need some advance functions which Graphics doesn't have)

        tileM.draw(g2);
        player.draw(g2);

        g2.dispose();

    }
}
