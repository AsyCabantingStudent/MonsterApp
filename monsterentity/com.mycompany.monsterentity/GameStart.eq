
/*
 * GameStart
 * Created by Eqela Studio 2.0b7.4
 */

public class GameStart : SEScene
{
	public static SESprite bg;
	public static int px;
	public static int py;
	public static bool check;
	

	SEEntity player;
	int i;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		check=false;
		px=0;
		py=0;
		
		AudioClipManager.prepare("laugh");
		

		
		py=0;px=0;
		var w= get_scene_width(), h=get_scene_height();
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("bg","bg",w,h);
		bg=add_sprite_for_image(SEImage.for_resource("bg"));
		bg.move(0,0);

		player=add_entity(new Player1());
		for( i=0; i<Math.random(1,20);i++) {
			add_entity(new Monster1());
		}


			AudioClipManager.play("laugh");
	
	}

	public void on_pointer_move(SEPointerInfo pi) {
		px=pi.get_x();
		py=pi.get_y();
		if(check==true) {
				switch_scene(new GameOver());
		}	


		if(pi.is_inside(get_scene_width()*0.90,get_scene_height()*0.90,get_scene_height(),get_scene_width())){
					AudioClipManager.play("laugh");
			}


	}

	
	

	public void cleanup() {
		base.cleanup();

	
	}
	
}
