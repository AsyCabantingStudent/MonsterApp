
/*
 * Player1
 * Created by Eqela Studio 2.0b7.4
 */

public class Player1 : SEEntity
{
	SESprite myplayer;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w= get_scene_width(), h=get_scene_height();
		
	
		
		rsc.prepare_image("spongebob","spongebob",w*0.15,h*0.15);
		myplayer=add_sprite_for_image(SEImage.for_resource("spongebob"));

		var wp=myplayer.get_width(), hp=myplayer.get_height();
		myplayer.move(GameStart.px,GameStart.py);
		
	}

	public void tick(TimeVal now, double delta) {
		myplayer.move(GameStart.px,GameStart.py);
		
	}


	public void cleanup() {
		base.cleanup();
	
	}
}
