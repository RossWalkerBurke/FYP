package arm.node;

@:access(armory.logicnode.LogicNode)@:keep class Zoom extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SetCameraFOV = new armory.logicnode.SetCameraFovNode(this);
		_SetCameraFOV.preallocInputs(3);
		_SetCameraFOV.preallocOutputs(1);
		var _OnUpdate = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate.property0 = "Update";
		_OnUpdate.preallocInputs(0);
		_OnUpdate.preallocOutputs(1);
		armory.logicnode.LogicNode.addLink(_OnUpdate, _SetCameraFOV, 0, 0);
		armory.logicnode.LogicNode.addLink(new armory.logicnode.ObjectNode(this, ""), _SetCameraFOV, 0, 1);
		var _Math = new armory.logicnode.MathNode(this);
		_Math.property0 = "Add";
		_Math.property1 = false;
		_Math.preallocInputs(2);
		_Math.preallocOutputs(1);
		var _GetCameraFOV = new armory.logicnode.GetCameraFovNode(this);
		_GetCameraFOV.preallocInputs(1);
		_GetCameraFOV.preallocOutputs(1);
		armory.logicnode.LogicNode.addLink(new armory.logicnode.ObjectNode(this, ""), _GetCameraFOV, 0, 0);
		armory.logicnode.LogicNode.addLink(_GetCameraFOV, _Math, 0, 0);
		var _GetMouseMovement = new armory.logicnode.GetMouseMovementNode(this);
		_GetMouseMovement.preallocInputs(3);
		_GetMouseMovement.preallocOutputs(6);
		armory.logicnode.LogicNode.addLink(new armory.logicnode.FloatNode(this, -1.0), _GetMouseMovement, 0, 0);
		armory.logicnode.LogicNode.addLink(new armory.logicnode.FloatNode(this, -1.0), _GetMouseMovement, 0, 1);
		armory.logicnode.LogicNode.addLink(new armory.logicnode.FloatNode(this, 0.05000000074505806), _GetMouseMovement, 0, 2);
		armory.logicnode.LogicNode.addLink(_GetMouseMovement, new armory.logicnode.FloatNode(this, 0.0), 0, 0);
		armory.logicnode.LogicNode.addLink(_GetMouseMovement, new armory.logicnode.FloatNode(this, 0.0), 1, 0);
		armory.logicnode.LogicNode.addLink(_GetMouseMovement, new armory.logicnode.FloatNode(this, 0.0), 2, 0);
		armory.logicnode.LogicNode.addLink(_GetMouseMovement, new armory.logicnode.FloatNode(this, 0.0), 3, 0);
		armory.logicnode.LogicNode.addLink(_GetMouseMovement, new armory.logicnode.IntegerNode(this, 0), 4, 0);
		armory.logicnode.LogicNode.addLink(_GetMouseMovement, _Math, 5, 1);
		armory.logicnode.LogicNode.addLink(_Math, _SetCameraFOV, 0, 2);
		armory.logicnode.LogicNode.addLink(_SetCameraFOV, new armory.logicnode.NullNode(this), 0, 0);
	}
}