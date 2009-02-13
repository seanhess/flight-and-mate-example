package mate.vo
{
	[Bindable]
	public class BookVO
	{
		public var author:String;
		public var title:String;
		
		public function toString():String
		{
			return title + ", by " + author;
		}
	}
}