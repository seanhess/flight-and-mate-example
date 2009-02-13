package mate.manager
{
	import mx.controls.Alert;
	import mx.rpc.Fault;
	
	public class ApplicationManager
	{
		public function fault(fault:Fault):void
		{
			Alert.show("Fault " + fault);
		}
	}
}