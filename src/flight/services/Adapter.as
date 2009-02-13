package flight.services
{
	import flight.domains.bookstore.model.BookVO;
	
	import mx.collections.ArrayCollection;
	
	public class Adapter
	{
		public function getBook(result:Object):BookVO
		{
			var book:BookVO = new BookVO();
				book.title = result.title;
				book.author = result.author;
				
			return book;
		}
		
		public function getBooks(result:Object):ArrayCollection
		{
			var books:Array = [];
			
			for each (var item:Object in result.books.book)
			{
				books.push(getBook(item));	
			}
			
			return new ArrayCollection(books);
		}
	}
}