package vn.karaokeplayer.lyricseditor.controls {
	import fl.controls.Button;

	import org.osflash.signals.Signal;

	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filesystem.File;
	import flash.net.FileFilter;
	import flash.text.TextField;

	
	/**
	 * @author Thanh Tran
	 */
	[Embed(source="/../assets/swc/controls_ui.swf", symbol="vn.karaokeplayer.lyricseditor.ui.TopBarUI")]
	public class TopControlBar extends Sprite {
		//stage
		public var newButton: SimpleButton;
		public var openLyricButton: SimpleButton;
		public var openMp3Button: SimpleButton;
		public var saveButton: SimpleButton;
		public var previewXmlButton: Button;
		public var testKaraokeButton: Button;
		public var lyricsText: TextField;
		public var mp3Text: TextField;
		
		public var insertButton: Button;
		public var validateButton: Button;
		
		//signals
		public var audioFileOpened: Signal;
		
		//props
		private var _audioFile: File;
		
		public function TopControlBar() {
			init();
		}

		private function init(): void {
			previewXmlButton = new Button();
			previewXmlButton.label = "Preview XML";
			previewXmlButton.width = 105;
			previewXmlButton.height = 28;
			previewXmlButton.x = 569;
			previewXmlButton.y = 11;
			
			testKaraokeButton = new Button();
			testKaraokeButton.label = "Test Karaoke";
			testKaraokeButton.width = 105;
			testKaraokeButton.height = 28;
			testKaraokeButton.x = 686;
			testKaraokeButton.y = 11;
			
			insertButton = new Button();
			insertButton.label = "Insert Time Mark";
			insertButton.width = 105;
			insertButton.height = 28;
			insertButton.x = 569;
			insertButton.y = 60;
			
			validateButton = new Button();
			validateButton.label = "Validate Times";
			validateButton.width = 105;
			validateButton.height = 28;
			validateButton.x = 686;
			validateButton.y = 60;			
			
			addChild(previewXmlButton);
			addChild(testKaraokeButton);
			addChild(insertButton);
			addChild(validateButton);
			
			newButton.addEventListener(MouseEvent.CLICK, newButtonClickHandler);
			openLyricButton.addEventListener(MouseEvent.CLICK, openLyricButtonClickHandler);
			openMp3Button.addEventListener(MouseEvent.CLICK, openMp3ButtonClickHandler);
			saveButton.addEventListener(MouseEvent.CLICK, saveButtonClickHandler);
			previewXmlButton.addEventListener(MouseEvent.CLICK, previewXmlButtonClickHandler);
			testKaraokeButton.addEventListener(MouseEvent.CLICK, testKaraokeButtonClickHandler);	
			insertButton.addEventListener(MouseEvent.CLICK, insertButtonClickHandler);
			validateButton.addEventListener(MouseEvent.CLICK, validateButtonClickHandler);
		}

		private function newButtonClickHandler(event: MouseEvent): void {
		}

		private function openLyricButtonClickHandler(event: MouseEvent): void {
		}

		private function openMp3ButtonClickHandler(event: MouseEvent): void {
			_audioFile = new File();
			_audioFile.addEventListener(Event.SELECT, audioFileSelectHandler);
			_audioFile.browse([new FileFilter("MP3", "*.mp3")]);
		}

		private function audioFileSelectHandler(event: Event): void {
			trace("audio file: " + _audioFile.url);
		}

		private function saveButtonClickHandler(event: MouseEvent): void {
		}

		private function previewXmlButtonClickHandler(event: MouseEvent): void {
		}

		private function testKaraokeButtonClickHandler(event: MouseEvent): void {
		}

		private function insertButtonClickHandler(event: MouseEvent): void {
		}

		private function validateButtonClickHandler(event: MouseEvent): void {
		}
	}
}