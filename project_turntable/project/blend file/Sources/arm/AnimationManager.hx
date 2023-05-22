package arm;

class AnimationManager extends iron.Trait {
	
	function getAnim() {
		// Trait placed on mesh object
		var anim = object.animation;
		// Trait placed on armature object - retrieve animation from child mesh
		if (anim == null) anim = object.children[0].animation;
		return anim;
	}

	public function new() {
		super();

		notifyOnUpdate(function() {
			var kb = iron.system.Input.getKeyboard();

			var anim = getAnim();

			if (kb.started("1")) anim.play("idle");
			else if (kb.started("2")) anim.play("run");
			else if (kb.started("3")) anim.pause();
			else if (kb.started("4")) anim.resume();
		});
	}
}