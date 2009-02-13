package flight.domains.bookstore
{
	import flight.domain.HistoryController;
	import flight.domains.bookstore.model.BookVO;
	import flight.utils.Registry;
	
	import flight.domains.bookstore.commands.*;
	
	import mx.collections.ArrayCollection;
	
	public class Controller extends HistoryController
	{
		public static const LOAD:String = "load";
		
		[Bindable]
		public var model:Model = Registry.getInstance(Model) as Model;
		
		override protected function init():void
		{
			addCommand(LOAD, Load);
		}
		
		public function loadBooks():Boolean
		{
			return execute(LOAD);
		}
		
		public function setBooks(books:ArrayCollection):void
		{
			model.books = books;
		}
		
		public function showBook(book:BookVO):void
		{
			model.selectedBook = book;
			model.view = Model.SHOW;
		}
		
		public function editBook(book:BookVO):void
		{
			model.selectedBook = book;
			model.view = Model.EDIT;
		}
		
		// replace the selected book with ours
		public function updateBook(book:BookVO):void
		{
			model.selectedBook.title = book.title;
			model.selectedBook.author = book.author; 
			model.view = Model.SHOW;
		}
	}
}