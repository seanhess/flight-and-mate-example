package flight.domains.bookstore.model
{
	[Bindable]
	public class BookVO
	{
		public var title:String;
		public var author:String;
		
		public function toString():String
		{
			
			return title + ", by " + author;
		}
	}
}