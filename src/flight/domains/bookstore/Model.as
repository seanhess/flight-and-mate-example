package flight.domains.bookstore
{
	import flight.domains.bookstore.model.BookVO;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class Model
	{
		public static const NOTHING:int = 0;
		public static const SHOW:int = 1;
		public static const EDIT:int = 2;
		
		public var selectedBook:BookVO;
		public var view:int = NOTHING;
		public var books:ArrayCollection;
	}
}