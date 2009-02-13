package mate.manager
{	
	import mate.vo.BookVO;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class BookstoreManager
	{
		public static const NOTHING:int = 0;
		public static const SHOW:int = 1;
		public static const EDIT:int = 2;
				
		public var books:ArrayCollection;
		public var selectedBook:BookVO;
		
		public var view:int = NOTHING;
		
		public function showBook(book:BookVO):void
		{
			selectedBook = book;
			view = SHOW;
		}
		
		public function editBook(book:BookVO):void
		{
			selectedBook = book;
			view = EDIT;
		}
		
		// replace the selected book with ours
		public function updateBook(book:BookVO):void
		{
			selectedBook.title = book.title;
			selectedBook.author = book.author; 
			view = SHOW;
		}
	}
}