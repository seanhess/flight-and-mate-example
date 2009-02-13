package flight.domains.bookstore.commands
{
	import flight.domain.AsyncCommand;
	import flight.domains.bookstore.Controller;
	import flight.services.Services;
	
	import flight.services.Adapter;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class Load extends AsyncCommand
	{
		public var client:Controller;
		
		override public function execute():Boolean
		{		
			var services:Services = new Services();
			var bookService:HTTPService = services.bookService;
				bookService.addEventListener(ResultEvent.RESULT, onResult);
				bookService.addEventListener(FaultEvent.FAULT, onFault);
				bookService.send();
				
			return true;
		}
		
		protected function onResult(event:ResultEvent):void
		{
			var adapter:Adapter = new Adapter();
			var books:ArrayCollection = adapter.getBooks(event.result);
				
			client.setBooks(books);
			this.dispatchComplete();
		}
		
		protected function onFault(event:FaultEvent):void
		{
			// some way to pass this up to a global handler?
			Alert.show("Fault " + event.fault);
			this.dispatchCancel();
		}
	}
}