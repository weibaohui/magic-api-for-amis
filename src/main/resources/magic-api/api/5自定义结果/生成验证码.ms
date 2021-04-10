{
  "id" : "c7f7004a8e104663aa04361587bfb6b7",
  "script" : null,
  "groupId" : "2b0ce800b6c543efa284ae695e14e4eb",
  "name" : "生成验证码",
  "createTime" : 1615984025930,
  "updateTime" : 1615984025930,
  "method" : "GET",
  "path" : "image",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
import 'java.awt.image.BufferedImage' as BufferedImage;
import 'java.awt.Color' as Color;
import 'java.awt.Font' as Font;
import 'java.io.ByteArrayOutputStream' as ByteArrayOutputStream;
import 'java.util.Random' as Random;
import 'javax.imageio.ImageIO' as ImageIO;
import response;
import log;

var width = 200;
var height = 69;
var image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
var graphics = image.getGraphics();
graphics.setColor(Color.WHITE);
graphics.fillRect(0,0,width,height);
graphics.setFont(new Font("微软雅黑", Font.BOLD, 40));
var letter = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ';
var random = new Random();
var randomColor = ()=>new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256));
var x = 10;
var code = '';
for (i in range(0, 3)){ //验证码
    graphics.setColor(randomColor());
    var degree = random.nextInt() % 30;
    var ch = letter.charAt(random.nextInt(letter.length()));
    code = code + ch;
    graphics.rotate(degree * 3.1415926535 / 180, x, 45);
    graphics.drawString(ch + '', x, 45);
    graphics.rotate(-degree * 3.1415926535 / 180, x, 45);
    x = x + 48;
}
log.info('生成的验证码:{}',code)
for (i in range(0, 6)) {    //干扰线
    graphics.setColor(randomColor());
    graphics.drawLine(random.nextInt(width), random.nextInt(height),random.nextInt(width), random.nextInt(height));
}

for(i in range(0, 30)){  //噪点
    graphics.setColor(randomColor());
    graphics.fillRect(random.nextInt(width), random.nextInt(height), 2,2);

}
graphics.dispose();
var baos = new ByteArrayOutputStream();
ImageIO.write(image,"png",baos);
baos.flush();
baos.close();
return response.image(baos.toByteArray(),'image/png');
