

/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
		SESprite bgMain;
		SESprite welcome;
		SESprite over;
		SESprite again;
		double transparency=0;

public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w= get_scene_width(), h=get_scene_height();
		
		rsc.prepare_font("myfont","bold arial color=red  outline-color=white",get_scene_height()*0.15);
	

		rsc.prepare_image("over","over",w,h);
		bgMain=add_sprite_for_image(SEImage.for_resource("over"));
		bgMain.move(0,0);

		again=add_sprite_for_text("Again", "myfont");
		over=add_sprite_for_text("Back", "myfont");
		again.move(get_scene_width()*0.01,get_scene_height()*0.80);
		over.move(get_scene_width()*0.80,get_scene_height()*0.80);

		
	}
	public void on_pointer_press(SEPointerInfo pi) {
		if(pi.is_inside(get_scene_width()*0.80,get_scene_height()*0.80,get_scene_height(),get_scene_width())) {
		switch_scene(new MainScene());
	
		}
		if(pi.is_inside(get_scene_width()*0.01,get_scene_height()*0.80,get_scene_height()-again.get_y(),get_scene_width()-again.get_x())) {
		switch_scene(new GameStart());
	
		}
	
	}
	
	public void on_pointer_move(SEPointerInfo pi) {
		if(pi.is_inside(get_scene_width()*0.80,get_scene_height()*0.80,get_scene_height(),get_scene_width())) {
		over.set_alpha(0.5);
	
		
		}
		else{over.set_alpha(1);}
		
		if(pi.is_inside(get_scene_width()*0.01,get_scene_height()*0.80,get_scene_height()-again.get_y(),get_scene_width()-again.get_x())) {
		again.set_alpha(0.5);
		
		}
		else{again.set_alpha(1);}
	
		
	
	}
	
	public void set_alpha(double alpha) {
		transparency=alpha;	
	}
	

	public void cleanup() {
		base.cleanup();
		
	}
}
