package mate.services
{
	import mate.vo.BookVO;
	
	import mx.collections.ArrayCollection;
	
	/**
	 * If I was using a real service instead of my fake XML file, I would 
	 * use AMF instead. However, you frequently find yourself unable to 
	 * choose server-side stuff, so a translator class is usually the way
	 * to approach this. 
	 */
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