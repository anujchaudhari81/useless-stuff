package entity;

import java.awt.image.BufferedImage;

public class Entity {

    public int x,y;// for default position of entity
    public int speed;// to set speed of the movement

    public BufferedImage up1,up2, down1,down2, left1,left2, right1,right2;
    public String direction;

    public int spriteCounter=0;
    public int spriteNum=1;

}
