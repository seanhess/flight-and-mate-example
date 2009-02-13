package mate.event
{
	import flash.events.Event;
	
	import mate.vo.BookVO;
	
	public class BookEvent extends Event
	{
		public static const INDEX:String = "indexBooks";
		public static const SHOW:String = "showBook";
		public static const EDIT:String = "editBook";
		public static const UPDATE:String = "updateBook";
		
		public var book:BookVO;
		
		public function BookEvent(type:String):void
		{
			super(type, true);
		}
	}
}