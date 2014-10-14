
/*
 * Monster1
 * Created by Eqela Studio 2.0b7.4
 */

public class Monster1 : SEEntity
{
	SESprite mymonster;
	int mx;
	int my;
	int px1;
	int py;
	int x;
	int y;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w= get_scene_width(), h=get_scene_height();
		
	
		rsc.prepare_image("logo","logo",w,h);
		rsc.prepare_image("jellyfish","jellyfish",w*0.10,h*0.10);
		mymonster=add_sprite_for_image(SEImage.for_resource("jellyfish"));

		
		mymonster.move(Math.random(0,w),Math.random(0,h));
		
	}

	public void tick(TimeVal now, double delta) {
		 mx=mymonster.get_x();
		 my=mymonster.get_y();
	     px1=GameStart.px;
		 py=GameStart.py;
		 x=(px1-mx)/Math.random(5,50);
	 	y=(py-my)/Math.random(5,50);
	
		if(x==0 && y==0){
		GameStart.check=true;
	
		}
		mymonster.move(mx+(px1-mx)/Math.random(5,50),my+(py-my)/Math.random(5,50));
		

		
	}


	public void cleanup() {
		base.cleanup();
	}
}
