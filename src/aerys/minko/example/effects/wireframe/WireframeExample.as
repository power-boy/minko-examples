package aerys.minko.example.effects.wireframe
{
	import aerys.minko.render.effect.wireframe.WireframeEffect;
	import aerys.minko.render.effect.wireframe.WireframeStyle;
	import aerys.minko.scene.node.group.MaterialGroup;
	import aerys.minko.scene.node.mesh.modifier.WireframeMeshModifier;
	import aerys.minko.scene.node.mesh.primitive.TeapotMesh;
	import aerys.minko.type.stream.StreamUsage;

	public class WireframeExample extends MinkoExampleApplication
	{
		override protected function initializeScene():void
		{
			var teapot : MaterialGroup = new MaterialGroup(new WireframeEffect());
			
			teapot.addChild(new WireframeMeshModifier(new TeapotMesh(10, StreamUsage.READ)));
			teapot.style
				.set(WireframeStyle.WIRE_COLOR, 	0x77ffffff)
				.set(WireframeStyle.WIRE_THICKNESS, 15.);
			
			scene.addChild(teapot);
			
			camera.distance = 10.0;
			camera.lookAt.y = 1.5;
		}
	}
}