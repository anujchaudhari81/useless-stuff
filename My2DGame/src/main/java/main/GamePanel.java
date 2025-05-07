package main;

import javax.swing.*;
import java.awt.*;

public class GamePanel extends JPanel {

    // SCREEN SETTINGS
    final int originalTileSize =16; // 16x16 tile
    final int scale=3;

    final int tileSize=originalTileSize*scale; // means it will 16x3=48;
    final int maxScreenCol=16;
    final int maxScreenRow=12;
    final int screenWidth=tileSize*maxScreenCol; //768 px
    final int screenHeight=tileSize*maxScreenRow; //576 px
    

    public GamePanel(){

        this.setPreferredSize(new Dimension(screenWidth, screenHeight));
        this.setBackground(Color.black);
        this.setDoubleBuffered(true);
    }


}
